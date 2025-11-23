# 1️⃣ Use an official Python base image
FROM python:3.11-slim

# 2️⃣ Set the working directory inside the container
WORKDIR /app

# 3️⃣ Copy the dependency file (requirements.txt)
COPY requirements.txt .

# 4️⃣ Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Copy the rest of your application code
COPY . .

# 6️⃣ Expose the port (optional)
EXPOSE 8000

# 7️⃣ Command to run the app
CMD ["python", "app.py"]
