FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt && \
    python -c "import aiogram; print('aiogram:', aiogram.__version__)"

COPY main.py .

CMD ["python", "main.py"]
