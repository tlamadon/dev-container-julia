# dev-container-julia

A devevelopment container for julia and jupyterlab that works with VSCode. A development container is a set of settings on top of a docker (or other type) container. It can least features to be installed, which docker file to build, etc.

## Getting started

### System requirements

This is identical to the requirements to running any development container. You can follow these steps or you can get more details on the [VS Code help](https://code.visualstudio.com/docs/devcontainers/containers).

 1. [VScode](https://code.visualstudio.com/), it's free and open source.
 2. [dev container extension ](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
 3. [docker](https://docs.docker.com/engine/install/) 

This will work on Windows, Mac and linux.

### setup 1: Run your exsiting project inside the dev container

This is as simple as creating the container description. You only need to copy the .devcontainer folder in the your project root folder. VSCode will detect it, start the container and make your folder accessible within.  

 1. copy `.devcontainer` folder from this repo to your project. It includes two files, the container description `devcontainer.json` and a `Dockerfile` we wrote that build the container image with all necessary dependencies to run Julia.  

From there, in VSCode you access your file, run julia command, start notebooks. You can even access Jupyterlab by going to the `port` tab in VSCode and clicking on the "open in browser".

### setup 2: Start from scratch

Simply copy all the files from the repo to a local folder. VScode will start the container and you can start using julia.

## Features

 - the container will automatically be x86 or arm64 native. This is good for performance on M1 mac and PC.
 - the container will pre-build the packages present in the project toml file (so you don't have build every time), it takes time the first time around, and we have not figured out how to cache the downloads between rebuild.
 - the port to Jupyterlab is shared so that you can use it directly inside your browser. You can open it from VS code by using the port tab.


## Contact, issues

Feel free to open an issue if something is not working.
