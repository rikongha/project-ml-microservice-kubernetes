FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir --upgrade pip &&\
		pip install --no-cache-dir --upgrade -r requirements.txt

Expose 80

CMD ["python", "app.py"]

