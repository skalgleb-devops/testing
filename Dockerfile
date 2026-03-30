FROM python:3.9-slim

WORKDIR /app

# Copy the requirements file first
COPY requirements.txt .

# Install the "baked-in" tools
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your code
COPY . .

CMD ["python", "app.py"]
