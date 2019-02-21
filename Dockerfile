FROM amazonlinux:latest

RUN yum -y install git \
    python3 \
    python3-pip \
    zip \
    && yum clean all

RUN python3 -m pip install --upgrade pip \
    # boto3 is available to lambda processes by default,
    # but it's not in the amazonlinux image
    # test comment
    && python3 -m pip install boto3

