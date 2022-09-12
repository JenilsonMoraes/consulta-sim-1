require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Cadastrar paciente com nome invalido' do
    paciente = Paciente.new(nome: '', data_nascimento: '1997-03-12', cpf: '858.454.632-78', email: 'teste@gmail.com')

    endereco = Endereco.new(logradouro: 'centro', complemento: 'casa', cep: '58521-000', bairro: 'cohab', cidade: 'Garanhuns')
    paciente.endereco = endereco
    assert_not paciente.save
  end

  test 'Cadastrar paciente corretamente' do
    paciente = Paciente.new(nome: 'Jenilson', data_nascimento: '1997-04-27', cpf: '858.454.632-71', email: 'jenilson@gmail.com')

    endereco = Endereco.new(logradouro: 'rua1', complemento: 'casa', cep: '58521-000', bairro: 'centro', cidade: 'Garanhuns')
    paciente.endereco = endereco
    assert paciente.save
  end
end
