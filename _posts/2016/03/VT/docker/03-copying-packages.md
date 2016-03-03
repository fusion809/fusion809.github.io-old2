Once you have built a package in your Docker container, the logical next step would be to copy it to your host's file system. To do this one would run:

{% include Code/codeu.html line1="docker cp $CONTAINER:$SRC_PATH $DEST_PATH" %}

where `$CONTAINER` is the Docker container's ID, `$SRC_PATH` is the path of the package in the Docker container and `$DEST_PATH` is the destination path on one's local machine. The container ID can be determined by running:

{% include Code/codeu.html line1="docker ps -a" %}

which for me, for example, returns:

{% include Links/image.html image="docker-psa.png" float="right" %}

When I am working with ebuilds or PKGBUILDs, however, I usually prefer to cut the middle-man out and push the changes I made locally to the file's respective git repository.
