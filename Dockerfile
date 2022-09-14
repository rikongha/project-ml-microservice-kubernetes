FROM python:3.7.3-stretch
WORKDIR /app
COPY  app.py make_prediction.sh requirements.txt ./
COPY ./model_data ./model_data
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt
EXPOSE 80
ENTRYPOINT ["python", "app.py"]
