FROM python:3.10-alpine

COPY  ./requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

COPY  ./start.sh ./start.sh

COPY ./src ./app

RUN chmod +x /start.sh

CMD ["./start.sh"]
#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
