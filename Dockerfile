FROM continuumio/miniconda3:4.6.14

RUN conda install --yes \
    nomkl \
    python=3.7 \
    && conda clean -afy

COPY py/* /bin/

ENTRYPOINT ["/bin/hello.py"]

