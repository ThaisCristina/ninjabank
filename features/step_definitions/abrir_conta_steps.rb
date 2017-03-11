# encoding: utf-8

Dado(/^que eu tenho cadastro de novo cliente$/) do 
@nome = Faker::Name.name
puts @cpf = Faker::Number.number(11)
@email = Faker::Internet.email
@celular = Faker::PhoneNumber.phone_number


#@nome = table.hashes[0]["Nome"]
#@cpf = table.hashes[0]["CPF"]
#@email = table.hashes[0]["Email"]
#@deposito = table.hashes[0]["DepositoInicial"]

end

Dado(/^o deposito inicial desse cliente é de (\d+)$/) do |valor|
    @deposito = valor
end

Quando(/^faço o cadastro de nova conta$/) do

#navbar = NavbarPage.new
#navebar.open_new_account

#@home = HomePage.new
#navbar = NavbarPage.new
#account = AccountPage.new
  #visit '/'
  #find('.top-menu a[href=\'/account/add\']').click
  @home.load
  @navbar.new_account.click
  @account.save(@nome, @cpf, @email, @celular, @deposito)

  #account.name.set @nome
  #account.document.set @cpf
  #account.email.set @email
  #account.mobile.set @celular
  #account.balance.set @deposito
  #account.save_button.click


  #click_link 'Abrir minha conta'
  #fill_in 'name' , with: @nome
  #fill_in 'document' , with: @cpf
  #fill_in 'email' , with: @email
  #fill_in 'mobile' , with: @celular
  #fill_in 'balance' , with: @deposito
  #click_button 'Cadastrar'
end

Então(/^vejo a mensagem "([^"]*)"$/) do |msg|
 #alert = find('.sweet-alert').text
 #expect(alert).to include msg
 expect(@home.get_alert).to include msg 
end

Dado(/^que eu tenho um CPF já cadastrado$/) do
  @nome = Faker::Name.name
  @cpf = '21084818868'
  @email = Faker::Internet.email
  @celular = Faker::PhoneNumber.phone_number
end