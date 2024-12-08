# 🚀 FastAPI Observability Stack

Este proyecto muestra cómo configurar un stack de **observabilidad** completo para aplicaciones FastAPI, utilizando herramientas como **Grafana Alloy**, **Prometheus**, **Loki**, **Tempo**, y **OpenTelemetry**. Aprenderás cómo gestionar métricas, logs y trazas de manera eficiente para supervisar tus aplicaciones en producción.

---

## 📂 Estructura del proyecto

```plaintext
etc/
  ├── alloy/                      # Configuración de Grafana Alloy
  ├── dashboards/                 # Didrectorio del dashboard
  ├── grafana/                    # Configuración adicional de Grafana
  ├── prometheus/                 # Configuración de Prometheus
fastapi_app/                      # Código de la aplicación FastAPI
  ├── main.py                     # Punto de entrada de la app
  ├── utils.py                    # Utilidades para la app
  ├── requirements.txt            # Dependencias de la aplicación
images/                           # Recursos gráficos y de documentación
random-request.sh                 # Script para generar solicitudes aleatorias
docker-compose.yml                # Orquestación del stack con Docker Compose
```

---

## 🛠️ Instalación

### **Prerrequisitos**

-   Docker 🐳
-   Docker Compose

### **Pasos**

1. Clona el repositorio:

    ```bash
    git clone <REPO_URL>
    cd <REPO_FOLDER>
    ```

2. Crea las imágenes y levanta los servicios con Docker Compose:

    ```bash
    docker-compose up --build
    ```

3. Accede a Grafana en tu navegador:
    - URL: [http://localhost:3000](http://localhost:3000)
    - Usuario: `admin`
    - Contraseña: `admin`

---

## 🧰 Uso

### **Generar tráfico para la aplicación**

Ejecuta el script `random-request.sh` para simular tráfico en la aplicación:

```bash
bash random-request.sh
```

### **Visualizar métricas, logs y trazas**

-   **Prometheus**: [http://localhost:9090](http://localhost:9090)
-   **Grafana**: [http://localhost:3000](http://localhost:3000)

---

## ✨ Herramientas utilizadas

-   **FastAPI**: Framework web ligero y rápido.
-   **Grafana Alloy**: Solución todo-en-uno para observabilidad.
-   **Prometheus**: Métricas y alertas.
-   **Loki**: Gestión de logs.
-   **Tempo**: Seguimiento de trazas distribuidas.
-   **OpenTelemetry**: Instrumentación de la aplicación.

---

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Si encuentras algún problema o tienes sugerencias, abre un **issue** o haz un **pull request**.

---

## 📝 Licencia

Este proyecto está bajo la licencia **MIT**. Consulta el archivo `LICENSE` para más detalles.

---

¡Espero que disfrutes explorando la observabilidad en tus proyectos! 🚀
