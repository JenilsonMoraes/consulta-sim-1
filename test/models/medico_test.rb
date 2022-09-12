require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'criando medico corretamente' do
    medico = Medico.new nome: 'Rodrigo Andrade', cpf: '706.508.980-01', email: 'rodrigo@rodrigo.com',
                        especialidade: 'Reumatologista', crm: '123456'
    assert medico.save
  end

  test 'cadastrando medico com crm invalido' do
    medico = Medico.new nome: 'Mario Silva', cpf: '111.346.120-05', email: 'mario@gmail.com', especialidade: 'Neurologista', crm: '1'

    assert_not medico.save
  end

  test 'cadastrando medico com especialidade invalida' do
    medico = Medico.new nome: 'Marcos Silva', cpf: '151.446.220-05', email: 'marcos@gmail.com', especialidade: 'Ne', crm: '678970'

    assert_not medico.save
  end
end
