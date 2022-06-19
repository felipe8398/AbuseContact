# AbuseContact
Localiza informações de contatos via whois Microsoft


# OBJETIVO: #

- Localizar informações de contatos via whois

# Como executar

Buscando informações de Dominios/IPs via whois da Microsoft

Necessário ajustar os dominios que voce quer buscar conforme arquivo exemplo domains.csv e informar um arquivo HTML para que seja gerado os resultados

Execução:
.\AbuseContact.ps1 -dominios domains.csv -resultado teste.html

![Captura de tela de 2022-06-18 22-37-52](https://user-images.githubusercontent.com/24979677/174462309-47986489-9f90-465e-acae-10722a24e5d7.png)

Exemplo:

domains.csv

![Captura de tela de 2022-06-18 22-52-14](https://user-images.githubusercontent.com/24979677/174462641-50cb837e-26b8-44ea-83c4-0fe73ca7ee5f.png)


teste.html

![Captura de tela de 2022-06-18 22-52-04](https://user-images.githubusercontent.com/24979677/174462646-30af2cf2-eda3-48d8-b405-dd603c4862e9.png)

# Observação  
Script foi testado somente no Windows Server 2012 R2 Datacenter  

Ideias e melhorias são bem vindas
