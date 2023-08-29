# dev-container-julia

A dev container for julia and jupyterlab that works with VSCode.

Simply clone the repository to your computer, and open the folder in VScode. You need to have docker and the plugin for vs code. 

VSCode will then ask you to reopen the fodler inside the container.

## Features

 - the container will be x86 or arm64 native. This is good for performance on M1 mac and PC
 - the container will pre-build the packages present in the project toml file (so you don't have build every time)
 - the port to Jupyterlab is shared so that you can use it directly inside your browser. You can open it from VS code.
