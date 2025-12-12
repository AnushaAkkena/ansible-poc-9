# Simple Python web app using Flask (serves Hello World)
FROM python:3.11-slim
 
WORKDIR /app
 
# Minimal app
RUN pip install --no-cache-dir flask
COPY app.py /app/app.py
 
ENV FLASK_RUN_PORT=5001
EXPOSE 5001
 
CMD ["python", "app.py"]
