<div align="center"><h1> MySQL One For All</h1></div>

## Projeto de avaliação feito durante o curso da Trybe, buscando colocar em prática:
Neste projeto, verificamos se voce é capaz de:

  * Modelar um banco de dados

  * Identificar entidades , atributos e relacionamentos
  
  * Aplicar a 1ª, 2ª e 3ª Forma Normal

  * Criar tabelas
  
  * Lidar com VIEWs

  * Alterar tabelas existentes

  * Criar reações dinâmicas com TRIGGERS


## Esse projeto foi submetido a testes de 11 requisitos, atingindo 100% dos que foi proposto:

## Desafio 1

* Crie um banco com o nome de **`SpotifyClone`**.

* Providencie as queries necessárias para criar tabelas normalizadas que atendam aos requisitos descritos na seção anterior;

* Providencie as queries necessárias para popular as tabelas de acordo com os dados listados na seção anterior;

* Crie um arquivo de configurações `desafio1.json`, que mapeará em qual tabela e coluna se encontram as informações necessárias para a avaliação automatizada deste desafio. As configurações devem possuir o seguinte formato:

```json
{
  "coluna_usuario": "nome-da-coluna",
  "tabela_que_contem_usuario": "nome-da-tabela-que-armazena-a-coluna",
  "coluna_plano": "nome-da-coluna",
  "tabela_que_contem_plano": "nome-da-tabela-que-armazena-a-coluna",
  "coluna_historico_de_reproducoes": "nome-da-coluna",
  "tabela_que_contem_historico_de_reproducoes": "nome-da-tabela-que-armazena-a-coluna",
  "coluna_seguindo_artistas": "nome-da-coluna",
  "tabela_que_contem_seguindo_artistas": "nome-da-tabela-que-armazena-a-coluna",
  "coluna_artista": "nome-da-coluna",
  "tabela_que_contem_artista": "nome-da-tabela-que-armazena-a-coluna",
  "coluna_album": "nome-da-coluna",
  "tabela_que_contem_album": "nome-da-tabela-que-armazena-a-coluna",
  "coluna_cancoes": "nome-da-coluna",
  "tabela_que_contem_cancoes": "nome-da-tabela-que-armazena-a-coluna"
}
```

Essa configuração deve ser feita baseada no seu banco de dados **após a normalização**. Ou seja, se você criou uma tabela chamada `users` que possui a coluna `name`, você substituiria `"coluna_usuario"` e `"tabela_que_contem_usuario"` da seguinte forma:

```json
{
  "coluna_usuario": "name",
  "tabela_que_contem_usuario": "users",
  ...
}
```

* Salve as queries criadas no arquivo `desafio1.sql`. Seu código deverá ser similar ao seguinte:

```sql
DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE tabela1(
    coluna1 tipo restricoes,
    coluna2 tipo restricoes,
    colunaN tipo restricoes,
) engine = InnoDB;

CREATE TABLE tabela2(
    coluna1 tipo restricoes,
    coluna2 tipo restricoes,
    colunaN tipo restricoes,
) engine = InnoDB;

INSERT INTO tabela1 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados A'),
  ('exemplo de dados 2', 'exemplo de dados B'),
  ('exemplo de dados 3', 'exemplo de dados C');

INSERT INTO tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');
```

O que será verificado:

- Será validado se os planos estão na tabela normalizada.

- Será validado se o histórico de reprodução está na tabela normalizada.

- Será validado se as informações sobre pessoas seguindo artistas estão na tabela normalizada.

- Será validado se os álbuns estão na tabela normalizada.

- Será validado se os canções estão na tabela normalizada.

- Será validado se as informações sobre pessoas usuárias estão na tabela normalizada.

- Será validado se as informações sobre pessoas artistas estão na tabela normalizada.

⚠️ Note que uma vez executado um teste, a sua base de dados `SpotifyClone` **será dropada**. Logo, **se atente** a salvar seu progresso nos arquivos de desafio! ⚠️

---

## Desafio 2

Crie uma `VIEW` chamada `estatisticas_musicais` que exiba três colunas:

1. A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "**cancoes**".

2. A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "**artistas**".

3. A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "**albuns**".

Sua `VIEW` deve retornar a seguinte informação ao ser consultada:

![Estatísticas musicais](./images/estatisticas_musicais.png)

O que será verificado:

- Será validado se existe uma `VIEW` chamada `estatisticas_musicais` que exibe os dados corretos nas colunas **cancoes**, **artistas** e **albuns**".

---

## Desafio 3

Crie uma `VIEW` chamada `historico_reproducao_usuarios`. Essa `VIEW` deverá ter apenas duas colunas:

1. A primeira coluna deve possuir o alias "**usuario**" e exibir o nome da pessoa usuária.

2. A segunda coluna deve possuir o alias "**nome**" e exibir o nome da canção ouvida pela pessoa com base no seu histórico de reprodução.

Os resultados devem estar ordenados por nome da pessoa usuária em ordem alfabética e em caso de empate no nome os resultados devem ser ordenados pelo nome da canção em ordem alfabética.

Sua `VIEW` deve retornar a seguinte informação, ao ser consultada:

![Histórico de reprodução das pessoas usuárias](./images/HistoricoReproducaoUsuarios.png)

O que será verificado:

- Será validado se existe uma `VIEW` chamada `historico_reproducao_usuarios` que exibe os dados corretos nas colunas **usuario** e **nome**".

- Será validado se as colunas estão ordenadas de forma correta.

---

## Desafio 4

Crie uma `VIEW` com o nome `top_3_artistas` que deve mostrar somente as três pessoas artistas mais populares no banco `SpotifyClone`, possuindo as seguintes colunas:

1. A primeira coluna deve possuir o alias "**artista**" e exibir o nome da pessoa artista.

2. A segunda coluna deve ter o alias "**seguidores**" e exibir a quantidade de pessoas que estão seguindo aquela pessoa artista.

Seu resultado deve estar ordenado em ordem decrescente, baseando-se na quantidade de seguidores. Em caso de empate, ordene os resultados pelo nome da pessoa artista em ordem alfabética.

Sua `VIEW` deve retornar a seguinte informação, ao ser consultada:

![Top 3 artistas](./images/top_3_artistas.png)

O que será verificado:

- Será validado se existe uma `VIEW` chamada `top_3_artistas` que exibe os dados corretos nas colunas **artista** e **seguidores**".

- Será validado se as colunas estão ordenadas de forma correta.

---

## Desafio 5

Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma `VIEW` chamada `top_2_hits_do_momento` que possua duas colunas:

1. A primeira coluna deve possuir o alias "**cancao**" e exibir o nome da canção.

2. A segunda coluna deve possuir o alias "**reproducoes**" e exibir a quantidade de pessoas que já escutaram a canção em questão.

Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

Sua `VIEW` deve retornar a seguinte informação, ao ser consultada:

![Top 2 hits do momento](./images/top_2_hits_do_momento.png)


O que será verificado:

- Será validado se existe uma `VIEW` chamada `top_2_hits_do_momento`, que exibe os dados corretos nas colunas **cancao** e **reproducoes**".

- Será validado se as colunas estão ordenadas de forma correta.

---

## Desafio 6

Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma `VIEW` chamada `faturamento_atual` que deve exibir quatro dados:

1. A primeira coluna deve ter o alias "**faturamento_minimo**" e exibir o menor valor de plano existente para uma pessoa usuária.

2. A segunda coluna deve ter o alias "**faturamento_maximo**" e exibir o maior valor de plano existente para uma pessoa usuária.

3. A terceira coluna deve ter o alias "**faturamento_medio**" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.

4. Por fim, a quarta coluna deve ter o alias "**faturamento_total**" e exibir o valor total obtido com os planos possuídos por pessuas usuárias.

Para cada um desses dados, por se tratarem de valores monetários, deve-se arredondar o faturamento usando apenas duas casas decimais.

Sua `VIEW` deve retornar a seguinte informação, ao ser consultada:

![Faturamento atual](./images/faturamento_atual.png)

O que será verificado:

- Será validado se existe uma `VIEW` chamada `faturamento_atual`, que exibe os dados corretos nas colunas **faturamento_minimo**, **faturamento_maximo**, **faturamento_medio** e **faturamento_total**.

---

## Desafio 7

Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma `VIEW` chamada `perfil_artistas`, com as seguintes colunas:

1. A primeira coluna deve exibir o nome da pessoa artista, com o alias "**artista**".

2. A segunda coluna deve exibir o nome do álbum, com o alias "**album**".

3. A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "**seguidores**".

Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso há artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente.

Sua `VIEW` deve retornar a seguinte informação, ao ser consultada:

![PerfilArtistas](./images/perfil_artistas.png)

O que será verificado:

- Será validado se existe uma `VIEW` chamada `perfil_artistas`, que exibe os dados corretos nas colunas **artista**, **album** e **seguidores**.

- Será validado se as colunas estão ordenadas de forma correta.

---

## Desafio 8

Crie uma trigger chamada `trigger_usuario_delete` que deve ser disparada sempre que uma pessoa usuária for excluída do banco de dados, refletindo essa exclusão em todas as tabelas que ela estiver.

Teste a funcionalidade correta de sua trigger, fazendo a exclusão da usuária `"Thati"`.

O que será verificado:

- Será validado se ao excluir uma pessoa usuária do banco de dados a `trigger_usuario_delete` é ativada e a ação de exclusão reflete em todas as tabelas em que esta pessoa está presente.

---

## Desafio 9

Crie uma procedure chamada `albuns_do_artista` que recebe como parâmetro o nome de uma pessoa artista e em retorno deve exibir as seguintes colunas:

1. O nome da pessoa artista, com o alias "**artista**".

2. O nome do álbum, com o alias "**album**".

Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

Confirme a execução correta da procedure, chamando-a e passando o nome igual a `"Walter Phoenix"`. Sua procedure deve retornar o mesmo que o resultado abaixo:

`CALL albuns_do_artista('Walter Phoenix');`

![Álbuns da pessoa artista](./images/AlbunsDoArtista.png)

O que será verificado:

- Será validado se a procedure `albuns_do_artista` retorna a coluna **artista** contendo o nome da pessoa artista e a coluna **album** contendo o nome do album.

- Será validado se as colunas estão ordenadas de forma correta.

---

## Desafio 10

Crie uma function chamada de `quantidade_musicas_no_historico` que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária. Ao receber o código identificador da pessoa, exiba a quantidade de canções em seu histórico de reprodução.

Confirme a execução correta da function, chamando-a e passando o id para a pessoa usuária com o nome igual a `"Bill"`. Sua function deve retornar o mesmo que o resultado abaixo:

![Quantidade de músicas no histórico](./images/quantidade_musicas_no_historico.png)


O que será verificado:

- Será validado se a function `quantidade_musicas_no_historico`, ao receber o código identificador de uma pessoa usuária, retorna a quantidade correta de canções presentes no histórico de reprodução desta pessoa.

---

## Desafio 11

Crie uma `VIEW` chamada `cancoes_premium` que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano familiar ou universitário, de acordo com os detalhes a seguir:

* A primeira coluna deve exibir o nome da canção, com o alias "**nome**";

* A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "**reproducoes**";

* Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.

Sua `VIEW` deve retornar a seguinte informação, ao ser consultada:

![Canções premium](./images/cancoes_premium.png)

O que será verificado:

- Será validado se existe uma `VIEW` chamada `cancoes_premium`, que exibe os dados corretos nas colunas **nome** e **reproducoes**.

- Será validado se as colunas estão ordenadas de forma correta.

---

## Testes:

Algumas coisas devem seguir um padrão pré-estabelecido para que os testes de correção funcionem adequadamente:

1. Ao modelar o banco de dados no [desafio 1](#desafio-1):

  * Quando for preciso que uma `coluna_a` referencie uma coluna `coluna_b` em outra tabela, é **necessário** que na `coluna_a` haja restrição de foreign key e que `coluna_b` seja uma primary key;

  * Quando for necessário fazer uso do relacionamento muitos para muitos (`N..N`), a tabela criada para modelar esse tipo de relacionamento **precisa** ter sua chave primária composta por suas foreign keys.

2. **Todos** os desafios que pedirem para criar uma view **devem** possuir no seu arquivo `.sql` correspondente **somente** a query para a criação da view.

3. Para executar localmente os testes, é preciso escrever o seguinte no seu terminal:
    ```sh
    MYSQL_USER=<SEU_NOME_DE_PESSOA_USUARIA> MYSQL_PASSWORD=<SUA SENHA> HOSTNAME=<NOME_DO_HOST> npm test
    ```

  * Ou seja, suponha que para poder acessar a base de dados feita neste projeto você tenha `root` como seu nome de pessoa usuária, `password` como senha e `localhost` como host. Logo, você executaria:
    ```sh
    MYSQL_USER=root MYSQL_PASSWORD=password HOSTNAME=localhost npm test
    ```

  * Usando o exemplo anterior de base, suponha que você não tenha setado uma senha para `root`. Neste caso, você executaria:
    ```sh
    MYSQL_USER=root MYSQL_PASSWORD= HOSTNAME=localhost npm test
    ```
---