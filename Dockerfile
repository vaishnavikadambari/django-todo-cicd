FROM python:3 
#this will bring an ubuntu image with python installed

RUN pip install django==3.2

COPY . . 
# copy code to containerr

RUN python manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8000"]



