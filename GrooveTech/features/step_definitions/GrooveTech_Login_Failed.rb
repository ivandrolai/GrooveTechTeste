Dado("que eu ja sou cadastrado no site MOVIDA") do
    visit'https://www.movida.com.br/'
  end
  
  Quando("preencho todos os campos obrigatorios de Login e senha") do
    find('.btn.btn-user.hidden-sm.hidden-xs').click
    sleep(2)

    find('.form-control.cpf').set('37372648807')
    sleep(3)
    find('#senha').set('000000')
    sleep(3)
  end
  
  Quando("eu clico no botao de login") do
    find('#login-button').click
    sleep(2)
  end
  
  Entao("verifico se o login foi feito sem sucesso.") do
    sleep(2)
    logged = all('.alert.alert-warning')[0].text

    if logged == 'Usuário ou senha inválido(s)!'
     puts 'Nao foi possivel realizar login'
    end
  end