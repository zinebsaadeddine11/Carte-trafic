# 1. Use an official lightweight Python image
FROM python:3.11-slim

# 2. Set humanity's working directory inside the container
WORKDIR /app

# 3. Copy our requirements file to the container
COPY requirements.txt .

# 4. Install the required Python libraries using pip
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of our application code (app.py) to the container
COPY . .

# 6. Expose port 5000 so the outside world can access the Flask web server
EXPOSE 5000

# 7. Tell setting the command to run our web app when taking off
CMD ["python", "app.py"]
