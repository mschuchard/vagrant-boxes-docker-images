IMAGE=puppet-check
docker build --pull . -t "matthewschuchard/${IMAGE}" -t "matthewschuchard/${IMAGE}:2" -t "matthewschuchard/${IMAGE}:2.3.0"
docker build . --build-arg VERSION=2.2.2 -t "matthewschuchard/${IMAGE}:2.2.2"
docker build . --build-arg VERSION=2.1.0 -t "matthewschuchard/${IMAGE}:2.1.0"
docker push -a "matthewschuchard/${IMAGE}"
