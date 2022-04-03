## conductor-client-py

[Python Netflix's Conductor client](https://github.com/Netflix/conductor/tree/v2.31.2/client/python) container

Image to be used for ConductorWorker python lib. As doesn't exists a `pip` for Python Netflix's Conductor client, this image install it and give you Python3 and ConductorWorker ready to be used.

This container install Python3 and https://github.com/Netflix/conductor/tree/v2.31.2/client/python from a given Conductor repository tag

## Usage

Create a Dockerfile from `rafaelmm/conductor-client-py`

##### Example
```
FROM rafaelmm/conductor-client-py:2.31.1


COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt --ignore-installed

COPY . /app

ENTRYPOINT [ "python3", "-m"]

CMD [ "your-application.app" ]
```
