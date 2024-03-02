Feature: Obtener mascota creada anteriormente

  Background:
    Given url apiUrl
    * call read('AgregarMascotaPost.feature')
    * def idPet = karate.get('idPet')
    * def pathGetPet = '/v2/pet/' + idPet
    * configure retry = { count: 10, interval: 3000 }

  @GetNewPet
  Scenario: Usar ID de para obtener mascota creada
    Given path pathGetPet
    When method GET
    And match response.category.name == 'Conejo'
    And match response.name == 'Peluche'
    And match response.status == 'available'
    And match response.id == idPet
    And print response
    Then status 200
