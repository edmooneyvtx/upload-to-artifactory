FROM alpine:3.10

LABEL version="1.0.0"
LABEL repository="https://github.com/greenido/upload-to-artifactory"
LABEL homepage="https://github.com/greenido/upload-to-artifactory"
LABEL maintainer="Ido Green <greenido@gmail.com>"

LABEL com.github.actions.name="GitHub Action to upload to Artifactory"
LABEL com.github.actions.description="This action warps the JFrog Artifactory REST API - https://www.jfrog.com/confluence/display/RTF/Artifactory+REST+API for uploading files into JFrog Artifactory"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
