#Autor: Daniel Oliveira - QA Automation
#Arquivo .feature onde escrevemos com BDD e sintaxe gherkin os passos pra executar o teste

@CT-00001
Feature: Testando funcionalidades do site da VR

@CT-01
  Scenario: Validar exibição do mapa do google ao buscar redes quea aceitam VR
    Given que estou na página inicial da VR
    When seleciono a opção "Onde usar meu VR" no menu "Pra Voce"
    Then visualizo que o mapa do google foi exibido
