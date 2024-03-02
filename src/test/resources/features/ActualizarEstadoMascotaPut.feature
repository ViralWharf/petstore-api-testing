Feature: Actualizar mascota creada anteriormente

  Background:
    Given url apiUrl
    * call read('ObtenerMascotaCreadaGet.feature')
    * def idPet = karate.get('idPet')
    * header Content-Type = 'application/x-www-form-urlencoded'
    * def pathPostPet = '/v2/pet/' + idPet
    * def idPetString = idPet + ''
    * configure retry = { count: 10, interval: 3000 }

  @UpdateNewPet
  Scenario: Usar ID de para obtener mascota y cambiarle el nombre y estado
    Given path pathPostPet
    And form field petId = idPet
    And form field name = 'Calvo'
    And form field status = 'sold'
    And method POST
    And match response.message == idPetString
    And print response
    Then status 200
