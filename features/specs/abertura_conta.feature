#language: pt

Funcionalidade: Abrir Conta
    Sendo um cliente
    Posso abrir uma nova Conta
    Para que eu possa fazer depositos

    # Sprint 1
    # Nome*, CPF*. Email*, Celular*, Deposito Inicial

Cenario: Abrir conta com deposito inicial

    Dado que eu tenho cadastro de novo cliente
#Dado que eu tenho cadastro com deposito inicial
    E o deposito inicial desse cliente é de 100
    # Dado que eu tenho um cliente com os seguintes atributos:
    #    | Nome   | CPF         | Email                          | Celular    | DepositoInicial|
    #   | Thais  | 78627143005 | thais.c.carvalho@hotmail.com   | 963397575  | 100            |
    Quando faço o cadastro de nova conta
    Então vejo a mensagem "Sua conta foi cadastrada com sucesso"

Cenario: Abrir conta sem deposito inicial

    Dado que eu tenho cadastro de novo cliente
    #Dado que eu tenho cadastro com deposito inicial
    E o deposito inicial desse cliente é de 0
      # Dado que eu tenho um cliente com os seguintes atributos:
      #  | Nome   | CPF         | Email                          | Celular    | DepositoInicial|
      # | Thais  | 78627143005 | thais.c.carvalho@hotmail.com   | 963397575  |               |
    Quando faço o cadastro de nova conta
    Então vejo a mensagem "Sua conta foi cadastrada com sucesso"


Cenario: Já existe uma conta para este CPF

    Dado que eu tenho um CPF já cadastrado
    Quando faço o cadastro de nova conta
    Então vejo a mensagem "Ja existe uma conta cadastrada com esse CPF"
 