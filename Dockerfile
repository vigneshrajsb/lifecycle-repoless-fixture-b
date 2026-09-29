FROM busybox:1.36
COPY serve.sh VERSION /app/
CMD ["sh", "/app/serve.sh"]
