# Desafio RD - Automação Web

Cenários de teste para automação da página [OpenSource-OrangeHRM](https://opensource-demo.orangehrmlive.com/web/index.php/auth/login)  
A documentação deste projeto foi feita considerando que quem for rodá-lo está ciente de como preparar o ambiente, bastando informar os pré-requisitos.
Os testes rodam somente no navegador Google Chrome.


### Pré-requisitos:

- GIT: https://git-scm.com/download/win
- Ruby: https://rubyinstaller.org/


### Instalação - Passo a Passo:

Preparado o ambiente com os pré-requisitos, clone o repositório deste projeto.  
Execute o comando para instalar as Gems do projeto com ``bundler install``  


### Iniciando os Cenários
Existem quatro perfis diferentes dentro do arquivo ``.config/cucumber.yml`` para rodar os cenários:  

| Perfil                    | Descrição                                                                             |
| --------------------------| -------------------------------------------------                                     |
| default                   | Todos os cenários são executados mas sem report no final                              |
| e2e                       | Todos os cenários são executados e gera report no final                               |
| login                     | Somente cenários da feature Login serão executados. Gera report no final              |
| user_management           | Somente cenários da feature UserManagement serão executados. Gera report no final     |

E para rodar um perfil basta rodar o comando abaixo com o nome do perfil que deseja
Exemplo:
````bash
cucumber -p e2e
````

Também é possível rodar somente um cenário específo através da tag dada a ele
````bash
cucumber -t @login_sucesso
````
 
##
#### Gems utilizadas

* [Cucumber](https://github.com/cucumber/cucumber-ruby#cucumber) - BDD com suporte ao Ruby
* [Cabybara](https://github.com/teamcapybara/capybara#capybara) - Framework Web-Based para automação de teste
* [Selenium-Webdriver](https://www.selenium.dev/documentation/) - Suporte para automação Web
* [Site-Prism](https://github.com/site-prism/site_prism#siteprism) - Modelo de Page Object em DSL (Domain Specific Language) para Capybara
* [RSpec](https://github.com/rspec/rspec-rails#rspec-rails--) - Framework de teste por comportamento e Asserções