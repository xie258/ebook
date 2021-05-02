FROM python:3.8

WORKDIR /app

COPY . /app

RUN pip install -r /app/requirements.txt -i https://mirrors.aliyun.com/pypi/simple/

RUN pip install gunicorn gevent -i https://mirrors.aliyun.com/pypi/simple/

CMD ["gunicorn", "-k", "gevent", "-b", "0.0.0.0:5000", "manage:app"]