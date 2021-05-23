# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente cadastrado no Ecommerce Fake
  Gostaria de fazer o login
  Para atualizar meu cadastro

  Contexto:
    Dado que esteja na página inicial

  @login_com_sucesso
  Cenário: Realizar login
    Quando acesso a página de login
      E Faço login com as credencias "lucascompassouol@gmail.com" e "lucasuol123"
    Então recebo a mensagem "Welcome to your account. Here you can manage all of your personal information and orders."

  @login_sem_sucesso
  Cenário: Login com falha
    Quando acesso a página de login
      E Faço login com as credencias "email@bol.com" e "abc123"
    Então recebo a mensagem "Authentication failed."
