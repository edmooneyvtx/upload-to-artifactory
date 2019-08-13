# Upload Files To JFrog Artifactory

This action warps the [JFrog Artifactory REST API](https://www.jfrog.com/confluence/display/RTF/Artifactory+REST+API)

This action enble you to invoke:
```
curl -u myUser:myP455w0rd! -X PUT "http://myArtifactoryURL.com/artifactory/my-repository/my-directory/buildFile.exe" -T ./buildFile.exe
```

## Authetication

Artifactory's REST API supports these forms of authentication:

- 🆒 Basic authentication using your username and password (supported in this version).
  
- Basic authentication using your username and API Key.
- Using a dedicated header (X-JFrog-Art-Api) with your API Key.
- Using an access token instead of a password for basic authentication.
- Using an access token as a bearer token in an authorization header (Authorization: Bearer) with your access token.

## Usage

```workflow
action "Upload a file to Artifactory" {
  uses = "greenido/upload-to-artifactory@master"
  secrets = [
    "USERNAME",
    "PASSWORD"
  ]
  args = {
    ARTIFACTORY_URL = "myArtifactoryURL.com",
    REPO_NAME = "myRepoName",
    FILE_PATH = "myDir/",
    FILE_NAME = "buildFile.exe"
  }
}
```

## Setup

TODO

## DEMO

TODO
