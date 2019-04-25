Dado("quee ja estou cadastrado no site MOVIDA") do
  visit'https://www.movida.com.br/'
end

Quando("preenchoo os campos obrigatorios de Login e senha") do
  find(EL['btnLogin']).click
  sleep(2)

  find(EL['campoCpf']).set(EL['cpf'])
  sleep(3)
  find(EL['campoSenha']).set(EL['senha'])
  sleep(3)
end

Quando("clicoo no botao de login") do
  find(EL['btnLogar']).click
  sleep(2)
end

Entao("verificoo se o login foi feito com sucesso.") do
  sleep(2)
  logged = all(EL['texto'])[0].text

 if logged == 'OLÁ IVANDRO , BEM VINDO!'
  puts 'login realizado com sucesso'
  else
     puts 'Nao foi possivel realizar login'
  end
end