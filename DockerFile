FROM edoburu/pgbouncer:latest

# Copiamos la configuración y credenciales
COPY pgbouncer.ini /etc/pgbouncer/pgbouncer.ini
COPY userlist.txt /etc/pgbouncer/userlist.txt

# Exponemos el puerto de PgBouncer
EXPOSE 6432

# Comando de inicio
CMD ["pgbouncer", "/etc/pgbouncer/pgbouncer.ini"]

