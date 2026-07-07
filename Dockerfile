FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY hello_world/ hello_world/
COPY main.py .
COPY Makefile .

ENV PYTHONPATH=/app
ENV FLASK_APP=hello_world

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]