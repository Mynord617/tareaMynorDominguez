# ------------------------------ SQL 2019 ---------------------------------------
# Imagen de Docker Hub
FROM mcr.microsoft.com/mssql/server:2019-CU18-ubuntu-20.04 AS SQL2019

# Variables de entorno del contenedor
ENV MSSQL_SA_PASSWORD=C0ntrol1* ACCEPT_EULA=Y MSSQL_PID=Developer 

# Puerto SQL
EXPOSE 1433

# ------------------------------ MYSQL -------------------------------------------
FROM mysql:8.0.33 AS MySQL8
ENV MYSQL_ROOT_PASSWORD=C0ntrol1*
EXPOSE 3306

# ------------------------------ POSTGRES ----------------------------------------
 FROM postgres:14.3 AS POSTGRES
 ENV POSTGRES_PASSWORD=password
 EXPOSE 8080
#
# ------------------------------ ORACLE ------------------------------------------
# Imagen de Docker Hub
FROM oraclelinux:9-slim AS Oracle9

# Variables de entorno del contenedor
ENV ORACLE_SID=ORCL ORACLE_PDB=password ORACLE_PWD=david.17*

# Puerto Oracle
EXPOSE 1521