FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir --upgrade-pip && pip install --no-cache-dir  -r requirements.txt 

## Step 4:
# Expose port 80

## Step 5:
# Run app.py at container launch

