#!/bin/sh
echo "Downloading latest Atom release on the beta channel..."
if [ "${TRAVIS_OS_NAME}" = "linux" ]; then
  curl -s -L "https://atom.io/download/deb?channel=beta" \
    -H 'Accept: application/octet-stream' \
    -o "atom-amd64.deb"
  /sbin/start-stop-daemon --start --quiet --pidfile /tmp/custom_xvfb_99.pid --make-pidfile --background --exec /usr/bin/Xvfb -- :99 -ac -screen 0 1280x1024x16
  export DISPLAY=":99"
  dpkg-deb -x atom-amd64.deb "${HOME}/atom"
  export ATOM_SCRIPT_NAME="atom-beta"
  export APM_SCRIPT_NAME="apm-beta"
  export ATOM_SCRIPT_PATH="${HOME}/atom/usr/bin/${ATOM_SCRIPT_NAME}"
  export APM_SCRIPT_PATH="${HOME}/atom/usr/bin/${APM_SCRIPT_NAME}"
  export NPM_SCRIPT_PATH="${HOME}/atom/usr/share/${ATOM_SCRIPT_NAME}/resources/app/apm/node_modules/.bin/npm"
  export PATH="${PATH}:${HOME}/atom/usr/bin"
elif [ "${CIRCLECI}" = "true" ]; then
  # Assume the build is on a Debian based image (Circle CI provided Linux images)
  curl -s -L "https://atom.io/download/deb?channel=beta" \
    -H 'Accept: application/octet-stream' \
    -o "atom-amd64.deb"
  sudo dpkg --install atom-amd64.deb || true
  sudo apt-get update
  sudo apt-get --fix-broken --assume-yes --quiet install
  export ATOM_SCRIPT_PATH="atom-beta"
  export APM_SCRIPT_PATH="apm-beta"
  export NPM_SCRIPT_PATH="/usr/share/atom/resources/app/apm/node_modules/.bin/npm"
else
  echo "Unknown CI environment, exiting!"
  exit 1
fi

echo "Using Atom version:"
"${ATOM_SCRIPT_PATH}" -v
echo "Using APM version:"
"${APM_SCRIPT_PATH}" -v

echo "Downloading package dependencies..."
"${APM_SCRIPT_PATH}" install
"${APM_SCRIPT_PATH}" clean

# Override the PATH to put the Node bundled with APM first
if [ "${CIRCLECI}" = "true" ]; then
  # Since CircleCI/Linux is a fully installed environment, we use the system path to apm
  export PATH="/usr/share/atom/resources/app/apm/bin:${PATH}"
else
  export PATH="${HOME}/atom/usr/share/${ATOM_SCRIPT_NAME}/resources/app/apm/bin:${PATH}"
fi

if [ -n "${APM_TEST_PACKAGES}" ]; then
  echo "Installing atom package dependencies..."
  for pack in ${APM_TEST_PACKAGES}; do
    "${APM_SCRIPT_PATH}" install "${pack}"
  done
fi

if [ -d ./lib ]; then
  echo "Linting package using eslint..."
  ./node_modules/.bin/eslint lib || true
fi
if [ -d ./spec ]; then
  echo "Linting package specs using eslint..."
  ./node_modules/.bin/eslint spec || true
fi

echo "Running specs..."
"${ATOM_SCRIPT_PATH}" --test spec

exit
