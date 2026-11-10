# Banco de Dados de Restaurante

Projeto SQL para modelar a operação básica de um restaurante, incluindo clientes, cardápio, pedidos, itens consumidos, garçons e formas de pagamento.

## Funcionalidades

| Funcionalidade | Implementação |
|---|---|
| Cadastro de clientes | Tabela `cliente` com CPF, nome, nascimento, e-mail e telefone. |
| Organização do cardápio | Tabelas `categoria` e `cardapio`, relacionadas por chave estrangeira. |
| Registro de vendas | Tabela `pedido` relaciona cliente e forma de pagamento e armazena data, total e número de pessoas. |
| Detalhamento dos pedidos | Tabela `itemPedido` registra quantidade, valores, garçom e item do cardápio; seus itens são removidos em cascata quando o pedido é excluído. |
| Dados de exemplo | `Insercoes.sql` inclui registros para as tabelas do modelo. |

## Sobre a organização do código

O modelo está separado em tabelas que representam entidades distintas do restaurante. As chaves estrangeiras conectam os dados relacionados, como categorias e itens do cardápio ou pedidos e clientes. O detalhamento de cada venda fica em `itemPedido`, permitindo que um pedido tenha vários itens e associando cada item ao garçom responsável.

O projeto divide a definição do esquema (`DbRestaurante.sql`), a carga de dados (`Insercoes.sql`) e consultas (`Consultas.sql`) em arquivos próprios. O arquivo de consultas está vazio no estado atual.

## Modelagem relacional e integridade referencial

As tabelas usam chaves primárias auto incrementais e chaves estrangeiras para representar os relacionamentos. Em `itemPedido`, a exclusão do pedido relacionado remove seus itens automaticamente (`ON DELETE CASCADE`). As demais referências não definem ações de exclusão específicas.

## Aprendizados aplicados

- Criação de bancos de dados e tabelas com SQL.
- Definição de chaves primárias e campos auto incrementais.
- Uso de chaves estrangeiras para relacionar entidades.
- Uso de tipos de dados para textos, datas, valores monetários e quantidades.
- Inserção de múltiplos registros com `INSERT INTO`.
- Aplicação de exclusão em cascata em uma relação de dependência.

## Como executar

Os scripts usam sintaxe compatível com MySQL. Execute primeiro `DbRestaurante.sql` e depois `Insercoes.sql`. Há uma divergência no nome do banco: o primeiro arquivo cria e seleciona `restaurante`, enquanto `Insercoes.sql` seleciona `bdrestaurante`. Para executar a carga sem ajustes, crie também o banco `bdrestaurante` antes de rodar `Insercoes.sql`; alternativamente, padronize o nome nos arquivos. `Consultas.sql` ainda não contém comandos.
