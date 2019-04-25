Dado("que ja estou cadastrado no site MOVIDA") do
 visit'https://www.movida.com.br/'
end

Quando("preencho os campos obrigatorios de Login e senha") do
  find('.btn.btn-user.hidden-sm.hidden-xs').click
  sleep(2)

  find('.form-control.cpf').set('37372648807')
  sleep(3)
  find('#senha').set('123456')
  sleep(3)
 end

Quando("clico no botao de login") do
  find('#login-button').click
  sleep(2)
end

Entao("verifico se o login foi feito com sucesso.") do
  sleep(2)
  logged = all('.btn.btn-user.logado.text-center')[0].text

 if logged == 'OLÁ IVANDRO , BEM VINDO!'
  puts 'login realizado com sucesso'
  else
     puts 'Nao foi possivel realizar login'
  end
end