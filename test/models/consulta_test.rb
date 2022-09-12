require "test_helper"

class ConsultaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'cadastrando consulta com data invalida' do
    medico = Medico.new nome: 'Luciano', cpf: '276.032.998-11', email: 'luciano@email.com', especialidade: 'Endocrino', crm: '9867453'
    assert medico.save

    paciente = Paciente.new nome: 'Leonardo', data_nascimento: '2002-08-19', cpf: '009.135.950-09', email: 'leonardo@email.com'


    endereco = Endereco.new logradouro: 'rua38', complemento: 'casa', cep: '55294-123', bairro: 'centro', cidade: 'Garanhuns'


    paciente.endereco = endereco
    assert paciente.save

    consulta = Consulta.new data: '2021-01-03', horario: '12:00', medico_id: medico.id, paciente_id: paciente.id


    assert_not consulta.save
  end

  test 'cadastrando consulta corretamente' do
    medico = Medico.new nome: 'Lamark' , cpf: '333.222.000-11', email: 'lamark@email.com', especialidade: 'Pediatra', crm: '036511'
    assert medico.save

    paciente = Paciente.new nome: 'Maria Moraes', data_nascimento: '2000-01-11', cpf: '112.113.114-15', email: 'maria@email.com'


    endereco = Endereco.new logradouro: 'rua446', complemento: 'casa', cep: '55294-124', bairro: 'centro', cidade: 'Garanhuns'


    paciente.endereco = endereco
    assert paciente.save

    consulta = Consulta.new data: '2022-12-03', horario: '09:00', medico_id: medico.id, paciente_id: paciente.id


    assert_not consulta.save
  end
end
