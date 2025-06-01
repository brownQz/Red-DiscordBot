FROM python:3.11

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install -r requirements/base.txt
RUN pip install -r requirements/extra-postgres.txt
RUN pip install -r requirements/extra-style.txt
RUN pip install -r requirements/extra-test.txt
RUN pip install .

CMD ["python", "-m", "redbot", "machine"]