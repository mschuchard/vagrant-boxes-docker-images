IMAGE=rapid-vaults
docker buildx build --pull . -t "matthewschuchard/${IMAGE}" -t "matthewschuchard/${IMAGE}:1" "matthewschuchard/${IMAGE}" -t "matthewschuchard/${IMAGE}:1.2" -t "matthewschuchard/${IMAGE}:1.2.0"
docker buildx build . --build-arg VERSION=1.1.2 -t "matthewschuchard/${IMAGE}:1.1" -t "matthewschuchard/${IMAGE}:1.1.2"
docker push -a "matthewschuchard/${IMAGE}"
