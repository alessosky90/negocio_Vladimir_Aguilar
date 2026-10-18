# Métodos HTTP

**1. GET**
*   **¿Para qué sirve?**: Para solicitar y recuperar datos de un servidor.
*   **Ejemplo**: Hacer una petición a `https://jsonplaceholder.typicode.com/posts`.
*   **URL**: `https://jsonplaceholder.typicode.com/posts`
*   **Body**: (Ninguno)
*   **Código de estado**: 200 OK.

**2. POST**
*   **¿Para qué sirve?**: Para enviar datos al servidor y crear un nuevo recurso.
*   **Ejemplo**: Crear un nuevo post.
*   **URL**: `https://jsonplaceholder.typicode.com/posts`
*   **Body**: `{ "title": "foo", "body": "bar", "userId": 1 }`
*   **Código de estado**: 201 Created.

**3. PUT**
*   **¿Para qué sirve?**: Para actualizar un recurso existente en su totalidad (reemplazarlo).
*   **Ejemplo**: Actualizar el post con ID 1.
*   **URL**: `https://jsonplaceholder.typicode.com/posts/1`
*   **Body**: `{ "id": 1, "title": "nuevo titulo", "body": "nuevo cuerpo", "userId": 1 }`
*   **Código de estado**: 200 OK.

**4. PATCH**
*   **¿Para qué sirve?**: Para actualizar parcialmente un recurso existente.
*   **Ejemplo**: Actualizar solo el título del post con ID 1.
*   **URL**: `https://jsonplaceholder.typicode.com/posts/1`
*   **Body**: `{ "title": "titulo modificado" }`
*   **Código de estado**: 200 OK.

**5. DELETE**
*   **¿Para qué sirve?**: Para eliminar un recurso del servidor.
*   **Ejemplo**: Eliminar el post con ID 1.
*   **URL**: `https://jsonplaceholder.typicode.com/posts/1`
*   **Body**: (Ninguno)
*   **Código de estado**: 200 OK.

**Diferencia entre PUT y PATCH:**
PUT reemplaza el recurso completo. Si envías un PUT sin un campo, ese campo se borra o se establece en nulo. PATCH solo modifica los campos que se envían en la petición, dejando el resto intacto. JSONPlaceholder simula estos cambios, no los guarda en una base de datos real, por lo que un GET posterior no reflejará los cambios.
