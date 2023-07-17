# FROM python:3.11.0   
FROM python:3.8-slim-buster 
WORKDIR /django  
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 8000
CMD python manage.py runserver

# ENV PYTHONUNBUFFERED=1

# COPY requirements.txt .
# RUN pip install -r requirements.txt
# COPY . .
# EXPOSE 8000
# CMD ["python", "manage.py", "runserver"]
# COPY ./requirements.txt /requirements.txt
# COPY ./dockerapp /dockerapp

# RUN python -m venv /py && \
#     /py/bin/pip install --upgrade pip && \
#     /py/bin/pip install -r /requirements.txt && \
#     adduser --disabled-password --no-create-home dockerapp
# ENV PATH="/py/bin:$PATH"
# USER dockerapp


# RUN pip3 install -r requirements.txt

# CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000", "--noreLoad"]
# # setup environment variable  
# ENV DockerHOME=/home/app/webapp  

# # set work directory  
# RUN mkdir -p $DockerHOME  

# # where your code lives  
# WORKDIR $DockerHOME  

# # set environment variables  
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1  

# # install dependencies  
# RUN pip install --upgrade pip  

# # copy whole project to your docker home directory. 
# COPY . $DockerHOME  
# # run this command to install all dependencies  
# RUN pip install -r requirements.txt  
# # port where the Django app runs  
# EXPOSE 8000  
# # start server  
# CMD python manage.py runserver  