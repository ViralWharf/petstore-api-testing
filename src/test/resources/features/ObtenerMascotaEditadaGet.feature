Feature: Obtener mascota creada anteriormente

  Background:
    Given url apiUrl
    * call read('ActualizarEstadoMascotaPut.feature')
    * def idPet = karate.get('idPet')
    * def status = 'sold'
    * def paramStatus = { status: '#(status)' }
    * def pathGetUpdatePet = '/v2/pet/findByStatus'
    * configure retry = { count: 10, interval: 3000 }

  @GetUpdatePet
  Scenario: Usar ID de para obtener mascota creada
    Given path pathGetUpdatePet
    And params paramStatus
    When method GET
    And match response[*].id contains idPet
    And print response
    Then status 200