//Autor: Daniel Oliveira - QA Automation
//Aqui fica os steps dos passos que escrevemos no arquivo .feature

import {
  Given,
  When,
  Then,
} from "@badeball/cypress-cucumber-preprocessor";

import VRUtils from "../../utils/VRUtils";

Given("que estou na página inicial da VR", () => {
  cy.viewport(1366, 768);
  cy.visit("https://www.vr.com.br/")
  cy.get('#lum_4028808471FC1D5D0171FE80340D6AC8_quickAcceptTerm').click();
})

When("seleciono a opção {string} no menu {string}", (opcao,menu) => {
  VRUtils.opcaoMenu(opcao,menu)
})

Then("visualizo que o mapa do google foi exibido", () => {

})


