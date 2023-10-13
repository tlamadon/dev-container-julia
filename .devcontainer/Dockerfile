FROM docker.io/jupyter/datascience-notebook:latest
#FROM docker.io/jupyter/julia-notebook

USER root
RUN apt-get update && apt-get install -y dos2unix

# Generally, Dev Container Features assume that the non-root user (in this case jovyan)
# is in a group with the same name (in this case jovyan). So we must first make that so.
RUN groupadd jovyan \
    && usermod -g jovyan -a -G users jovyan

USER jovyan

# tells Jupyterlab not to ask for a token/password, you can change that is you want.
CMD ["start-notebook.sh" ,"--IdentityProvider.token=''"]