# batman
Um repositório com scripts .bat que fazem coisas incríveis.

# Scripts
<details>
<summary>Remover Caracteres ao Final</summary>

Este é um script .bat que permite remover um número de caracteres ao final dos nomes dos arquivos de uma determinada extensão. Ele pode ser útil para renomear arquivos em lote que tenham algum sufixo indesejado.
[Download do script](https://github.com/DanielSvoboda/batman/raw/main/Remover_Caracteres_ao_Final.bat)
## Como usar

- Para baixar o script, [acesso o link](https://github.com/DanielSvoboda/batman/raw/main/Remover_Caracteres_ao_Final.bat) e depois click com botão direito e aperte em Salvar como.
- Salve-o na pasta onde estão os arquivos que você quer renomear.
- Execute o script e escolha uma opção: 1 para PDF, 2 para TXT ou 3 para outra extensão.
- Digite o número de caracteres que você quer remover ao final dos nomes dos arquivos.
- Aguarde a confirmação de que os arquivos foram renomeados.

## Exemplos

Suponha que você tenha os seguintes arquivos na pasta:
- documento1_123.pdf
- documento2_123.pdf
- documento3_123.pdf

Se você executar o script e escolher a opção 1(PDF) e digitar 4, os arquivos serão renomeados para:
- documento1.pdf
- documento2.pdf
- documento3.pdf
 
Se você executar o script e escolher a opção 1(PDF) e digitar 1, os arquivos serão renomeados para:
- documento1_12.pdf
- documento2_12.pdf
- documento3_12.pdf

E assim por diante.

<img width="600" alt="portfolio_view" src="https://raw.githubusercontent.com/DanielSvoboda/batman/main/image1.png">
</details>

<details>
   <summary>Adicionar Texto ao Final</summary>
Este é um script em lote do Windows que permite ao usuário adicionar um texto ao final do nome de arquivos com uma extensão específica. O script apresenta um menu com três opções: PDF, TXT e OUTRO. Se o usuário escolher PDF ou TXT, o script solicitará que o usuário digite o texto a ser adicionado ao final dos nomes dos arquivos com a extensão escolhida (PDF ou TXT). Se o usuário escolher OUTRO, o script solicitará que o usuário digite a extensão desejada e o texto a ser adicionado ao final dos nomes dos arquivos com essa extensão.

O script então renomeia todos os arquivos com a extensão escolhida no diretório atual, adicionando o texto especificado pelo usuário ao final do nome de cada arquivo. Por fim, o script informa ao usuário quantos arquivos foram renomeados e solicita que o usuário pressione ENTER para sair.

[Download do script](https://github.com/DanielSvoboda/batman/raw/main/Adicionar_Texto_ao_Final.bat)
## Como usar

- Para baixar o script, [acesso o link](https://github.com/DanielSvoboda/batman/raw/main/Adicionar_Texto_ao_Final.bat) e depois click com botão direito e aperte em Salvar como.
- Salve-o na pasta onde estão os arquivos que você quer renomear.
- Execute o script e escolha uma opção: 1 para PDF, 2 para TXT ou 3 para outra extensão.
- Digite o texto a ser adicionado ao final dos nomes dos arquivos.
- Aguarde a confirmação de que os arquivos foram renomeados.

## Exemplo

Suponha que você tenha os seguintes arquivos na pasta:
- documento1.pdf
- documento2.pdf
- documento3.pdf

Se você executar o script e escolher a opção 1(PDF) e digitar _OK , os arquivos serão renomeados para:
- documento1_OK.pdf
- documento2_OK.pdf
- documento3_OK.pdf
 
 <img width="600" alt="portfolio_view" src="https://raw.githubusercontent.com/DanielSvoboda/batman/main/image2.png">
</details>


## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.
