Given('estou na pagina de paciente') do
  visit 'pacientes/new'
  expect(page).to have_content('New paciente')
end

Given('o paciente com cpf {string} existe') do |cpf|
  fill_in 'paciente[nome]', :with => 'Jenilson Moraes'
  fill_in 'paciente[data_nascimento]', :with => '1997-04-27'
  fill_in 'paciente[cpf]', :with => '858.454.632-71'
  fill_in 'paciente[email]', :with => 'jenilson@gmail.com'
  click_button 'Create Paciente'
  expect(page).to have_content(cpf)
end

When('eu clico em remover o paciente com cpf {string}') do |cpf|
  expect(page).to have_content(cpf)
  click_button 'Destroy this paciente'
end

Then('eu vejo uma mensagem que o paciente foi removido com sucesso') do
  expect(page).to have_content('Paciente was successfully destroyed')
end

When('eu preencho os campos de nome {string}, data_nascimento {string}, cpf {string} e email {string}') do |nome, datanasc, cpf, email|
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => datanasc
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'Logradouro', with: 'rua879'
  fill_in 'Complemento', with: 'casa'
  fill_in 'Cep',	with: '55678-567'
  fill_in 'Bairro', with: 'Centro'
  fill_in 'Cidade', with: 'Garanhuns'
end

When('eu clico em cadastrar novo paciente') do
  click_button 'Create Paciente'
end

Then('eu vejo uma mensagem que o paciente foi cadastrado com sucesso') do
  expect(page).to have_content('Paciente was successfully created.')
end

