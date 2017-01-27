FROM python:3.6

RUN mkdir /code
WORKDIR /code

ADD setup.py /code/setup.py
ADD README.md /code/README.md
ADD mangopaysdk /code/mangopaysdk

RUN python setup.py develop

ADD . /code
