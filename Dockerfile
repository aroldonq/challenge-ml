# Usa una imagen base de Python
FROM python:3.8-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos necesarios al directorio de trabajo
COPY app/ /app/app/

# Instala las dependencias
RUN pip install uvicorn

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["uvicorn", "app.main:main", "--host", "0.0.0.0", "--port", "8080"]