FROM python:3-alpine3.15
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENV FLASK_ENV=production
CMD ["flask", "run", "--host=0.0.0.0"]
