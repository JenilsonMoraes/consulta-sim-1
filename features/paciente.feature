Feature: Paciente
  As a paciente
  I want to adicionar, remover, visualizar e editar meu cadastro
  So that eu nao tenha que fazer isso de forma manual ou presencial


  Scenario: cadastrar paciente
    Given estou na pagina de paciente
    When eu preencho os campos de nome 'Jenilson Moraes', data_nascimento '1997-04-27', cpf '858.454.632-71' e email 'jenilson@gmail.com'
    And eu clico em cadastrar novo paciente
    Then eu vejo uma mensagem que o paciente foi cadastrado com sucesso


  Scenario: remover paciente
    Given estou na pagina de paciente
    And o paciente com cpf '858.454.632-71' existe
    When eu clico em remover o paciente com cpf '858.454.632-71'
    Then eu vejo uma mensagem que o paciente foi removido com sucesso

