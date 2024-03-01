# Prueba OATI Nota estudiantes

Prueba API REST para la OATI. consistente en realizar una API REST que por medio de dos End Points se permitiese realizar tanto la inserción de notas (La cual podía probarse por medio de POSTMAN) y la consulta de las mismas (la cual se realizaba por medio de un Front End)




## Screenshots
INGRESO DE ESTUDIANTES
![App Screenshot](https://raw.githubusercontent.com/Skyrus1203/OATI-PRUEBA-DE-NOTAS/master/Imagenes/Captura%20de%20pantalla%202024-02-29%20193925.png)


COMPROBACIÓN EN BD
![App Screenshot](https://raw.githubusercontent.com/Skyrus1203/OATI-PRUEBA-DE-NOTAS/master/Imagenes/Captura%20de%20pantalla%202024-02-29%20193937.png)

CONSULTA DE NOTAS
![App Screenshot](https://raw.githubusercontent.com/Skyrus1203/OATI-PRUEBA-DE-NOTAS/master/Imagenes/Captura%20de%20pantalla%202024-02-29%20194013.png)

INGRESO DE NOTAS:
![App Screenshot](https://raw.githubusercontent.com/Skyrus1203/OATI-PRUEBA-DE-NOTAS/master/Imagenes/Captura%20de%20pantalla%202024-02-29%20194439.png)

COMPROBACIÓN EN BD:
![App Screenshot](https://raw.githubusercontent.com/Skyrus1203/OATI-PRUEBA-DE-NOTAS/master/Imagenes/Captura%20de%20pantalla%202024-02-29%20201844.png)

## Funcionamiento

Para que el proyecto funcione es necesario ingresar en el .env (si no existe crearlo) las siguientes variables a modo de credenciales, las cuales deben ser reemplazadas por las configuraciónes locales respectivas. No se logró hacer funcionar la interfaz con la API sin embargo los EndPoints son totalmente funcionales, por lo que se pueden probar con POSTMAN.

El archivo exportado de la base de datos se encuentra en la raiz del proyecto por lo que será necesario cargarla en PHPMyAdmin o bien en MySQL Workbench.

HOST=localhost

DATABASE=notasbd

USER=root

PASSWORD=password

Posteriormente utilizar
```bash
  npm run deploy
```
y a partir de allí en POSTMAN realizar las diferentes consultas. Por defecto está establecido el puerto 4000 de localHost para correr la API.

Luego de esto en POSTMAN si se quiere probar la consulta a la base de datos se debe utilizar el siguiente URL con el método GET:

http://localhost:4000/api/notas/codigoEstudiante

Siendo "codigoEstudiante" cualquier código de un registro de la tabla estudiante que esté en la base de datos.

Para ingresar estudiantes es necesario por el método POST ingresar el ID del estudiante y el nombre del estudiante de la siguiente forma:

```bash
  {
    "idEstudiante": "codigoEstudiante",
    "nombreEstudiante": "UnNombreParaElEstudiante"
  }
```

Donde respectivamente se colocará un código y un nombre para el estudiante deseado, el sistema automáticamente agregará materias para este nuevo estudiante y sus notas por defecto serán "NO REGISTRA".

Finalmente para ingresar una nota (O bien cambiarla como se le quiera ver) es necesario utilizar la siguiente ruta por el metodo POST:

http://localhost:4000/api/notas/ingresarNota/

Y enviar un JSON de la siguiente forma:

```bash
  {
    "nota":"5",
    "idEstudiante":"20201020050",
    "idMateria":7
  }
```
Por poner un ejemplo
