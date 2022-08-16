FROM aquabotwa/sanuwa-official:md-beta

RUN git clone https://github.com/adhrushyamana/DevilBot-MD /root/aquabot
WORKDIR /root/aquabot/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit
CMD ["node", "bot.js"]


