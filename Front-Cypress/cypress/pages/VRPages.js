//Autor: Daniel Oliveira - QA Automation
//Aqui fica os elementos no qual vamos interagir pra realizar as funcionalidades

class VR{
    
    menuPraVoce(){
        return cy.get(':nth-child(3) > .vr-main-navigation__link')
    }
    opcaoOndeUsarMeuVR(){
        return cy.xpath("//a[contains(text(),'Onde usar meu cartão VR')]")
    }
    mapaGoogle(){
        cy.wait(5000)
        return cy.get('.form-search-estab')
    }
}

export default new VR();