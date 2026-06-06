# Imagen base ligera de Python
FROM python:3.10-slim

# Directorio de trabajo en el contenedor
WORKDIR /app

# Copiar dependencias e instalarlas
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código de EdwinRamiro
COPY . .

# Exponer el puerto de Flask
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]