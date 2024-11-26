## Introdução

Sejam bem vindos ao meu estudo sobre Terraform.

```
<block> <parameters> {
    key1 = value1
    key2 = value2
}
```

O bloco foi nomeado como resource, de acordo com o exemplo abaixo. Após isso, vem o tipo de resource, que é "aws_instance", onde "aws" é o provedor e "instance" é o recurso. Em seguida, vem o nome do resource, que, no nosso caso, é "web". Por fim, aparecem os argumentos com chave e valor.

Observação: Os argumentos são especificos do resource que estou usando de exemplo, no caso aws_instance. 

```
resource "aws_instance" "web" {
  ami           = "ami-a1b2c3d4"
  instance_type = "t2.micro"
}
```
Ir para: [Commands Terraform](commands.md)
