FROM daxia2023/choreo:latest

USER 10016

ENV PW 8ge8
ENV NEZHA_SERVER data.841013.xyz
ENV NEZHA_KEY enqM5WOCGC5yKthWrJ

# healthcheck
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "pm2 ls | grep -q packages || pm2 start" ]

CMD pm2-runtime start ecosystem.config.js > /dev/null 2>&1
