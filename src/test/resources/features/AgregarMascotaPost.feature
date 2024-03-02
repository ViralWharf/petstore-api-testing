Feature: Agregar una nueva mascota

  Background:
    Given url apiUrl
    * def pathAddPet = '/v2/pet/'
    * def newPetJson = read('../request/agregarMascota.json')
    * configure retry = { count: 10, interval: 3000 }

  @CreatePet
  Scenario: Agrega una nueva mascota
    Given path pathAddPet
    And request newPetJson
    When method POST
    And print response
    * def idPet = response.id
    And karate.set('idPet', idPet)
    Then status 200
