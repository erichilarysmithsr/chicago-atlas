workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Heroku"]
}

action "GitHub Action for Heroku" {
  uses = "actions/heroku@6db8f1c22ddf6967566b26d07227c10e8e93844b"
  secrets = ["GITHUB_TOKEN"]
}

workflow "New workflow 1" {
  on = "push"
  resolves = ["GitHub Action for Azure"]
}

action "GitHub Action for Azure" {
  uses = "actions/azure@4919f1449100fb0e6111a52466de7f2a1dc861dc"
  secrets = ["GITHUB_TOKEN"]
}
