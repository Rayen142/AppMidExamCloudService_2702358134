# 1. Gunakan base image resmi Python
FROM python:3.10-slim

# 2. Set direktori kerja di dalam container
WORKDIR /app

# 3. Salin file aplikasi (app.py) dari host ke container
COPY app.py .

# 4. Perintah yang akan dijalankan saat container dimulai
CMD ["python", "./app.py"]