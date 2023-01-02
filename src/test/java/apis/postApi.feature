Feature: Post Api validation

  Background: 
    * url baseUrl
    Given path '/users'
    And header Content-Type = 'application/json'

  @inline-json
  Scenario Outline: Post call Validation
    * def body = {"name": <name>,"job": <job>}
    Given request body
    When method Post
    Then status <status>

    Examples: 
      | name    | job    | status |
      | "David" | "QA"   |    201 |
      | "Hale"  | "SDET" |    201 |

  @reading-json
  Scenario Outline: Post call Validation
    * def body = read("classpath:apis/body.json")
    * set body.name = <name>
    * set body.job = <job>
    Given request body
    When method Post
    Then status <status>
    And match response.name == <name>

    Examples: 
      | name    | job       | status |
      | "Hanif" | "MNG"     |    201 |
      | "Halim" | "Captain" |    201 |
