From python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
Run pip install flask
Run pip install -r requirements.txt
Run pip install gunicorn
Run pip install gunicorn

ENTRYPOINT ["gunicorn"  , "-b", ":8080", "main:APP"]

# ENTRYPOINT ["sh","-x","./gunicornsh.sh"]
