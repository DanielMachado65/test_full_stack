# Teste Ruby On Rails Social Wave

### Descrção da aplicação
A aplicação tem como objetivo a criação e venda de ingressos, e deve utilizar as seguintes tecnologias :
* [Ruby On Rails](http://api.rubyonrails.org/)
* [Html, Css](https://www.w3schools.com/)

### Requisitos da aplicação
A aplicação deve permitir a criação, atualização, exclusão e visualização utilizando os padrões
estabelecidos pelo framework Ruby On Rails.

* Os dados devem ser persistidos em um banco de dados Open Source.

* Um comprador deve poder comprar ingressos.

* Todos os campos dos ingressos e do pedido são necessários.

* Devem ser listados para venda somente os ingressos que tiverem data >= a data atual.

### Objetos da Aplicação

A aplicação deverá conter os seguintes objetos:
* Ingresso
  * Preço(float)
  * Nome(string)
  * Taxa(float)
  * Data(datetime)
* Comprador
  * Nome(string)
  * Email(string)
  * Telefone(float)
* Pedido
  * * Comprador
  * Ingresso
  * pago(boolean)

### Coisas que queremos ver

* Código limpo e legível
* Utilização das funcionalidades e geradores do Rails
* Projeto que respeite a arquitetura do Rails

### Diferenciais

* Telas bonitas(utilizando bootstrap, preferencialmente)
* Validações Inteligentes
* Utilização correta do ActiveModel
* Versionamento GIT
* Novas Funcionalidades

### Considerações
Para a conclusão do teste deverá ser enviado um link para o repositório GIT público para o email: jian@socialwave.com.br.


```
rails g scaffold Comprador nome:string telefone:string admin:boolean
rails g scaffold Ingresso preco:float nome:string taxa:float data:datetime
rails g scaffold Pedido comprador:references ingresso:references pago:boolean

rails g devise:install
rails g devise Comprador


rails g cancan:ability
```
