# 📑 Gestor Documental – Portofino + MySQL

Aplicación web desarrollada con **Portofino 5.3.4** conectada a **MySQL 8** para la gestión documental.
Incluye CRUD de documentos, categorías y usuarios, con seguridad basada en roles.

---

## 🚀 Requisitos previos

* Java 11+
* Groovy
* MySQL 8+
* Maven o Gradle
* Git
* Portofino (última versión estable)
* Apache Tomcat 9

---

## ⚙️ Instalación y configuración

### 1. Clonar este repositorio

```bash
git clone https://github.com/Oscar-Echeverry/Gestor-docs.git
cd Gestor-docs
```

---

### 2. Crear la base de datos en MySQL

Ejecuta el script SQL incluido en este repositorio:

```bash
mysql -u root -p < database.sql
```

---

### 3. Configurar la conexión a la base de datos en Portofino

Edita el archivo:

```
ROOT/WEB-INF/classes/portofino.properties
```

o `application.properties` (dependiendo de tu instalación), y ajusta los parámetros:

```
jdbc.url=jdbc:mysql://localhost:3306/gestor_docs
jdbc.username=root
jdbc.password=tu_password
```

---

### 4. Copiar el proyecto en Tomcat/Portofino

Copia la carpeta `ROOT/` dentro de la carpeta `webapps/` de tu instalación de **Tomcat/Portofino**.

---

### 5. Levantar el servidor Tomcat

En Linux/Mac:

```bash
./bin/startup.sh
```

En Windows:

```powershell
.\bin\startup.bat
```

---

### 6. Acceder a la aplicación

Una vez iniciado el servidor, abre en tu navegador:

👉 [http://localhost:8080/](http://localhost:8080/)

---
