#language: pt
Funcionalidade: Fazer Login

Contexto: Realizar o login no site MOVIDA: "https://www.movida.com.br/" com sucesso

Cenario: Fazer o Login no site com sucesso

Dado que ja estou cadastrado no site MOVIDA
Quando preencho os campos obrigatorios de Login e senha
E clico no botao de login
Entao verifico se o login foi feito com sucesso.