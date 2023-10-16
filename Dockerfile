FROM python:3.10

RUN pip install --upgrade pip
RUN pip install pdm

WORKDIR /usr/src/app
COPY . .

RUN pdm install

CMD pdm dev