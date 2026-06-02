FROM python:slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD [ "gunicorn", "--bind", "0.0.0.0:8003", "app:app" ]
