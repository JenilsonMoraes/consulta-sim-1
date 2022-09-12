Given('o paciente de cpf {string} existe') do |cpf|
  visit 'pacientes/new'
  expect(page).to have_content(cpf)

  fill_in 'paciente[nome]', :with => 'Luana'
  fill_in 'paciente[data_nascimento]', :with => '1997-04-27'
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => 'jenilson@email.com'

  fill_in 'Logradouro', with: 'rua345'
  fill_in 'Complemento', with: 'casa'
  fill_in 'Cep',	with: '55254-123'
  fill_in 'Bairro', with: 'Centro'
  fill_in 'Cidade', with: 'Garanhuns'

  click_button 'Create Paciente'

  expect(page).to have_content(cpf)
end
Given('o medico de crm {string} existe') do |crm|
visit 'medicos/new'
expect(page).to have_content(crm)

fill_in 'medico[nome]', :with => 'Luciano'
fill_in 'medico[cpf]', :with => '1997-06-28'
fill_in 'medico[email]', :with => 'luciano@gmail.com'
fill_in 'medico[especialidade]', :with => 'Neurologista'
fill_in 'medico[crm]', :with => crm


click_button 'Create Medico'

expect(page).to have_content(crm)

end

Given('estou na pagina de cadastrar uma nova consulta') do
  visit'consultas/new'
  expect(page).to have_content('consultas/new')

end

When('eu preencho os campos de data {string}, horario {string}, medico {string}, paciente {string}') do |data, horario, medico, paciente|
  fill_in 'consulta[data]', :with => data
  select horario, from:'consulta_horario'
  select paciente, from: 'consulta_paciente_id'
  select medico, from: 'consulta_medico_id'
end

When('eu clico em criar consulta') do
  click_button 'Create Consulta'
end

Then('eu vejo uma mensagem que a consulta foi cadastrada com sucesso') do
  expect(page).to have_content('Consulta was successfully created.')
end

Then('eu vejo uma mensagem que a data é necessária') do
  expect(page).to have_content("Data can't be blank")
end