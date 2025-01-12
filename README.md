# Supermercado-DB

Um sistema de gerenciamento de banco de dados para um supermercado, utilizando SQL Server. Este projeto inclui a criação de tabelas, inserção de dados, stored procedures e views para facilitar a consulta e o gerenciamento dos dados.

## Tabelas

O banco de dados inclui as seguintes tabelas:
- **Categorias**: Contém as categorias dos produtos.
- **Produtos**: Contém informações sobre os produtos.
- **Clientes**: Contém informações sobre os clientes.
- **Vendas**: Contém registros das vendas realizadas.
- **Itens_de_Venda**: Contém os itens individuais de cada venda.
- **Fornecedores**: Contém informações sobre os fornecedores.
- **Compras**: Contém registros das compras feitas junto aos fornecedores.
- **Itens_de_Compra**: Contém os itens individuais de cada compra.

## Scripts SQL

Os scripts SQL estão organizados nos seguintes arquivos:
- `create_tables.sql`: Criação das tabelas.
- `insert_data.sql`: Inserção de dados iniciais.
- `stored_procedures.sql`: Definição das stored procedures.
- `views.sql`: Definição das views.

## Stored Procedures

O projeto inclui várias stored procedures para facilitar a execução de consultas. Algumas delas são:
- `ConsultarTodosProdutos`: Consulta todos os produtos.
- `ConsultarTodosClientes`: Consulta todos os clientes.
- `ConsultarTodasVendas`: Consulta todas as vendas.
- `ConsultarTodosFornecedores`: Consulta todos os fornecedores.
- `ConsultarTodasCompras`: Consulta todas as compras.
- `ConsultarProdutosBaixaQuantidade`: Consulta produtos com baixa quantidade em estoque.
- `ConsultarVendasPeriodo`: Consulta vendas realizadas em um determinado período.
- `ConsultarProdutosMaisVendidos`: Consulta produtos mais vendidos.
- `ConsultarTotalVendasPorCliente`: Consulta o total de vendas por cliente.
- `ConsultarTotalComprasPorFornecedor`: Consulta o total de compras por fornecedor.
- `ConsultarLucroTotal`: Consulta o lucro total (vendas - compras).
- `ConsultarHistoricoComprasCliente`: Consulta o histórico de compras de um determinado cliente.
- `ConsultarProdutosPorCategoria`: Consulta produtos por categoria.
- `ConsultarEstoqueAtual`: Consulta o estoque atual de cada produto.
- `ConsultarFornecedoresProduto`: Consulta fornecedores de um determinado produto.

## Views

O projeto também inclui várias views para facilitar a consulta aos dados. Algumas delas são:
- `vw_TodosProdutos`: Consulta todos os produtos.
- `vw_TodosClientes`: Consulta todos os clientes.
- `vw_TodasVendas`: Consulta todas as vendas.
- `vw_TodosFornecedores`: Consulta todos os fornecedores.
- `vw_TodasCompras`: Consulta todas as compras.
- `vw_ProdutosBaixaQuantidade`: Consulta produtos com baixa quantidade em estoque.
- `vw_VendasPeriodo`: Consulta vendas realizadas em um determinado período.
- `vw_ProdutosMaisVendidos`: Consulta produtos mais vendidos.
- `vw_TotalVendasPorCliente`: Consulta o total de vendas por cliente.
- `vw_TotalComprasPorFornecedor`: Consulta o total de compras por fornecedor.
- `vw_LucroTotal`: Consulta o lucro total (vendas - compras).
- `vw_HistoricoComprasCliente`: Consulta o histórico de compras de um cliente.
- `vw_ProdutosPorCategoria`: Consulta produtos por categoria.
- `vw_EstoqueAtual`: Consulta o estoque atual de cada produto.
- `vw_FornecedoresProduto`: Consulta fornecedores de um determinado produto.

## Como usar

1. **Criação do Banco de Dados**: Execute o script `create_tables.sql` para criar as tabelas no seu banco de dados SQL Server.
2. **Inserção de Dados**: Execute o script `insert_data.sql` para inserir os dados iniciais nas tabelas.
3. **Stored Procedures**: Execute o script `stored_procedures.sql` para criar as stored procedures.
4. **Views**: Execute o script `views.sql` para criar as views.

## Contribuição

Contribuições são bem-vindas! Se você tiver sugestões de melhorias ou novas funcionalidades, sinta-se à vontade para criar um pull request.

## Licença

Este projeto está licenciado sob os termos da licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

Se precisar de mais alguma coisa ou tiver outras dúvidas, estou aqui para ajudar!
