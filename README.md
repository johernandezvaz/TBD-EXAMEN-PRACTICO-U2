# Examen Práctico de Taller de Bases de Datos Unidad 2
### Realizado por:
### Felix Ulises Mancinas Zamora 22550029
### Sebastian Roesner Gómez 22550007
### Juan Carlos Gutierrez Mendoza 21550356
### José de Jesús Hernández Vázquez 22550025

## Creación de la Base de Datos y Tablas

La base de datos y sus tablas fueron creadas para almacenar información relevante para el funcionamiento del hospital. Puedes encontrar la evidencia de la creación en el archivo `examen-creacion.txt`.

### Estructura de la Base de Datos

La estructura de la base de datos se compone de varias tablas, cada una diseñada para almacenar información específica. A continuación se detalla la estructura de las principales tablas:

1. **Pacientes**: Esta tabla almacena información detallada sobre los pacientes, como su nombre, fecha de nacimiento, número de seguro social, entre otros.

2. **Formas de Pago**: Aquí se registran las distintas formas de pago que pueden utilizar los pacientes para sus servicios médicos.

3. **Direcciones**: Almacena la información relacionada con las direcciones de los pacientes y empleados, incluyendo la calle, número exterior, número interior, colonia, código postal, ciudad, estado y país.

4. **Empleados**: Contiene los detalles de los empleados del hospital, como su nombre, título, fecha de nacimiento y otros datos relevantes.

5. **Cuentas Pacientes**: En esta tabla se registran las cuentas generadas para cada paciente, incluyendo detalles como la fecha de emisión y el total a pagar.

### Inserción de Datos

Para facilitar la inserción de datos en la base de datos, se generaron 5 archivos CSV diferentes, cada uno con información específica sobre pacientes, empleados, formas de pago, direcciones y detalles de las cuentas de los pacientes. Utilizando Python y las librerías pandas y sqlalchemy, fue posible insertar eficientemente los datos en cada tabla de la base de datos. Puedes encontrar la evidencia de la creación en el archivo `insercion-datos-correcto.ipynb`.
### Consultas

Para la consultas de nuestra base de datos, todas se realizaron mediante el uso de MySQL Shell, utilizando comandos expuestos y vistios en clase. Puedes encontrar la evidencia de la creación en el archivo `Querys.txt`.

### Exportación de la Datos

La base de datos se exportó de manera correcta utilizando el comando `mysqldump`, la evidencia de la exportación en el archivo `hospital_dump_correcto.sql`.
