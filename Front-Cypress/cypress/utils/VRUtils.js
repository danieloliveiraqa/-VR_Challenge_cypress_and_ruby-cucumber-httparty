//Aqui realizamos as funcionalidades como clicks, validar elemento na pagina

import VRPages from "../pages/VRPages";

class VRUtils{
    
    opcaoMenu(opcao,menu){
        if(opcao === "Onde usar meu VR" && menu === "Pra Voce")
        {
            VRPages.menuPraVoce().trigger('mouseover')
            VRPages.opcaoOndeUsarMeuVR().click();
        }
    }
    visualizarMapGoogle(){
        VRPages.mapaGoogle().should('be.visible');
    }
}

export default new VRUtils();

