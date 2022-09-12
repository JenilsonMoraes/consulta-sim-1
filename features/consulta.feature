Feature: Consulta
  As a usuario do sistema
  I want to cadastrar consulta
  So that eu nao tenha que fazer isso de forma manual ou presencial

  Scenario: cadastrar consulta
    Given o paciente de cpf '758.454.632-71' existe
    And o medico de crm '12333' existe
    And estou na pagina de cadastrar uma nova consulta
    When eu preencho os campos de data '2022-12-11', horario '12:00', medico 'Luciano', paciente 'Jenilson'
    And eu clico em criar consulta
    Then eu vejo uma mensagem que a consulta foi cadastrada com sucesso

  Scenario: cadastrar consulta com data invalida
    Given o paciente de cpf '858.454.632-71' existe
    And o medico de crm '12333' existe
    And estou na pagina de cadastrar uma nova consulta
    When eu preencho os campos de data '', horario '12:00', medico 'Luciano', paciente 'Jenilson'
    And eu clico em criar consulta
    Then eu vejo uma mensagem que a data é necessária