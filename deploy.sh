for arch in amd64 arm32v6 arm64v8; do
  docker build -f Dockerfile.${arch} -t ctrlaltdev/certpibot:${arch}-latest .
  docker push ctrlaltdev/certpibot:${arch}-latest
done
