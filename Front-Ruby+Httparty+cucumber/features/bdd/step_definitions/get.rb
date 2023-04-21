
# Definindo o pré-requisito para o teste: o usuário deve consultar as informações da API
  Dado('que o usuario consulte informacoes') do
  # Armazenando a URL da API na variável @get_url
  @get_url = ('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT')
  end

# Executando a ação que será testada: realizar a pesquisa na API
  Quando('ele realizar a pesquisa') do
  # Fazendo a requisição GET na URL armazenada na variável @get_url e armazenando a resposta na variável @list_employee
  @list_employee = HTTParty.get(@get_url)
  end

# Verificando se o resultado da ação é o esperado: a resposta deve ter o status code 200 e o corpo deve ter o campo "typeOfEstablishment"
  Entao('visualizo o json com typeOfEstablishment') do
  # Verificando se o status code da resposta é 200
  expect(@list_employee.code).to eql 200
  # Convertendo o corpo da resposta para um objeto JSON e armazenando na variável @body
  @body = JSON.parse(@list_employee.body)
  end


  E('imprimo aleatoriamente algum estabelecimento') do
  # Acessa o valor da chave "typeOfEstablishment" no JSON
  type_of_establishment = @body["typeOfEstablishment"]
  # Seleciona um objeto aleatório dentro do valor da chave "typeOfEstablishment"
  objeto_aleatorio = type_of_establishment.sample
  # Cria um novo objeto JSON com apenas o objeto aleatório
  json_hash = objeto_aleatorio
  # Formata o objeto JSON como uma string legível
  json_string = JSON.pretty_generate(json_hash)
  # Imprime o objeto aleatório em formato JSON
  puts json_string
  end
