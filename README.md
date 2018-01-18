# gocd-agent-terraform-docker

GoCD Agent container for using Terraform

# Build

Build this container with this:
```
docker build -t gocd-agent-terraform:tag .
```

# Usage

Run the container with this:
```
docker container run -d bookinggo/gocd-agent-terraform:v17.12.0
```

The tag is the version of the GoCD agent, the container will otherwise always be updated to include the latest version of Terraform.