# FROM prefecthq/prefect:2-python3.9
# RUN /usr/local/bin/python -m pip install --upgrade pip
# WORKDIR /opt/prefect
# COPY setup.py .
# COPY requirements.txt .
# COPY dataflowops/ /opt/prefect/dataflowops/
# COPY flows/ /opt/prefect/flows/
# RUN pip install .
# RUN prefect block register -m prefect_aws.ecs

FROM python:3.9
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN mkdir /src
COPY . /src 
CMD ["python", "/src/flows/hello.py"]
