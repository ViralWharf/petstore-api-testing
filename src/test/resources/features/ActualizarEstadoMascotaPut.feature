Feature: Actualizar mascota creada anteriormente

  Background:
    Given url apiUrl
    * call read('ObtenerMascotaCreadaGet.feature')
    * def idPet = karate.get('idPet')
    * def pathPostPet = '/v2/pet/' + idPet
    * def idPetString = idPet + ''
    * configure retry = { count: 10, interval: 3000 }

  @UpdateNewPet
  Scenario: Usar ID de para obtener mascota y cambiarle el nombre y estado
    Given path pathPostPet
    When request {idPet: idPet, name: 'Calvo',status: 'sold'}
    And header Content-Type = 'application/x-www-form-urlencoded'
    And method POST
    And match response.message == idPetString
    And print response
    Then status 200
