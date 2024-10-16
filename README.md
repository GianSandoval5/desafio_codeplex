# Product List App

Esta es una aplicación Flutter que consume datos de una API REST y muestra una lista de productos. Si no hay conexión a Internet, la aplicación utiliza Hive para mostrar datos almacenados localmente.

## Características

- Consumo de API REST para obtener productos de [Fake Store API](https://fakestoreapi.com/products).
- Manejo de estado utilizando el patrón Provider.
- Almacenamiento local de datos utilizando Hive.
- Interfaz de usuario simple y responsiva.

## Requisitos

- Flutter (version 3.0 o superior)
- Dart

## Instalación

1. **Clona este repositorio:**

   ```bash
   git clone <https://github.com/GianSandoval5/desafio_codeplex.git>
   
   bash
   
    cd product_list_app

    bash

    flutter pub get

    bash

    flutter run

Estructura del Proyecto
lib/
main.dart: Punto de entrada de la aplicación.
product_provider.dart: Contiene la lógica para obtener productos de la API y manejar el estado utilizando Provider.
product.dart: Modelo de datos para los productos.
product_list_screen.dart: Pantalla que muestra la lista de productos.
Uso
Al iniciar la aplicación, se realiza una solicitud a la API para obtener la lista de productos. Si hay conexión a Internet, los datos se muestran en una lista. Si no hay conexión, la aplicación recupera los datos almacenados localmente en Hive.

Navegación
Haz clic en un producto para navegar a una pantalla de detalles (si se implementa).
Contribuciones
Las contribuciones son bienvenidas. Si deseas contribuir, por favor sigue estos pasos:

Haz un fork del repositorio.
Crea una nueva rama (git checkout -b feature/nueva-funcionalidad).
Realiza tus cambios y haz un commit (git commit -m 'Agregando nueva funcionalidad').
Sube tus cambios (git push origin feature/nueva-funcionalidad).
Abre un Pull Request.
Licencia
Este proyecto está bajo la Licencia MIT. Para más detalles, consulta el archivo LICENSE.

Autor
Gian Sandoval
