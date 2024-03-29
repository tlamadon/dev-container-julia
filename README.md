# dev-container-julia

A devevelopment container for julia and jupyterlab that works with VSCode. A development container is a set of settings on top of a docker (or other type) container. It can list features to be installed, which docker file to build, etc.

## Getting started

### System requirements

This is identical to the requirements to running any development container. You can follow the following steps or you can get more details on the [VS Code help](https://code.visualstudio.com/docs/devcontainers/containers).

 1. [VScode](https://code.visualstudio.com/), it's free and open source.
 2. [dev container extension ](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
 3. [docker](https://docs.docker.com/engine/install/) 

This will work on Windows, Mac and linux.

### setup 1: Run your exsiting project inside the dev container

This is as simple as creating the container description. You only need to copy the .devcontainer folder in the your project root folder. VSCode will detect it, start the container and make your folder accessible within.  

 1. copy `.devcontainer` folder from this repo to your project. It includes two files, the container description `devcontainer.json` and a `Dockerfile` we wrote that build the container image with all necessary dependencies to run Julia.  

From there, in VSCode you can access your file, run julia commands, start notebooks. You can even access Jupyterlab by going to the `port` tab in VSCode and clicking on the "open in browser".

See a step by step tutorial [here](https://github.com/tlamadon/dev-container-julia/wiki/Add-container-to-existing-project).

You can download the files from the [release page](https://github.com/tlamadon/dev-container-julia/releases/tag/v0.2.0-alpha).

### setup 2: Start from scratch

Simply copy all the files from the repo to a local folder. VScode will start the container and you can start using julia.

## Features

 - the container will automatically be x86 or arm64 native. This is good for performance on M1 mac and PC.
 - the container will pre-build the packages present in the project toml file (so you don't have build every time), it takes time the first time around (the downloads are cached in `.depot-cache`).
 - the port to __Jupyterlab__ is shared so that you can use it directly inside your browser. You can open it from VS code by using the port tab.
 - you can start a __pluto__ notebook, just follow the steps from [pluto getting started](https://plutojl.org/#install) inside the VSCode terminal in the container. Julia is already installed, so you can start on step 2.
 - can be opened in codespace without any modification (right now jupyter notebook doesn't work, but julia does)
 - works everywhere (osx, linux, windows, codespace, etc)
 - you can also use R and python notebooks. Actually we are maintaining some branches for this too, see [branch Renv](https://github.com/tlamadon/dev-container-julia/tree/renv) for automatically preparing the R environment.
 - __pdf export__ is working for notebook out of the box

## Todos

- [ ] prebuild images with some main packages (DataFrames, Plots, ...)
- [x] add julia extension to the dev container
- [x] figure out caching of package download between image rebuild
  - this can be done by copying artifacts to a local directory and preloading them on startup (to be tested)
- [ ] better documentation
- [ ] create a template for [VSCode templates](https://containers.dev/templates) for access to be easy.
- [ ] trigger container rebuild when Project file is changed.

## Benchmarks

If you are worried about the overhead of developing inside a container, you can check out our [Benchmark page](https://github.com/tlamadon/dev-container-julia/tree/benchmark). At this point we have not been experiencing any slwo down.

## Contact, issues

Feel free to open an issue if something is not working.
