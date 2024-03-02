# Prueba Técnica Devsu #2: Opción 2 de automatización de Pruebas API

¡Hola! Este es el proyecto de automatización que incluye el segundo escenario propuesto en la prueba técnica API para Devsu.

## Descripción

El Proyecto API Testing para Devsu es una suite de pruebas automatizadas diseñada para verificar un flujo crítico de Pet, hecha en basada con el endpoint `petstore.swagger.io`, escrita con Gherkin y ejecutada con Karate. La suite se centra en validar una nueva mascota y el cómo se edita, y se utiliza las capacidades de Karate para realizar las pruebas en paralelo.

## Funcionalidades Principales
- Añadir una nueva mascota.
- Consultar la mascota añadida.
- Actualizar el nombre y el estado de la mascota creada.
- Consultar la mascota actualizada.

## Requisitos Previos
- Java Development Kit (JDK) 8 o superior.
- Maven.
- Google Chrome. 
- El proyecto se creó en IntelliJ, entonces se recomienda usarlo.

## Ejecución

Para ejecutar el proyecto hay que seguir los siguientes pasos y tener en cuenta las recomendaciones:

1. Clona el repositorio: \
   `git clone https://github.com/ViralWharf/petstore-api-testing`
2. Aquí se pueden hacer dos cosas:
   1. Se pueden ejecutar los features de manera independiente, para esto solo hay que acceder a `src/test/resources/features` y seleccionar el feature a ejecutar.
   2. Se pueden ejecutar los test de manera parelela desde [TestRunner.java](src%2Ftest%2Fjava%2Ftests%2FTestRunner.java), ubicado en `src/test/java/tests/TestRunner.java` 
3. El reporte generado se guardará en [karate-summary.html](target%2Fkarate-reports%2Fkarate-summary.html), su ruta es `target/karate-reports/karate-summary.html` 
4. ¡Comprueba los resultados!


