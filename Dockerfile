FROM python:3.12.3-bullseye

RUN apt update -qq

RUN apt install ffmpeg -y

RUN pip install spotdl
