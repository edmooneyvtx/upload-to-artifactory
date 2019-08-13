workflow "testing upload to artifactory" {
  on = "push"
  resolves = ["Upload Files To Artifactory"]
}

action "Upload Files To Artifactory" {
  uses = "./"
  secrets = ["USERNAME", "PASSWORD"]
  env = {
    ARTIFACTORY_URL = "https://jfrogtraining.jfrog.io/jfrogtraining/"
    REPO_NAME = "todo"
    FILE_PATH = "test-1/"
    FILE_NAME = "todo"
  }
}
