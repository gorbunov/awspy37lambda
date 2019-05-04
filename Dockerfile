FROM amazonlinux:latest

RUN yum -y install git \
    python3 \
    python3-pip \
    python3-devel \
    zip \
    && yum clean all \
    && rm -rf /var/cache/yum
RUN python3 -m pip3 install --upgrade pip3 \
    && python3 -m pip install boto3
