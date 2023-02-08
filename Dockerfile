FROM python:3.10.4
ENV PYTHONUNBUFFERED 1

COPY ./requirement.txt /tmp/requirement.txt
COPY ./req_dev.txt /tmp/req_dev.txt
COPY . /MyCourse
WORKDIR /MyCourse
EXPOSE 8000

ARG DEV=false

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirement.txt && \
    if [ $DEV = "true" ]; \
        then /py/bin/pip install -r /tmp/req_dev.txt ; \
    fi && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user && \
    chown -R django-user:django-user -R /MyCourse/ 
    

ENV PATH="/scripts:/py/bin:$PATH"

USER django-user
CMD python manage.py runserver 0:8000