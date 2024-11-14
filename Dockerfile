FROM python:3.13-slim-bookworm

ARG ANSIBLE_VERSION=8.2.0
RUN pip install ansible==${ANSIBLE_VERSION}

COPY requirements.txt /
RUN pip install -r /requirements.txt
