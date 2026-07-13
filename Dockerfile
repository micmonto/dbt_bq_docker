FROM python:3.9-slim

# Set the working directory
WORKDIR /usr/app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project
COPY . .

# Set the environment variable for dbt profiles
ENV DBT_PROFILES_DIR=/usr/app