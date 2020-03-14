FROM python:3.7-slim

RUN apt-get update && apt-get install -y --no-install-recommends git cron ssh && pip install detect-secrets-server && apt-get clean
# add needs to be before install actually
RUN detect-secrets-server install cron
ENTRYPOINT ["detect-secrets-server", "add"]
CMD ["repos"]
