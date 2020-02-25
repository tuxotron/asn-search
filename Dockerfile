FROM python:3.8-slim-buster

RUN apt-get update && apt-get install -y \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg \
	--no-install-recommends \
	&& curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
	&& echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list \
	&& apt-get update && apt-get install -y \
	google-chrome-stable \
    fontconfig \
	fonts-ipafont-gothic \
	fonts-wqy-zenhei \
	fonts-thai-tlwg \
	fonts-kacst \
	fonts-symbola \
	fonts-noto \
	fonts-freefont-ttf && \
    pip install --no-cache-dir beautifulsoup4 && \
    groupadd -r chrome && useradd -r -g chrome -G audio,video chrome && \
	mkdir -p /home/chrome && chown -R chrome:chrome /home/chrome

COPY entrypoint.sh /
COPY asn-search.py /home/chrome/
RUN chmod +x /entrypoint.sh

USER chrome

ENTRYPOINT [ "/entrypoint.sh" ]