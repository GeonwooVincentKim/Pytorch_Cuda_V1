ADD file:0d82cd095966e8ee78b593cb47a352eec842edb7bd9d9468e8a70154522447d1 in / 

CMD ["bash"]
ARG PYTORCH_VERSION
LABEL com.nvidia.volumes.needed=nvidia_driver
RUN |1 PYTORCH_VERSION=v1.10.0 /bin/sh -c

COPY /opt/conda /opt/conda # buildkit
ENV PATH=/opt/conda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility
ENV LD_LIBRARY_PATH=/usr/local/nvidia/lib:/usr/local/nvidia/lib64
ENV PYTORCH_VERSION=v1.10.0
WORKDIR /workspace
bash
