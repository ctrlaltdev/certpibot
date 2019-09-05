docker manifest create --amend ctrlaltdev/certpibot:latest ctrlaltdev/certpibot:amd64-latest ctrlaltdev/certpibot:arm32v6-latest ctrlaltdev/certpibot:arm64v8-latest
docker manifest annotate ctrlaltdev/certpibot:latest ctrlaltdev/certpibot:arm32v6-latest --os linux --arch arm
docker manifest annotate ctrlaltdev/certpibot:latest ctrlaltdev/certpibot:arm64v8-latest --os linux --arch arm64 --variant armv8
docker manifest push --purge ctrlaltdev/certpibot:latest