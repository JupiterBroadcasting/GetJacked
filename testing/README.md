# Dockerfiles for testing

Dockerfiles included in the current subdirectories, are to be used for basic testing of software installation.

scope: testing apt and deb repos are installed successfully.
not within scope: actual audio software installed is working.

## How to use

Clone this repo and cd into testing/ubuntu

`docker build -t getjacked_ubuntu .`

You'll see it build and run the install script.

To run the image as a container:

`docker run --rm -it getjacked_ubuntu /bin/bash`

To run goss tests [source](https://github.com/aelsabbahy/goss) against container:

`dgoss run -t -d getjacked_ubuntu`
