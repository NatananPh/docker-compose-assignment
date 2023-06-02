FROM python:3.12.0b1-bullseye
RUN pip install fastapi 
RUN pip install uvicorn
RUN mkdir /app
COPY . /app
WORKDIR /app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
