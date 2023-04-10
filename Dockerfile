FROM python:3.9
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN mkdir /src
COPY . /src 
CMD ["python", "/src/flows/main.py"]
