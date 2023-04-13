FROM bitnami/python:3.9
WORKDIR /app
COPY app /app
RUN pip install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt
ENV REDIS_SERVER redis
EXPOSE 8080
CMD [ "python3", "app.py"]
