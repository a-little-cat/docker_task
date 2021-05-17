ARG IMAGE_TAG=slim
FROM python:$IMAGE_TAG

LABEL maintainer cat
ARG DEBIAN_FRONTEND=noninteractive

COPY ./start.sh /root/

ENV TZ=Asia/Shanghai \
    LANG=C.UTF-8

CMD ["/root/start.sh"]
