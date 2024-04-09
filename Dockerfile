FROM python:3.10

WORKDIR /app

COPY ./ /app

RUN pip install -r requirements.txt --no-cache-dir

EXPOSE 8080

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]

