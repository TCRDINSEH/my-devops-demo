FROM python:3.10-slim

WORKDIR /app

# Install dependencies
COPY app/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY app/ /app

CMD ["python", "main.py"]
