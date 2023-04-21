// Arquivo com uma configuraçoes pra saida do cypress não ser "poluida" 

declare namespace Cypress {
    interface ResolvedConfigOptions {
      hideXHRInCommandLog?: boolean;
    }
  }