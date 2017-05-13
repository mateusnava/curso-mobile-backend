# Curso de desenvolvimento Mobile com Ionic

Curso de desenvolvimento mobile ministrado para acadêmicos do curso de computação da URI - Campus Erechim.


## Serviços

POST /registers - Cria um novo registro
```javascript
{
  {
  	"register": {
  		"nome": "Nome da Pessoa",
  		"telefone": "54xxxxxxxxx",
  		"tipo": "Cachorro",
  		"caracteristicas": "Porte Grande, Pelo curto, Cor preta",
  		"latitude": "38.775594038",
  		"longitude": "-9.13536709",
  		"foto":"<JPG BASE64>"
  	}
  }
}
```

GET /registers - Listagem dos registros
