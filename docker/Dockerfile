FROM node:latest
RUN apt update -y
RUN apt install -y libnss3-dev
RUN apt install -y libatk1.0-0
RUN apt install -y libatk-bridge2.0-0
RUN apt install -y libcups2
RUN apt install -y libdrm2
RUN apt install -y libxkbcommon-x11-0
RUN apt install -y libxcomposite-dev
RUN apt install -y libxdamage-dev
RUN apt install -y libxrandr-dev
RUN apt install -y libgbm-dev
RUN apt install -y libasound2
RUN apt install -y fonts-noto
RUN apt install -y fonts-ipafont-gothic
RUN apt install -y locales
RUN sed -i -E 's/# (ja_JP.UTF-8)/\1/' /etc/locale.gen
RUN locale-gen
RUN update-locale LANG=ja_JP.UTF-8
RUN yarn add md-to-pdf
COPY md2pdf.sh /usr/bin/
