# Use official Python image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy the FastAPI project files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip \
    && pip install -r requirements.txt

# Expose the port FastAPI will run on
EXPOSE 8000

# Start FastAPI application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]