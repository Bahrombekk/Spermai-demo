# Pythonning yengil versiyasini tanlaymiz
FROM python:3.11-slim

# Ilova fayllari uchun ishchi papkani aniqlaymiz
WORKDIR /app

# Hamma fayllarni konteynerga nusxalaymiz
COPY . /app

# Flask va boshqa bog‘liq kutubxonalarni o‘rnatamiz
RUN pip install --no-cache-dir -r requirements.txt

# Flaskga ilova nomini ko‘rsatamiz
ENV FLASK_APP=app.py
ENV FLASK_RUN_PORT=8080
ENV FLASK_ENV=production

# Flask serverni ishga tushiramiz
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
