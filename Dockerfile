FROM python:3.6.2
RUN mkdir /src
COPY . /src
WORKDIR /src
RUN pip install --upgrade pip | pip install -r requirements.txt
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]