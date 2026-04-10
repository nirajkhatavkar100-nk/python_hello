FROM python:3.9-slim-buster
WORKDIR /app
COPY hello.py
CMD ["Python3", "hello.py"]
