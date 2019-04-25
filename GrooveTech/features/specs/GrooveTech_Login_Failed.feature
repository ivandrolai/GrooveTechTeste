#language: pt
Funcionalidade: Fazer Login sem sucesso

Contexto: Realizar o login no site MOVIDA: "https://www.movida.com.br/" sem sucesso

Cenario: Fazer o Login no site sem sucesso

Dado que eu ja sou cadastrado no site MOVIDA
Quando preencho todos os campos obrigatorios de Login e senha
E eu clico no botao de login
Entao verifico se o login foi feito sem sucesso.