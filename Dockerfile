FROM python:3.7-slim

ENV FLASK_APP=app.py
ENV FLASK_ENV=production
ENV FLASK_RUN_PORT=4000

RUN mkdir -p /app

COPY requirements.txt /app
RUN pip install -r /app/requirements.txt

COPY . /app

EXPOSE 4000

WORKDIR /app
CMD [ "python", "-m", "flask", "run", "--host=0.0.0.0" ]