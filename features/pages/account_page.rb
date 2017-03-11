

class AccountPage < SitePrism::Page
    set_url '/account/add'

    element :name, 'input[name=name]'
    element :document, 'input[name=document]'
    element :email, 'input[name=email]'
    element :mobile, 'input[name=mobile]'
    element :balance, '#balance'
    element :save_button, '#saveAccount'
   

   def save (nome, cpf, email, celular, deposito)
        self.name.set nome
        self.document.set cpf
        self.email.set email
        self.mobile.set celular
        self.balance.set deposito
        self.save_button.click
       end
end
