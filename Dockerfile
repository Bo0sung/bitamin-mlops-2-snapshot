FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY WA_FnUseC_TelcoCustomerChurn.csv .

CMD ["python", "app.py"]
