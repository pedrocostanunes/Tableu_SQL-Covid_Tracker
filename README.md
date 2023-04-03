# COVID-19 Tracker | SQL Queries e Tableau Dashboard

Olá! 

Bem-vinde a este projeto de portfólio que engloba queries em SQL para a montagem de dashboard no tableau. O objetivo do projeto foi montar um data viz sobre o número e a % de infectados por COVID-19 no mundo até março de 2023. O dataset utilizado foi o [Our World in Data COVID-19 dataset](https://ourworldindata.org/covid-deaths), que contempla dados atualizados de casos e óbitos por COVID-19 em todo o mundo. 

Dividi este trabalho em duas etapas, sendo a primeira a exploração de dados por **SQL** queries. E a segunda, uma montagem de dashboard no **Tableau** Public importando os dados das queries e transformando-as em gráficos para vizualização.

## 1. SQL
Utilizei o Microsoft SQL Server para consultar os dados. Importando o dataset para a database "COVID" criada para simular uma base de dados real de SQL. Separei dois arquivos para representar um pouco do trabalho que foi feito nesta etapa:

- [[SQL] queries_dashboard.sql](https://github.com/pedrocostanunes/Tableu_SQL-Covid_Tracker/blob/main/%5BSQL%5D%20queries_dashboard.sql) Aqui estão as consultas que selecionam os dados que vão constitutir os gráficos no Tableau.
- [[SQL] queries_insights.sql](https://github.com/pedrocostanunes/Tableu_SQL-Covid_Tracker/blob/main/%5BSQL%5D%20queries_insights.sql) Aqui estão algumas consultas que fiz por curiosidade enquanto explorava o dataset (estas não foram para o dashboard).

## 2. Tableau
Conforme explicado na introdução deste README, utilizei o Tableau Public para criar um painel que explicite o número de casos de COVID-19 no mundo em comparação com a população mundial. Mostrando que quase 10% das pessoas do mundo foram infectadas pelo coronavírus. Para visualizar o dashboard, **você pode [clicar aqui](https://public.tableau.com/shared/22KNBQGHY?:display_count=n&:origin=viz_share_link)**, ou utilizar as opções de arquivos que estão neste repositório:

- [[Tableau] Dashboard_Covid.html](https://github.com/pedrocostanunes/Tableu_SQL-Covid_Tracker/blob/main/%5BTableau%5D%20Dashboard_Covid.html) Como o Tableau Public não permite salvar os arquivos, criei este .html que você pode baixar no seu PC e vizualizar o Dashboard em seu navegador.
- [[Tableau] Preview_Dashboard.png](https://github.com/pedrocostanunes/Tableu_SQL-Covid_Tracker/blob/main/%5BTableau%5D%20Preview_Dashboard.png) Opção de preview do Dashboard (imagem estática) para quem tem pressa e pouco tempo a perder.


## Tecnologias Utilizadas neste Projeto

- [Tableau Public](https://www.tableau.com/pt-br/community/public)
- [Microsoft SQL Server](https://www.microsoft.com/pt-br/sql-server/sql-server-2019)
- [Visual Studio Code](https://code.visualstudio.com/)

Vale ressaltar: gosto muito de feedbacks e insights de como posso melhorar meus projetos. Vou ficar muito feliz em receber suas observações e colaborações! Fique à vontade para me contatar em caso de dúvidas ou sugestões.

No mais, divirta-se e boa leitura! 😊
