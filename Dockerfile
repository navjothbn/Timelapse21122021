FROM python:3.6
WORKDIR /timelapse

ADD . /timelapse

COPY requirements.txt ./requirements/txt

RUN pip install -r requirements.txt

EXPOSE 8501

ENTRYPOINT [ "streamlit","run" ]

CMD ["app.py"]

