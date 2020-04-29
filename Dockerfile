FROM python:3.7.3-stretch

#Working Directory
WORKDIR /app

#Copy source code to working directory
COPY . app.py /app/

#Install packages from requirments.txt
#hadolint ignore=DL303

RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirments.txt

