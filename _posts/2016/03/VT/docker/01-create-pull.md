Creating a Docker container for the target operating system, that is, the operating system for which the software package being built, is intended for. Most (even comparatively obscure ones like Sabayon) Linux distributions already have Docker containers that can be found by searching the [Docker Hub](https://hub.docker.com/).

Once you have found the container you are going to use in the Docker Hub, merely run:

{% include Code/codeu.html line1="docker pull $name:$tag" %}

where `$name` is replaced with the container's name (e.g., `opensuse` for [this container](https://hub.docker.com/_/opensuse/)) and `$tag` with the container's tag (usually `latest` is the default, if no tag is specified).
