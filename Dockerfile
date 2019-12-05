FROM nfcore/base:1.7
LABEL authors="Husain Talukdar" \
      description="Docker image containing all requirements for nf-core/rnasequmi pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-rnasequmi-1.0dev/bin:$PATH
