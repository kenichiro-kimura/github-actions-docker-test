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
RUN type -p curl >/dev/null || (apt update && apt install curl -y)
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg 
RUN chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg 
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null 
RUN apt update -y 
RUN apt install gh -y
COPY md2pdf.sh /usr/bin/
