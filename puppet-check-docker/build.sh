IMAGE=puppet-check
docker buildx build --pull . -t "matthewschuchard/${IMAGE}" -t "matthewschuchard/${IMAGE}:2" -t "matthewschuchard/${IMAGE}:2.5" -t "matthewschuchard/${IMAGE}:2.5.0"
docker buildx build . --build-arg VERSION=2.4.0 -t "matthewschuchard/${IMAGE}:2.4" -t "matthewschuchard/${IMAGE}:2.4.0"
docker buildx build . --build-arg VERSION=2.3.1 -t "matthewschuchard/${IMAGE}:2.3" -t "matthewschuchard/${IMAGE}:2.3.1"
docker buildx build . --build-arg VERSION=2.2.2 -t "matthewschuchard/${IMAGE}:2.2" -t "matthewschuchard/${IMAGE}:2.2.2"
docker push -a "matthewschuchard/${IMAGE}"
