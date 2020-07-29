FROM continuumio/miniconda3:4.6.14

RUN conda install --yes \
    nomkl \
    python=3.7 \
    && conda clean -afy

ENTRYPOINT ["hello.py"]

