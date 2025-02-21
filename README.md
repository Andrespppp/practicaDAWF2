# practicaDAWF2

Si quieres eliminar todo y empezar de cero:
```bash
docker-compose down -v
```

---
## Notas importantes

 La primera vez que ejecutes el proyecto, el proceso puede tardar unos minutos.
- Si realizas cambios en el código, puedes reiniciar el entorno con:
  ```bash
  docker-compose down && docker-compose up --build
  ```

- Para acceder a la base de datos PostgreSQL en tu contenedor practicadawf2_db_1, usa este comando:
  ```bash
  docker exec -it practicadawf2_db_1 psql -U postgres -d tasksdb
  ```
- Esto abrirá la consola de PostgreSQL dentro del contenedor.

  Ver todas las tablas de la base de datos:
  ```bash
  \dt;
  ```
- Ver la estructura de las relaciones donde se encuentran las tablas:
  ```bash
    \d tasks_task;
  ```
  -  Listar todos los registros de la tabla tasks_task:
  ```bash
    SELECT * FROM tasks_task;
  ```
  - Ver los datos de forma ascendente
  ```bash
    SELECT * FROM tasks_task ORDER BY id ASC;
  ```

  - Ver los datos de forma descendente
  ```bash
    SELECT * FROM tasks_task ORDER BY id DESC;
  ```

  -  Salir de PostgreSQL:
  ```bash
    \q
  ```

¡Listo! Ahora puedes acceder a la aplicación en `http://localhost:8000` (o el puerto configurado en tu proyecto).   

