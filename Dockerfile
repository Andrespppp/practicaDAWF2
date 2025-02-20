#imagen python
FROM python:3.10.12

#directorio de trabajo dentro del contenedor
WORKDIR /app

#copir el archivo de requisitos e instalar las dependecias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade pip

#RUN apt-get update && apt-get install -y postgresql-client

#copiar el resto del código de la aplicación
COPY ./app/crud-django1/ .

#Exponer en el puerto 8000
EXPOSE 8000

#Comando para ejecutar la aplicación de python
#CMD ["sh", "-c", "sleep 10 && wait-for-it db:5432 -- python crud-django1/manage.py runserver 0.0.0.0:8000"]
CMD ["sh", "-c", "sleep 10 && wait-for-it db:5432 -- python crud-django1/manage.py migrate && wait-for-it db:5432 -- python crud-django1/manage.py runserver 0.0.0.0:8000"]
