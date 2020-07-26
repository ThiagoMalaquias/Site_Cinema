-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Fev-2019 às 20:23
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdhome`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacos`
--

CREATE TABLE `avaliacos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `qnt_estrela` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `avaliacos`
--

INSERT INTO `avaliacos` (`id`, `nome`, `qnt_estrela`, `created`, `modified`) VALUES
(1, 'vida vlad', 3, '2017-08-28 22:35:17', NULL),
(2, 'vida vlad', 5, '2017-08-28 22:35:35', NULL),
(3, 'Vida Vladi', 4, '2019-02-02 14:00:10', NULL),
(4, 'teste', 3, '2019-02-03 00:04:19', NULL),
(5, 'teste', 3, '2019-02-03 15:42:19', NULL),
(6, 'teste', 1, '2019-02-03 21:46:42', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcategoria`
--

CREATE TABLE `tbcategoria` (
  `idCategoria` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbcategoria`
--

INSERT INTO `tbcategoria` (`idCategoria`, `categoria`) VALUES
(1, 'Terror'),
(2, 'Suspense'),
(3, 'Ação'),
(4, 'Romance'),
(5, 'Drama'),
(6, 'Musicais'),
(7, 'Comédia'),
(8, 'Aventura'),
(9, 'Documentario'),
(10, 'Nacionais'),
(11, 'Lançamentos'),
(13, 'Vintage'),
(14, 'Classicos'),
(16, 'Baseados em Fatos Reais');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbclassificacao`
--

CREATE TABLE `tbclassificacao` (
  `idClassificacao` int(11) NOT NULL,
  `classificacao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbclassificacao`
--

INSERT INTO `tbclassificacao` (`idClassificacao`, `classificacao`) VALUES
(1, 'L'),
(2, '12 anos'),
(3, '14 anos'),
(4, '16 anos'),
(5, '18 anos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcomentario`
--

CREATE TABLE `tbcomentario` (
  `idComentario` int(11) NOT NULL,
  `nomeUsuario` varchar(35) NOT NULL,
  `emailUsuario` varchar(50) NOT NULL,
  `temaComentario` varchar(100) NOT NULL,
  `Comentario` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbcomentario`
--

INSERT INTO `tbcomentario` (`idComentario`, `nomeUsuario`, `emailUsuario`, `temaComentario`, `Comentario`) VALUES
(1, 'Thiago', 'tammalaquias@gmail.com', 'Pedido de Filmes', 'Gostaria de um filme que nn ...'),
(2, 'Uma Odiséia No Espaço', 'tammalaquias@gmail.com', 'Pedido de Filmes', 'Gostaria de um filme que nn ...'),
(3, 'teste', 'teste@teste.com', 'Muito bom o site', ' Como esta bom esse site em. Parabens para a equipe de desenvolvedores.\r\n          '),
(4, 'teste', 'teste@teste.com', 'Muito bom o site', ' Como esta bom esse site em. Parabens para a equipe de desenvolvedores.\r\n          ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfilmes`
--

CREATE TABLE `tbfilmes` (
  `idFilmes` int(11) NOT NULL,
  `titFilme` varchar(50) DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `diretor` varchar(40) DEFAULT NULL,
  `duracao` int(11) DEFAULT NULL,
  `idclassificacao` int(11) DEFAULT NULL,
  `sinopse` varchar(1000) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `idcategoria2` int(11) DEFAULT NULL,
  `idcategoria3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbfilmes`
--

INSERT INTO `tbfilmes` (`idFilmes`, `titFilme`, `idcategoria`, `ano`, `diretor`, `duracao`, `idclassificacao`, `sinopse`, `img`, `idcategoria2`, `idcategoria3`) VALUES
(1, '2001 - Uma Odiséia No Espaço', 3, 1986, 'Stanley Kubrick', 141, 1, 'Desde a \"Aurora do Homem\" (a pré-história), um misterioso monolito negro parece emitir sinais de outra civilização interferindo no nosso planeta. Quatro milhões de anos depois, no século XXI, uma equipe de astronautas liderados pelo experiente David Bowman (Keir Dullea) e Frank Poole (Gary Lockwood) é enviada à Júpiter para investigar o enigmático monolito na nave Discovery, totalmente controlada pelo computador HAL 9000. Entretanto, no meio da viagem HAL entra em pane e tenta assumir o controle da nave, eliminando um a um os tripulantes.', 'Classicos/02.jpg', 14, NULL),
(2, 'Cidadão Kane', 5, 1941, 'Orson Welles', 119, 1, 'Dirigido por Orson Welles, o longa conta a ascensão de um mito da imprensa americana. De garoto pobre no interior a magnata de um império do jornalismo e da publicidade mundial. Inspirado na vida do milionário William Randolph Hearst.', 'Classicos/03.jpg', 14, NULL),
(3, 'Oito e Meio', 5, 1963, 'Federico Fellini', 138, 1, 'Prestes a rodar sua próxima obra, o cineasta Guido Anselmi (Marcello Mastroianni) ainda não tem ideia de como será o filme. Mergulhado em uma crise existencial e pressionado pelo produtor, pela mulher, pela amante e pelos amigos, ele se interna em uma estação de águas e passa a misturar o passado com o presente, ficção com realidade.', 'Classicos/04.jpg', 14, 14),
(4, 'Taxi Drive - Motorista de Taxi', 5, 1976, 'Martin Scorsese', 115, 1, 'Em Nova York, um homem de 26 anos (Robert De Niro), veterano da Guerra do Vietnã, é um solitário no meio da grande metrópole que ele vagueia noite adentro. Assim começa a trabalhar como motorista de taxi no turno da noite e nele vai crescendo um sentimento de revolta pela miséria, o vício, a violência e a prostituição que estão sempre à sua volta. Perde bastante noção das coisas quando leva uma bela mulher (Cybill Sheperd), que trabalha na campanha de um senador, para ver um filme pornô logo no primeiro encontro, mas tem momentos de altruísmo ao tentar persuadir uma prostituta de 12 anos (Jodie Foster) para ela largar seu cafetão, voltar para a casa de seus pais e ir para a escola. Porém, em contra-partida, compra quatro armas, sendo uma delas um Magnum 44, e articula um atentado contra o senador (que planeja ser presidente) e para quem sua amiga trabalha.', 'Classicos/05.jpg', 14, NULL),
(5, 'Apocalipse Now', 3, 1979, 'Francis Ford Coppola', 202, 1, 'O Capitão Willard (Martin Sheen) recebe a missão de encontrar e matar o comandante das Forças Especiais, Coronel Kurtz (Marlon Brando), que aparentemente enlouqueceu e se refugiou nas selvas do Camboja, onde comanda um exército de fanáticos.', 'Classicos/06.jpg', NULL, 14),
(6, 'Um Corpo Que Cai', 5, 1958, 'Alfred Hitchcock', 129, 1, 'Em São Francisco, o detetive aposentado John \"Scottie\" Ferguson (James Stewart) sofre de um terrível medo de alturas. Certo dia, encontra com um antigo conhecido, dos tempos de faculdade, que pede que ele siga sua esposa, Madeleine Elster (Kim Novak). John aceita a tarefa e fica encarregado da mulher, seguindo-a por toda a cidade. Ela demonstra uma estranha atração por lugares altos, levando o detetive a enfrentar seus piores medos. Ele começa a acreditar que a mulher é louca, com possíveis tendências suicidas, quando algo estranho acontece nesta missão.', 'Classicos/07.jpg', 2, 14),
(7, 'O Poderoso Chefão', 5, 1972, 'Francis Ford Coppola', 175, 1, 'Don Vito Corleone (Marlon Brando) é o chefe de uma \"família\" de Nova York que está feliz, pois Connie (Talia Shire), sua filha, se casou com Carlo (Gianni Russo). Porém, durante a festa, Bonasera (Salvatore Corsitto) é visto no escritório de Don Corleone pedindo \"justiça\", vingança na verdade contra membros de uma quadrilha, que espancaram barbaramente sua filha por ela ter se recusado a fazer sexo para preservar a honra. Vito discute, mas os argumentos de Bonasera o sensibilizam e ele promete que os homens, que maltrataram a filha de Bonasera não serão mortos, pois ela também não foi, mas serão severamente castigados. Vito porém deixa claro que ele pode chamar Bonasera algum dia para devolver o \"favor\". Do lado de fora, no meio da festa, está o terceiro filho de Vito, Michael (Al Pacino), um capitão da marinha muito decorado que há pouco voltou da 2ª Guerra Mundial. Universitário educado, sensível e perceptivo, ele quase não é notado pela maioria dos presentes, com exceção de uma namo', 'Classicos/08.jpg', NULL, 14),
(8, 'O Espelho', 1, 2014, 'Mike Flanagan', 100, 4, 'Tim (Brenton Thwaites) e Kaylie (Karen Gillan) são dois irmãos traumatizados pela morte inexplicada dos pais. Quando Tim sai de um hospital psiquiátrico, após anos internado, ele tem certeza de que a causa da tragédia familiar é um grande espelho que acompanha a família há séculos. Cercados por fenômenos paranormais, os dois tentam provar que o objeto é o verdadeiro responsável pela sangrenta história de seus ascendentes.', 'Classicos/09.jpg', NULL, 14),
(9, 'Ladrões de Bicicleta', 5, 1948, 'Vittorio De Sica', 93, 3, 'Em Roma um trabalhador de origem humilde, Antonio Ricci (Lamberto Maggiorani), luta para sustentar a família. Precisando de uma bicicleta para começar em um novo emprego, Ricci penhora as roupas de cama da casa. Para desespero da família, a bicicleta é roubada e Antonio sai junto com o filho Bruno (Enzo Staiola) para procurá-la pela cidade.', 'Classicos/10.jpg', NULL, 14),
(10, 'Guerra nas Estrelas', 8, 1978, 'George Lucas', 121, 1, 'Luke Skywalker (Mark Hammil) sonha ir para a Academia como seus amigos, mas se vê envolvido em uma guerra intergalática quando seu tio compra dois robôs e com eles encontra uma mensagem da princesa Leia Organa (Carrie Fisher) para o jedi Obi-Wan Kenobi (Alec Guiness) sobre os planos da construção da Estrela da Morte, uma gigantesca estação espacial com capacidade para destruir um planeta. Luke então se junta aos cavaleiros jedi e a Hans Solo (Harrison Ford), um mercenário, para tentar destruir esta terrível ameaça ao lado dos membros da resistência.', 'Classicos/11.jpg', 14, NULL),
(11, 'Pulp Fiction - Tempo de Violência', 2, 1995, 'Quentin Tarantino', 149, 1, 'Vincent Vega (John Travolta) e Jules Winnfield (Samuel L. Jackson) são dois assassinos profissionais trabalham fazendo cobranças para Marsellus Wallace (Ving Rhames), um poderosos gângster. Vega é forçado a sair com a garota do chefe, temendo passar dos limites; enquanto isso, o pugilista Butch Coolidge (Bruce Willis) se mete em apuros por ganhar luta que deveria perder.', 'Classicos/12.jpg', NULL, 14),
(12, 'Dançando no Escuro', 6, 2000, 'Lars von Trier', 139, 1, 'Selma Jezkova (Björk) é uma mãe-solteira tcheca que foi morar nos Estados Unidos. Ela tem uma doença hereditária que a faz perder a visão, algo que também deverá acontecer um dia a seu filho Gene (Vladan Kostig), um garoto de doze anos. Entretanto, em virtude de saber que existem médicos nos Estados Unidos que podem operar seu filho isto foi o suficiente para fazê-la imigrar para o país. Ela trabalha muito duro e guarda tudo o que ganha para a cirurgia do filho. Bill (David Morse) e Linda (Cara Seymour), seus vizinhos, juntamente com Kathy (Catherine Deneuve), uma colega de fábrica, a ajudam no que é possível, mas quando Bill se vê em dificuldades financeiras rouba o dinheiro que Selma tinha economizado duramente. Este roubo é o ponto de partida para trágicos acontecimentos.', 'Classicos/13.jpg', 7, 14),
(13, 'Senhor dos Anéis - A Sociedade do Anel', 8, 2002, 'Peter Jackson', 178, 1, 'Numa terra fantástica e única, chamada Terra-Média, um hobbit (seres de estatura entre 80 cm e 1,20 m, com pés peludos e bochechas um pouco avermelhadas) recebe de presente de seu tio o Um Anel, um anel mágico e maligno que precisa ser destruído antes que caia nas mãos do mal. Para isso o hobbit Frodo (Elijah Woods) terá um caminho árduo pela frente, onde encontrará perigo, medo e personagens bizarros. Ao seu lado para o cumprimento desta jornada aos poucos ele poderá contar com outros hobbits, um elfo, um anão, dois humanos e um mago, totalizando 9 pessoas que formarão a Sociedade do Anel.', 'Classicos/14.jpg', NULL, 14),
(14, 'Avatar', 8, 2009, 'James Cameron', 162, 1, 'Jake Sully (Sam Worthington) ficou paraplégico após um combate na Terra. Ele é selecionado para participar do programa Avatar em substituição ao seu irmão gêmeo, falecido. Jake viaja a Pandora, uma lua extraterrestre, onde encontra diversas e estranhas formas de vida. O local é também o lar dos NaVi, seres humanóides que, apesar de primitivos, possuem maior capacidade física que os humanos. Os NaVi têm três metros de altura, pele azulada e vivem em paz com a natureza de Pandora. Os humanos desejam explorar a lua, de forma a encontrar metais valiosos, o que faz com que os NaVi aperfeiçoem suas habilidades guerreiras. Como são incapazes de respirar o ar de Pandora, os humanos criam seres híbridos chamados de Avatar. Eles são controlados por seres humanos, através de uma tecnologia que permite que seus pensamentos sejam aplicados no corpo do Avatar. Desta forma Jake pode novamente voltar à ativa, com seu Avatar percorrendo as florestas de Pandora e liderando soldados. Até conhecer Neytiri', 'Classicos/15.jpg', NULL, 14),
(15, 'Os Incompreendidos', 5, 1961, 'François Truffaut', 93, 1, 'Antoine Doinel (Jean-Pierre Léaud) é o filho negligenciado de Gilberte Doinel (Claire Maurier), que parece ter tempo para tudo menos o bem-estar da criança. Julien Doinel (Albert Rémy) não é o pai biológico, mas cria o menino como se fosse seu filho. Gilberte está tendo um caso e não se surpreende quando, por acaso, Julien fica sabendo que Antoine não está indo à aula, pois ela sabia que na hora do colégio o filho a tinha visto com seu amante. A situação se agrava quando Antoine, para justificar sua ausência no colégio, \"mata\" a mãe. Quando seus pais aparecem na escola, a verdade é descoberta e Julien o esbofeteia na frente de seus colegas. Após isto ele foge de casa e arruma um lugar para dormir. Paralelamente seus pais culpam um ao outro pelo comportamento dele, após lerem a carta na qual ele se despede. No outro dia Antoine vai à escola normalmente. Lá sua mãe o encontra e se mostra preocupada por ele ter passado a noite em uma gráfica. Ela alegremente o aceita de volta, mas os prob', 'Classicos/16.jpg', 14, NULL),
(16, 'O Silêncio dos Inocentes', 2, 1991, 'Jonathan Demme', 118, 1, 'A agente do FBI, Clarice Starling (Jodie Foster) é ordenada a encontrar um assassino que arranca a pele de suas vítimas. Para entender como ele pensa, ela procura o periogoso psicopata, Hannibal Lecter (Anthony Hopkins), encarcerado sob a acusação de canibalismo.', 'Classicos/17.jpg', NULL, 14),
(17, 'Clube dos Cinco', 5, 1985, 'John Hughes', 97, 1, 'Em virtude de terem cometido pequenos delitos, cinco adolescentes são confinados no colégio em um sábado, com a tarefa de escrever uma redação de mil palavras sobre o que pensam de si mesmos. Apesar de serem pessoas completamente diferentes, enquanto o dia transcorre eles passam a aceitar uns aos outros, fazem várias confissões e tornam-se amigos.', 'Classicos/18.jpg', 7, 14),
(18, 'Clube da Luta', 2, 1999, 'David Fincher', 139, 1, 'Jack (Edward Norton) é um executivo jovem, trabalha como investigador de seguros, mora confortavelmente, mas ele está ficando cada vez mais insatisfeito com sua vida medíocre. Para piorar ele está enfrentando uma terrível crise de insônia, até que encontra uma cura inusitada para o sua falta de sono ao frequentar grupos de auto-ajuda. Nesses encontros ele passa a conviver com pessoas problemáticas como a viciada Marla Singer (Helena Bonham Carter) e a conhecer estranhos como Tyler Durden (Brad Pitt). Misterioso e cheio de ideias, Tyler apresenta para Jack um grupo secreto que se encontra para extravasar suas angústias e tensões através de violentos combates corporais.', 'Classicos/19.jpg', 5, 14),
(19, 'O Segredo de Brokeback Mountain', 4, 2006, 'Ang Lee', 134, 1, 'Jack Twist (Jake Gyllenhaal) e Ennie Del Mar (Heath Ledger) são dois jovens que se conhecem no verão de 1963, após serem contratados para cuidar das ovelhas de Joe Aguirre (Randy Quaid) em Brokeback Mountain. Jack deseja ser cowboy e está trabalhando no local pelo 2º ano seguido, enquanto que Ennie pretende se casar com Alma (Michelle Williams) tão logo o verão acabe. Vivendo isolados por semanas, eles se tornam cada vez mais amigos e iniciam um relacionamento amoroso. Ao término do verão cada um segue sua vida, mas o período vivido naquele verão irá marcar suas vidas para sempre.', 'Classicos/20.jpg', 5, 14),
(26, 'The Runaways - Garotas do Rock', 11, 2010, 'Floria Sigismondi', 106, 1, 'Los Angeles, 1975. Joan Jett (Kristen Stewart) tinha o sonho de montar uma banda de rock, formada apenas por mulheres. Ela encontra apoio em Cherrie Currie (Dakota Fanning), que integra a banda, e no empresário Kim Fowley (Michael Shannon). Com ele as integrantes da banda The Runaways levam uma vida desajustada e, apesar de apresentarem um som cru, alcançam o sucesso graças ao talento de Joan e o visual sensual de Cherie.', 'Fatos/01.jpg', NULL, 16),
(27, 'Marley e Eu', 7, 2008, ' David Frankel', 100, 1, 'John (Owen Wilson) e Jennifer Grogan (Jennifer Aniston) casaram-se recentemente e decidiram começar nova vida em West Palm Beach, na Flórida. Lá, eles trabalham em jornais concorrentes, compram um imóvel e enfrentam os desafios de uma vida de casal. Indeciso sobre sua capacidade em ser pai, John busca o conselho de seu colega Sebastian (Eric Dane), que sugere que compre um cachorro para a esposa. John aceita a sugestão e adota Marley, um labrador de 5 kg que logo se transforma em um grande cachorro de 45 kg, o que torna a casa deles um caos.', 'Fatos/02.jpg', NULL, 16),
(28, 'Amistad', 5, 1998, 'Steven Spielberg', 148, 1, 'Costa de Cuba, 1839. Dezenas de escravos negros se libertam das correntes e assumem o comando do navio negreiro La Amistad. Eles sonham retornar para a África, mas desconhecem navegação e se vêem obrigados a confiar em dois tripulantes sobreviventes, que os enganam e fazem com que, após dois meses, sejam capturados por um navio americano, quando desordenadamente navegaram até a costa de Connecticut. Os africanos são inicialmente julgados pelo assassinato da tripulação, mas o caso toma vulto e o presidente americano Martin Van Buren (Nigel Hawthorn), que sonha ser reeleito, tenta a condenação dos escravos, pois agradaria aos estados do sul e também fortaleceria os laços com a Espanha, pois a jovem Rainha Isabella II (Anna Paquin) alega que tanto os escravos quanto o navio são seus e devem ser devolvidos. Mas os abolicionistas vencem, e no entanto o governo apela e a causa chega a Suprema Corte Americana. Este quadro faz o ex-presidente John Quincy Adams (Anthony Hopkins), um abolicionis', 'Fatos/03.jpg', NULL, 16),
(29, 'Elefante', 5, 2003, ' Gus Van Sant', 81, 1, 'Um dia aparentemente comum na vida de um grupo de adolescentes, todos estudantes de uma escola secundária de Portland, no estado de Oregon, interior dos Estados Unidos. Enquanto a maior parte está engajada em atividades cotidianas, dois alunos esperam, em casa, a chegada de uma metralhadora semi-automática, com altíssima precisão e poder de fogo. Munidos de um arsenal de outras armas que vinham colecionando, os dois partem para a escola, onde serão protagonistas de uma grande tragédia.', 'Fatos/04.jpg', NULL, 16),
(30, 'Vips', 7, 2011, 'Toniko Melo', 95, 1, 'Marcelo (Wagner Moura) não consegue conviver com sua própria identidade, o que faz com que assuma a dos outros. Isto faz com que passe a ter diversos nomes, nos mais variados meios. Sonhando em ser um piloto de avião como o pai, aplica seguidos golpes e se envolve em inúmeras aventuras. Uma dos mais conhecidas é quando finge ser Henrique Constantino, filho do dono da companhia aérea Gol, durante um Carnaval no Recife. Inspirado na história real de Marcelo Nascimento da Rocha.', 'Fatos/05.jpg', 10, 16),
(31, 'Titanic', 5, 1998, 'James Cameron', 194, 1, 'Jack Dawson (Leonardo DiCaprio) é um jovem aventureiro que, na mesa de jogo, ganha uma passagem para a primeira viagem do transatlântico Titanic. Trata-se de um luxuoso e imponente navio, anunciado na época como inafundável, que parte para os Estados Unidos. Nele está também Rose DeWitt Bukater (Kate Winslet), a jovem noiva de Caledon Hockley (Billy Zane). Rose está descontente com sua vida, já que sente-se sufocada pelos costumes da elite e não ama Caledon. Entretanto, ela precisa se casar com ele para manter o bom nome da família, que está falida. Um dia, desesperada, Rose ameaça se atirar do Titanic, mas Jack consegue demovê-la da ideia. Pelo ato ele é convidado a jantar na primeira classe, onde começa a se tornar mais próximo de Rose. Logo eles se apaixonam, despertando a fúria de Caledon. A situação fica ainda mais complicada quando o Titanic se choca com um iceberg, provocando algo que ninguém imaginava ser possível: o naufrágio do navio.', 'Fatos/06.jpg', 4, 16),
(32, 'O Homem Elefante', 5, 1980, 'David Lynch', 125, 1, 'A história de John Merrick (John Hurt), um desafortunado cidadão da Inglaterra vitoriana portador do caso mais grave de neurofibromatose múltipla registrado até então, tendo 90% do corpo deformado. Exibido como monstro em circos e considerado débil mental pela sua dificuldade de falar, é salvo por um médico, Frederick Treves (Anthony Hopkins). No hospital Merrick se libera emocionalmente e intelectualmente, além de mostrar ser uma pessoa sensível ao extremo. Sra. Kendal (Anne Bancroft), uma grande atriz, torna-se sua amiga e até a coroa britânica sensibiliza-se com o caso.', 'Fatos/07.jpg', NULL, 16),
(33, 'O Massacre da Serra Elétrica', 1, 2013, 'John Luessenhop', 92, 1, '1974, uma pequena cidade no interior do Texas. Uma garota escapou de um massacre que matou cinco pessoas e é criada sem saber a verdade sobre seu passado. Já adulta, Heather Mills (Alexandra Daddario) é surpreendida ao ser informada que é a beneficiária da herança de uma avó que nem sabia existir. Ao lado dos amigos Nikki (Tania Raymonde), Ryan (Trey Songz) e Kenny (Kerum Milicki-Sanchez), Heather viaja ao Texas para conhecer a mansão que herdou. Entretanto, ela tem duas regras a seguir: não pode vender a mansão e precisa seguir à risca as instruções deixadas pela avó em uma carta. O problema é que, antes mesmo de abrir esta carta, Heather é surpreendida por outro parente que também sobreviveu ao massacre de décadas atrás.', 'Fatos/08.jpg', NULL, 16),
(34, 'Milk - A Voz da Iguadade', 5, 2009, 'Gus Van Sant', 128, 1, 'Início dos anos 70. Harvey Milk (Sean Penn) é um nova-iorquino que, para mudar de vida, decidiu morar com seu namorado Scott (James Franco) em San Francisco, onde abriram uma pequena loja de revelação fotográfica. Disposto a enfrentar a violência e o preconceito da época, Milk busca direitos iguais e oportunidades para todos, sem discriminação sexual. Com a colaboração de amigos e voluntários (não necessariamente homossexuais), Milk entra numa intensa batalha política e consegue ser eleito para o Quadro de Supervisor da cidade de San Francisco em 1977, tornando-se o primeiro gay assumido a alcançar um cargo público de importância nos Estados Unidos.', 'Fatos/09.jpg', NULL, 16),
(35, 'Zodíaco', 2, 2007, ' David Fincher', 156, 1, '1º de agosto de 1969. Três cartas diferentes chegam aos jornais San Francisco Chronicle, San Francisco Examiner e Vallejo Times-Herald, enviadas pelo mesmo remetente. A carta enviada ao Chronicle trazia a confissão de um assassino e as três juntas formavam um código que supostamente revelaria a identidade do criminoso. O assassino exigia que as cartas fossem publicadas, caso contrário mais pessoas morreriam. Um casal de Salinas consegue decodificar a mensagem, mas é Robert Graysmith (Jake Gyllenhaal), um tímido cartunista, quem descobre sua intenção oculta: uma referência ao filme \"Zaroff, o Caçador de Vidas\" (1932). Os assassinatos e as cartas se sucedem, provocando pânico na população de San Francisco.', 'Fatos/10.jpg', NULL, 16),
(36, 'A Procura da Felicidade', 7, 2007, 'Gabriele Muccino', 118, 1, 'Chris Gardner (Will Smith) é um pai de família que enfrenta sérios problemas financeiros. Apesar de todas as tentativas em manter a família unida, Linda (Thandie Newton), sua esposa, decide partir. Chris agora é pai solteiro e precisa cuidar de Christopher (Jaden Smith), seu filho de apenas 5 anos. Ele tenta usar sua habilidade como vendedor para conseguir um emprego melhor, que lhe dê um salário mais digno. Chris consegue uma vaga de estagiário numa importante corretora de ações, mas não recebe salário pelos serviços prestados. Sua esperança é que, ao fim do programa de estágio, ele seja contratado e assim tenha um futuro promissor na empresa. Porém seus problemas financeiros não podem esperar que isto aconteça, o que faz com que sejam despejados. Chris e Christopher passam a dormir em abrigos, estações de trem, banheiros e onde quer que consigam um refúgio à noite, mantendo a esperança de que dias melhores virão', 'Fatos/11.jpg', 5, 16),
(37, 'Prenda-me Se For capaz', 5, 2003, 'Steven Spielberg', 141, 1, 'Frank Abagnale Jr. (Leonardo DiCaprio) já foi médico, advogado e co-piloto, tudo isso com apenas 18 anos. Mestre na arte do disfarce, ele aproveita suas habilidades para viver a vida como quer e praticar golpes milionários, que fazem com que se torne o ladrão de banco mais bem-sucedido da história dos Estados Unidos com apenas 17 anos. Mas em seu encalço está o agente do FBI Carl Hanratty (Tom Hanks), que usa todos os meios que tem ao seu dispor para encontrá-lo e capturá-lo.', 'Fatos/12.jpg', 2, 16),
(38, 'Sempre Ao Seu Lado', 5, 2009, 'Lasse Hallström', 93, 1, 'Parker Wilson (Richard Gere) é um professor universitário que, ao retornar do trabalho, encontra na estação de trem um filhote de cachorro da raça akita, conhecido por sua lealdade. Sem ter como deixá-lo na estação, Parker o leva para casa mesmo sabendo que Cate (Joan Allen), sua esposa, é contra a presença de um cachorro. Aos poucos Parker se afeiçoa ao filhote, que tem o nome Hachi escrito na coleira, em japonês. Cate cede e aceita sua permanência. Hachi cresce e passa a acompanhar Parker até a estação de trem, retornando ao local no horário em que o professor está de volta. Até que um acontecimento inesperado altera sua vida.', 'Fatos/13.jpg', NULL, 16),
(39, 'O Impossívle', 5, 2012, 'Juan Antonio Bayona', 107, 1, 'O casal Maria (Naomi Watts) e Henry (Ewan McGregor) está aproveitando as férias de inverno na Tailândia junto com os três filhos pequenos. Mas na manhã de 26 de dezembro de 2004, enquanto curtiam aquele paraíso após uma linda noite de Natal, um tsunami de proporções devastadoras atinge o local, arrastando tudo o que encontra pela frente. Separados em dois grupos, a mãe e o filho mais velho vão enfrentar situações desesperadoras para se manterem vivos, enquanto em algum outro lugar, o pai e as duas crianças menores não têm a menor ideia se os outros dois estão vivos. É quando eles começam a viver uma trágica lição de vida, movida pela esperança do reencontro e misturando os mais diversos sentimentos.', 'Fatos/14.jpg', NULL, 16),
(40, 'O Exorcismo de Emily Rose', 2, 2005, 'Scott Derrickson', 119, 1, 'Emily Rose (Jennifer Carpenter) é uma jovem que deixou sua casa em uma região rural para cursar a faculdade. Um dia, sozinha em seu quarto no alojamento, ela tem uma alucinação assustadora, perdendo a consciência logo em seguida. Como seus surtos ficam cada vez mais frequentes, Emily, que é católica praticante, aceita ser submetida a uma sessão de exorcismo. Quem realiza a sessão é o sacerdote de sua paróquia, o padre Richard Moore (Tom Wilkinson). Porém Emily morre durante o exorcismo, o que faz com que o padre seja acusado de assassinato. Erin Bruner (Laura Linney), uma advogada famosa, aceita pegar a defesa do padre Moore em troca da garantia de sociedade em uma banca de advocacia. À medida que o processo transcorre o cinismo e o ateísmo de Erin são desafiados pela fé do padre Moore e também pelos eventos inexplicáveis em torno do caso.', 'Fatos/15.jpg', NULL, 16),
(41, 'Spotligth - Segredos Revelados', 5, 2016, 'Tom McCarthy', 128, 2, 'Baseado em uma história real, o drama mostra um grupo de jornalistas em Boston que reúne milhares de documentos capazes de provar diversos casos de abuso de crianças, causados por padres católicos. Durante anos, líderes religiosos ocultaram o caso transferindo os padres de região, ao invés de puni-los pelo caso', 'Fatos/16.jpg', NULL, 16),
(42, 'O Pianista', 5, 2003, 'Roman Polanski', 148, 1, 'O pianista polonês Wladyslaw Szpilman (Adrien Brody) interpretava peças clássicas em uma rádio de Varsóvia quando as primeiras bombas caíram sobre a cidade, em 1939. Com a invasão alemã e o início da 2ª Guerra Mundial, começaram também restrições aos judeus poloneses pelos nazistas. Inspirado nas memórias do pianista, o filme mostra o surgimento do Gueto de Varsóvia, quando os alemães construíram muros para encerrar os judeus em algumas áreas, e acompanha a perseguição que levou à captura e envio da família de Szpilman para os campos de concentração. Wladyslaw é o único que consegue fugir e é obrigado a se refugiar em prédios abandonados espalhados pela cidade, até que o pesadelo da guerra acabe.', 'Fatos/17.jpg', NULL, 16),
(43, '12 Anos de Escravidão', 5, 2014, 'Steve McQueen (II)', 133, 3, '1841. Solomon Northup (Chiwetel Ejiofor) é um escravo liberto, que vive em paz ao lado da esposa e filhos. Um dia, após aceitar um trabalho que o leva a outra cidade, ele é sequestrado e acorrentado. Vendido como se fosse um escravo, Solomon precisa superar humilhações físicas e emocionais para sobreviver. Ao longo de doze anos ele passa por dois senhores, Ford (Benedict Cumberbatch) e Edwin Epps (Michael Fassbender), que, cada um à sua maneira, exploram seus serviços.', 'Fatos/18.jpg', NULL, 16),
(44, 'Na Natureza Selvagem', 8, 2008, ' Sean Penn', 147, 1, 'Início da década de 90. Christopher McCandless (Emile Hirsch) é um jovem recém-formado, que decide viajar sem rumo pelos Estados Unidos em busca da liberdade. Durante sua jornada pela Dakota do Sul, Arizona e Califórnia ele conhece pessoas que mudam sua vida, assim como sua presença também modifica as delas. Até que, após dois anos na estrada, Christopher decide fazer a maior das viagens e partir rumo ao Alasca.', 'Fatos/19.jpg', 5, 16),
(45, '127 Horas', 2, 2011, 'Danny Boyle', 94, 1, 'Baseado na história real de como alpinista Aron Ralston lutou para salvar a própria vida após um acidente. Em maio de 2003, Aron (vivido por James Franco) fazia mais uma escalada nas montanhas de Utah, Estados Unidos, quando acabou ficando com seu braço preso em uma fenda. Sua luta pela sobrevivência durante mais de cinco dias (durou 127 horas) foi marcada por memórias e momentos de muita tensão. Dirigido por Danny Boyle, o longa conquistou seis indicações ao Oscar.', 'Fatos/20.jpg', 8, 16),
(46, 'Halloween', 1, 2018, 'David Gordon Green', 109, 2, 'Quatro década depois de ter escapado do ataque de Michael Myers em uma noite de Halloween, Laurie Strode (Jamie Lee Curtis) terá que confrontar o assassino mascarado pela última vez. Ela foi perseguida pela memória de ter sua vida por um triz, mas dessa vez, quando Myers retorna para a cidade de Haddonfield, ela está preparada.', 'Lançamentos/01.jpg', 2, 11),
(47, 'Venom', 2, 2018, 'Ruben Fleischer', 140, 3, 'O jornalista Eddie Brock desenvolve força e poder sobre-humanos quando seu corpo se funde com o alienígena Venom. Dominado pela raiva, Venom tenta controlar as novas e perigosas habilidades de Eddie.', 'Lançamentos/02.jpg', NULL, 11),
(48, 'Furia em Alto Mar', 3, 2018, 'Donovan Marsh', 123, 2, 'O capitão de um submarino norte-americano se une aos fuzileiros navais para resgatar o presidente russo, que foi sequestrado por um general desonesto.', 'Lançamentos/03.jpg', 2, 11),
(49, 'Assim Nasce uma Estrela', 4, 2018, 'Bradley Cooper', 134, 1, 'A jovem cantora Ally ascende ao estrelato enquanto seu parceiro Jackson Maine, um renomado artista de longa carreira, cai no esquecimento por problemas com o álcool. Os momentos opostos acabam por minar o relacionamento amoroso dos dois.', 'Lançamentos/04.jpg', 5, 11),
(50, 'O Primeiro Homem', 5, 2018, 'Damien Chazelle', 142, 2, 'O astronauta estadunidense Neil Armstrong embarca na histórica e perigosa jornada à Lua em 1969.', 'Lançamentos/05.jpg', NULL, 11),
(51, 'Small Foot', 6, 2018, 'Karey Kirkpatrick', 109, 1, 'Um yeti, criatura conhecida como o \"Abominável Homem das Neves\", está indo na contramão do que todos os seus semelhantes acreditam: ele tem a certeza que os seres humanos, para eles até então um mito, realmente existem, mesmo que todos da sua espécie neguem. Mas ele não desisti tão facilmente de provar sua tese.', 'Lançamentos/06.jpg', NULL, 11),
(52, 'Uma Quase Dulpla', 7, 2018, 'Marcus Baldini', 150, 0, 'Uma série de assassinatos abala a rotina da cidade de Joinlândia, e o subdelegado Claudio recebe a ajuda da destemida e experiente investigadora Keyla. No entanto, a diferença de ritmo e a falta de química dos dois só atrapalha a solução do caso.', 'Lançamentos/07.jpg', 10, 11),
(53, 'Amigos Alienigenas', 8, 2018, 'Christoph Lauenstein, Wolfgang Lauenstei', 90, 1, 'A vida de Louis, um menino de doze anos, muda completamente quando a nave espacial de três alienígenas cai nos fundos do quintal de sua casa. Seu pai, um ufologista famoso, congelaria os novos amigos na primeira oportunidade, por isso ele precisa protegê-los e ajudá-los a descobrir o paradeiro da nave mãe, para que só assim eles consigam voltar para casa.', 'Lançamentos/08.jpg', NULL, 11),
(54, 'Podres de Rico', 5, 2018, 'Jon M. Chu', 121, 2, 'Rachel Chu é uma professora de economia nos EUA e namora com Nick Young há algum tempo. Quando Nick convida Rachel para ir no casamento do melhor amigo, em Singapura, ele esquece de avisar à namorada que, como herdeiro de uma fortuna, ele é um dos solteiros mais cobiçados do local, colocando Rachel na mira de outras candidatas e da mãe de Nick, que desaprova o namoro.', 'Lançamentos/11.jpg', 7, 11),
(55, 'Crô em Familia', 7, 2018, 'Cininha de Paula', 87, 2, 'Já famoso, bombado e dono da própria escola de etiqueta e finesse, Crô se vê, no entanto, sozinho e sem família. Carente e vulnerável, acaba ficando à mercê de supostos parentes, cujas intenções não parecem ser das melhores. Ao lado das inseparáveis Geni, Magda e Jurema, mas sempre desviando do veneno da pérfida colunista Carlota Valdez, Crô embarca em uma aventura repleta de pinta para descobrir a sua verdadeira família.', 'Lançamentos/12.jpg', 10, 11),
(56, 'A Justiceira', 5, 2018, 'Pierre Morel', 102, 3, 'Peppermint é um filme de ação vigilante americano de 2018, dirigido por Pierre Morel e estrelado por Jennifer Garner. Também com John Ortiz, John Gallagher Jr., Juan Pablo Raba e Tyson Ritter, a trama segue uma mãe que se vinga contra o cartel que matou seu marido e sua filha.', 'Lançamentos/13.jpg', NULL, 11),
(57, 'O Candidato Honesto', 7, 2018, 'Roberto Santucci', 110, 2, 'João Ernesto Ribamar (Leandro Hassum) é um político corrupto, candidato à presidência da República. Ele está no segundo turno das eleições, à frente nas pesquisas, quando recebe uma mandinga da avó, fazendo com que ele não possa mais mentir. Agora começa o problema: como vencer uma eleição falando apenas a verdade?', 'Lançamentos/14.jpg', 10, 11),
(58, 'Estas Me Matando Susana', 7, 2018, 'Roberto Sneider', 100, 3, 'Eligio (Gael García Bernal) acorda em uma manhã e descobre que sua esposa Susana (Verónica Echegui) o deixou sem dizer uma palavra sobre seus motivos ou paradeiro. Ele decide embarcar em uma viagem da Cidade do México até uma universidade de Iowa, nos Estados Unidos, para lutar pela mulher que ama. Ao chegar, ela parece ter seguido em frente com sua vida, mas Eligio resolve usar seu charme para conquistá-la enquanto enfrenta as dificuldades de um lugar ', 'Lançamentos/17.jpg', 4, 11),
(59, 'Bohemian Rhapsody', 5, 2018, 'Bryan Singer', 135, 3, 'Freddie Mercury (Rami Malek) e seus companheiros Brian May (Gwilyn Lee), Roger Taylor (Ben Hardy) e John Deacon (Joseph Mazzello) mudam o mundo da música para sempre ao formar a banda Queen, durante a década de 1970. Porém, quando o estilo de vida extravagante de Mercury começa a sair do controle, a banda tem que enfrentar o desafio de conciliar a fama e o sucesso com suas vidas pessoais cada vez mais complicadas.', 'Lançamentos/15.jpg', NULL, 11),
(60, 'Os Invisiveis', 5, 2018, 'Claus Räfle', 110, 3, 'Após o Partido Nazista tornar oficial a perseguição ao povo judeu na Alemanha, muitos deles precisam se tornar praticamente invisíveis, entre eles a jovem órfã Hanni Lévy (Alice Dwyer); o habilidoso falsificador Cioma Schönhaus (Max Mauff); o apaixonado adolescente Eugen Friede (Aaron Altaras); e Ruth Arndt (Ruby O. Fee), que perde o contato com a família passando-se por viúva e trabalhando para um oficial alemão.', 'Lançamentos/18.jpg', 9, 11),
(61, 'A freira', 1, 2018, 'Corin Hardy', 97, 3, 'Presa em um convento na Romênia, uma freira comete suicídio. Para investigar o caso, o Vaticano envia um padre atormentado e uma noviça prestes a se tornar freira. Arriscando suas vidas, a fé e até suas almas, os dois descobrem um segredo profano e se confrontam com uma força do mal que toma a forma de uma freira demoníaca e transforma o convento num campo de batalha.', 'Lançamentos/19.jpg', NULL, 11),
(62, 'Como Nossos Pais', 1, 2017, 'Laís Bodanzky', 102, 3, 'Rosa (Maria Ribeiro), 38 anos, é uma mulher que se encontra em uma fase peculiar de sua vida, marcada por conflitos pessoais e geracionais: ao mesmo tempo em que precisa desenvolver sua habilidade como mãe de suas filhas, manter seus sonhos, seus objetivos profissionais e enfrentar as dificuldades do casamento, Rosa também continua sendo filha de sua mãe, Clarice (Clarisse Abujamra), com quem possui uma relação cheia de conflitos.', 'Nacionais/01.jpg', NULL, 10),
(63, 'Malasartes e o Duelo com a Morte', 7, 2017, 'Paulo Morelli', 110, 2, 'Pedro Malasartes (Jesuíta Barbosa) é um malandro que, por mais que seja apaixonado por Áurea (Ísis Valverde), não resiste a um rabo de saia. Devendo muito dinheiro a Próspero (Milhem Cortaz), irmão de sua amada, Malasartes precisa escapar dele ao mesmo tempo em que prega peças, sempre usando a inteligência, de forma a conseguir alguns trocados. Só que seu padrinho, a Morte (Julio Andrade) em pessoa, tem outros planos para ele.', 'Nacionais/02.jpg', 10, NULL),
(64, 'Divinas Divas', 9, 2017, ' Leandra Leal', 110, 3, 'Rogéria, Valéria, Jane Di Castro, Camille K, Fujika de Holliday, Eloína dos Leopardos, Marquesa e Brigitte de Búzios formaram, na década de 1970, o grupo que testemunhou o auge de uma Cinelândia repleta de cinemas e teatros. O documentário acompanha o reencontro das artistas para a a montagem de um espetáculo, trazendo para a cena as histórias e memórias de uma geração que revolucionou o comportamento sexual e desafiou a moral de uma época.', 'Nacionais/03.jpg', 10, NULL),
(65, 'Corpo Elétrico', 5, 2017, 'Marcelo Caetano', 94, 4, 'Elias (Kelner Macêdo) é assistente numa confecção de roupas no centro de São Paulo. Ele mantém pouco contato com a família na Paraíba e passa seus dias entre os tecidos do trabalho e encontros com homens. O fim do ano traz reflexões sobre possibilidades de futuro, reconexões com o passado e muitas horas extras, que acabam por aproximá-lo dos colegas da fábrica e consequentemente inseri-lo em novos círculos de amizade e cenários.', 'Nacionais/04.jpg', 10, NULL),
(66, 'As Duas Irenes', 5, 2017, 'Fabio Meira', 89, 3, 'Irene (Priscila Bittencourt) é a filha do meio de uma família tradicional do interior, que um dia descobre que o pai (Marco Ricca) tem uma filha fora do casamento, também chamada Irene (Isabela Torres) e da mesma idade que ela. Revoltada com a descoberta, Irene passa a se aproximar de sua meio-irmã e da mãe dela, sem revelar sua identidade. É o início de uma cumplicidade entre elas, que passa também pela descoberta da sexualidade.', 'Nacionais/05.jpg', 10, NULL),
(67, 'O Filme Da Minha Vida', 5, 2017, 'Selton Mello', 113, 3, 'O jovem Tony (Johnny Massaro) decide retornar a Remanso, Serra Gaúcha, sua cidade natal. Ao chegar, ele descobre que Nicolas (Vincent Cassel), seu pai, voltou para França alegando sentir falta dos amigos e do país de origem. Tony acaba tornando-se professor, e se vê em meio aos conflitos e inexperiências juvenis.', 'Nacionais/06.jpg', 10, NULL),
(68, 'Era o Hotel Cambridge', 5, 2017, 'Eliane Caffé', 99, 2, 'Refugiados recém-chegados ao Brasil dividem com um grupo de sem-tetos um velho edifício abandonado no centro de São Paulo. Além da tensão diária que a ameaça de despejo causa, os novos moradores do prédio terão que lidar com seus dramas pessoais e aprender a conviver com pessoas que, apesar de diferentes, enfrentam juntos a vida nas ruas.', 'Nacionais/07.jpg', 10, NULL),
(69, 'O Silêncio do Céu', 5, 2016, 'Marco Dutra', 102, 4, 'Diana (Carolina Dieckmann) carrega consigo um grande trauma: ela foi vítima de um estupro dentro de sua própria residência. Entretanto, ele prefere esconder o caso e não contar para ninguém. Mario (Leonardo Sbaraglia), seu marido, também tem seus próprios segredos - mistérios que, ocultos, estão matando aos poucos a relação do casal.', 'Nacionais/08.jpg', 2, 10),
(70, 'Nise - O Coração da Loucura', 5, 2016, 'Roberto Berliner', 108, 2, 'Ao voltar a trabalhar em um hospital psiquiátrico no subúrbio do Rio de Janeiro, após sair da prisão, a doutora Nise da Silveira (Gloria Pires) propõe uma nova forma de tratamento aos pacientes que sofrem da esquizofrenia, eliminando o eletrochoque e lobotomia. Seus colegas de trabalho discordam do seu meio de tratamento e a isolam, restando a ela assumir o abandonado Setor de Terapia Ocupacional, onde dá início a uma nova forma de lidar com os pacientes, através do amor e da arte.', 'Nacionais/09.jpg', 10, NULL),
(71, 'O Robo da Taça', 7, 2016, 'Caíto Ortiz', 85, 2, 'Peralta é um simples corretor de seguros que começa a sofrer pressões de todos os lados. Em casa, sua namorada Dolores dá um ultimato: é casamento ou fim de papo. Por outro lado, suas dívidas que se amontoaram rapidamente, começam a ser cobradas. Quando tudo parece perdido, uma brilhante ideia cruza a cabeça de Peralta: um plano que vai resolver todos os seus problemas. Com a ajuda de seu amigo Borracha, um sujeito nada inteligente, Peralta decide roubar a Taça Jules Rimet de dentro dos cofres da CBF (Confederação Brasileira de Futebol). Baseado num caso real.', 'Nacionais/10.jpg', 10, NULL),
(72, 'Elis', 5, 2016, 'Hugo Prata', 115, 3, 'Cantora desde a infância, Elis Regina Carvalho Costa (Andreia Horta) entra na vida adulta deixando o Rio Grande do Sul para espalhar seu talento pelo Brasil a partir do Rio de Janeiro. Em rápida ascensão, ela logo conquista uma legião de fãs, entre eles o famoso compositor e produtor Ronaldo Bôscoli (Gustavo Machado), com quem acaba se casando. Estrela de TV, polêmica, intensa e briguenta, a \"Pimentinha\" não tarda a ser reconhecida como a maior voz do Brasil, em carreira marcada por altos e baixos.', 'Nacionais/11.jpg', 10, NULL),
(73, 'Aquarius', 5, 2016, 'Kleber Mendonça Filho', 145, 4, 'Clara (Sonia Braga) tem 65 anos, é jornalista aposentada, viúva e mãe de três adultos. Ela mora em um apartamento localizado na Av. Boa Viagem, no Recife, onde criou seus filhos e viveu boa parte de sua vida. Interessada em construir um novo prédio no espaço, os responsáveis por uma construtora conseguiram adquirir quase todos os apartamentos do prédio, menos o dela. Por mais que tenha deixado bem claro que não pretende vendê-lo, Clara sofre todo tipo de assédio e ameaça para que mude de ideia', 'Nacionais/12.jpg', 2, NULL),
(74, 'Que Horas Ela Volta?', 5, 2015, 'Anna Muylaert', 112, 2, 'A pernambucana Val (Regina Casé) se mudou para São Paulo a fim de dar melhores condições de vida para sua filha Jéssica. Com muito receio, ela deixou a menina no interior de Pernambuco para ser babá de Fabinho, morando integralmente na casa de seus patrões. Treze anos depois, quando o menino (Michel Joelsas) vai prestar vestibular, Jéssica (Camila Márdila) lhe telefona, pedindo ajuda para ir à São Paulo, no intuito de prestar a mesma prova. Os chefes de Val recebem a menina de braços abertos, só que quando ela deixa de seguir certo protocolo, circulando livremente, como não deveria, a situação se complica.', 'Nacionais/13.jpg', 10, NULL),
(75, 'O Vendedor de Passados', 5, 2015, 'Lula Buarque de Hollanda', 100, 2, 'O que você faria se pudesse alterar erros ou lembranças dolorosas do passado? Esta é a profissão de Vicente (Lázaro Ramos): ele vende passados às pessoas, criando documentos, fotos e outros indícios necessários para reescrever a história. Esta trama é uma adaptação do livro de mesmo nome, escrito pelo angolano José Eduardo Agualusa.', 'Nacionais/14.jpg', 10, NULL),
(76, 'Tim Maia', 5, 2014, 'Mauro Lima', 140, 4, 'Cinebiografia do cantor Tim Maia, baseada no livro \"Vale Tudo - O Som e a Fúria de Tim Maia\". O filme percorre cinquenta anos na vida do artista, desde a sua infância no Rio de Janeiro até a sua morte, aos 55 anos de idade, incluindo a passagem pelos Estados Unidos, onde o cantor descobre novos estilos musicais e é preso por roubo e posse de drogas.', 'Nacionais/15.jpg', 10, NULL),
(77, 'Getulio', 5, 2014, 'João Jardim', 100, 3, 'A intimidade de Getúlio Vargas (Tony Ramos), então presidente do Brasil, em seus 19 últimos dias de vida. Pressionado por uma crise política sem precedentes, em decorrência das acusações de que teria ordenado o atentado contra o jornalista Carlos Lacerda (Alexandre Borges), ele avalia os riscos existentes até tomar a decisão de se suicidar.', 'Nacionais/16.jpg', 10, NULL),
(78, 'Alemão', 3, 2014, 'José Eduardo Belmonte', 109, 4, 'Novembro de 2010. Cinco policiais trabalham infiltrados no Complexo do Alemão, uma área que reúne diversas favelas e é considerada um dos locais mais perigosos do Rio de Janeiro. Desmascarados pelos traficantes, eles agora estão presos e aguardam que ou sejam executados ou resgatados pelas forças policiais, o que significaria na divulgação de uma missão clandestina realizada pela polícia militar.', 'Nacionais/17.jpg', 10, NULL),
(79, 'Praia do Futuro', 5, 2014, 'Karim Aïnouz', 106, 3, 'Praia do Futuro, Ceará. Donato (Wagner Moura) trabalha como salva-vidas. Seu irmão caçula, Ayrton (Jesuita Barbosa), tem grande admiração por ele, devido à coragem demonstrada ao se atirar no mar para resgatar desconhecidos. Um deles é Konrad (Clemens Schick), um alemão de olhos azuis que muda por completo a vida de Donato após ser salvo por ele. É quando Ayrton, querendo reencontrar o irmão, parte em sua busca na fria Berlim.', 'Nacionais/18.jpg', 10, NULL),
(80, 'O Lobo Atrás da Porta', 5, 2014, 'Fernando Coimbra', 101, 4, 'O desaparecimento de uma criança faz com que seus pais, Bernardo (Milhem Cortaz) e Sylvia (Fabiula Nascimento), vão até uma delegacia. O caso fica a cargo do delegado (Juliano Cazarré), que resolve interrogá-los separadamente. Logo descobre que Bernardo mantinha uma amante, Rosa (Leandra Leal), que é levada à delegacia para averiguações. A partir de depoimentos do trio, o delegado descobre uma rede de mentiras, amor, vingança e ciúmes envolvendo o trio.', 'Nacionais/19.jpg', 2, 10),
(81, 'Faroeste Caboclo', 5, 2013, 'René Sampaio', 108, 4, 'João (Fabrício Boliveira) deixa Santo Cristo em busca de uma vida melhor em Brasília. Ele quer deixar o passado repleto de tragédias para trás. Lá, conta com o apoio do primo e traficante Pablo (César Troncoso), com quem passa a trabalhar. Já conhecido como João de Santo Cristo, o jovem se envolve com o tráfico de drogas, ao mesmo tempo em que mantém um emprego como carpinteiro. Em meio a tudo isso, conhece a bela e inquieta Maria Lúcia (Ísis Valverde), filha de um senador (Marcos Paulo), por quem se apaixona loucamente. Os dois começam uma relação marcada pela paixão e pelo romance, mas logo João se verá em meio a uma guerra com o playboy e traficante Jeremias (Felipe Abib), que coloca tudo a perder.', 'Nacionais/20.jpg', 4, 10),
(82, 'Cadillac Records ', 6, 2008, 'Darnell Martin', 109, 1, '1947. O Chess Records é um pequeno estúdio musical, localizado na parte sul de Chicago. De início trabalha o blues, tendo como principais ícones Muddy Waters (Jeffrey Wright) e Little Walter (Columbus Short). Chuck Berry (Mos Def), um dos precursores do rock, também gravou nele. Leonard Chess (Adrien Brody) é o produtor do estúdio e tem um ouvido refinado para identificar diferentes tipos de música. Ele acredita que pode ganhar dinheiro ao assinar com talentos ascendentes do meio musical, como o compositor Willie Dixon (Cedric the Entertainer) e Howlin Wolf (Eamonn Walker). Leonard os trata como se fosse parte de sua família, o que não é algo simples pela grande quantia gasta para que esta situação aconteça. Quando Chuck Berry é preso, ele decide apostar no talento de outra cantora: Etta James (Beyoncé Knowles).', 'Vintage/05.jpg', 5, 13),
(83, 'Temple Grandin', 5, 2010, 'Mick Jackson', 107, 1, 'Cinebiografia da jovem autista Temple Grandin (Claire Danes) que tinha sua maneira particular de ver o mundo, se distanciou dos humanos, mas chegou a conseguir, entre outras conquistas, defender seu doutorado. Com uma percepção de vida totalmente diferenciada, dedicou-se aos animais e revolucionou os métodos de manejo do gado com técnicas que surpreenderam experientes criadores e ajudaram a indústria da pecuária americana.', 'Vintage/01.jpg', NULL, 13),
(84, 'Hounddog', 5, 2007, 'Deborah Kampmeier', 102, 1, 'Estados Unidos, Alabama, década de 1950. Lewellen (Dakota Fanning) é uma garota órfã de nove anos, que vive com o pai (David Morse) e Grammie (Piper Laurie) em uma fazenda. Suas únicas diversões são ouvir as canções de Elvis Presley e brincar com Buddy (Cody Hanford), seu vizinho. A vida tranquila da família é alterada quando a nova namorada do pai (Robin Wright) chega à casa, trazendo um segredo consigo.', 'Vintage/02.jpg', 6, 13),
(85, 'The Help', 5, 2012, 'Tate Taylor', 146, 1, 'Jackson, pequena cidade no estado do Mississipi, anos 60. Skeeter (Emma Stone) é uma garota da sociedade que retorna determinada a se tornar escritora. Ela começa a entrevistar as mulheres negras da cidade, que deixaram suas vidas para trabalhar na criação dos filhos da elite branca, da qual a própria Skeeter faz parte. Aibileen Clark (Viola Davis), a emprega da melhor amiga de Skeeter, é a primeira a conceder uma entrevista, o que desagrada a sociedade como um todo. Apesar das críticas, Skeeter e Aibileen continuam trabalhando juntas e, aos poucos, conseguem novas adesões.', 'Vintage/03.jpg', NULL, 13),
(86, 'Pleassantille - A Vida em Preto e Branco', 5, 1999, 'Gary Ross', 114, 1, 'Anos 90. David (Tobey Maguire) é um jovem solitário, que não é feliz com sua vida e foge da realidade assistindo \"Pleasantville\", um seriado em preto e branco dos anos 50, onde tudo é agradável. Mas tudo muda quando Jennifer (Reese Whisterpoon), sua irmã, briga com ele pelo controle remoto, que um estranho técnico de televisão (Don Knotts), que chegou repentinamente logo após eles terem quebrado o antigo controle. Durante a briga eles apertam o novo controle e são magicamente transportados para dentro da fictícia \"Pleasantville\" e lá se tornam Bud e Mary-Sue Parker, dois personagens da série.', 'Vintage/04.jpg', 7, 13),
(87, 'Moonrise Kingdom', 7, 2012, 'Wes Anderson', 94, 1, 'Anos 60, em uma pequena ilha localizada na costa da Nova Inglaterra. Sam (Jared Gilman) e Suzy (Kara Hayward) sentem-se deslocados em meio às pessoas com que convivem. Após se conhecerem em uma peça teatral na qual Suzy atuava, eles passam a trocar cartas regularmente. Um dia, resolvem deixar tudo para trás e fugir juntos. O que não esperavam era que os pais de Suzy (Bill Murray e Frances McDormand), o capitão Sharp (Bruce Willis) e o escoteiro-chefe Ward (Edward Norton) fizessem todo o possível para reencontrá-los.', 'Vintage/06.jpg', 5, 13),
(88, 'Valentin', 7, 2004, 'Alejandro Agresti', 86, 1, '1960, Buenos Aires. Valentin (Rodrigo Noya) é um menino de 9 anos que vive com sua avó (Carmen Maura), já que seu pai vive ocupado trabalhando e sua mãe está desaparecida desde a separação de seu pai. Solitário, Valentin divide seu tempo sonhando se tornar um astronauta e ouvindo as histórias contadas por sua avó. Seu grande sonho é que seu pai o leve para conhecer sua mãe, mas ele se irrita só de ouvir a simples menção do nome dela. Valentin passa a acreditar que possa ter enfim uma mãe quando conhece Leticia (Julieta Cardinali), a mais nova namorada de seu pai.', 'Vintage/07.jpg', 5, 13),
(89, 'Os Piratas do Rock', 7, 2016, 'Richard Curtis', 135, 1, 'Um grupo de amigos fanáticos por música pop decidem criar uma rádio pirata para disseminar a cultura do Rock n Roll. Na época, a BBC, maior emissora do país, não dava crédito suficiente ao gênero que estava nascendo. Logo, a rádio pirata começou a ganhar repercussão e chegou a ser ouvida por 25 milhões de pessoas diariamente.', 'Vintage/08.jpg', 6, 13),
(90, 'The Beach Boys - Uma História de Sucesso', 5, 2015, 'Bill Pohlad', 122, 1, 'Brian Wilson (John Cusack) fundou os Beach Boys, uma das bandas mais populares do Estados Unidos nos anos 1960. Mas, ao longo de sua vida, luta com seus problemas mentais, enquanto dependente de uma série de drogas e se isola da sociedade. O Doutor Eugene Landy (Paul Giamatti) torna-se fundamental na recuperação de Brian, além da esposa do músico, Melinda Ledbetter (Elizabeth Banks), quem o ajudou a se reerguer.', 'Vintage/09.jpg', 6, 13);
INSERT INTO `tbfilmes` (`idFilmes`, `titFilme`, `idcategoria`, `ano`, `diretor`, `duracao`, `idclassificacao`, `sinopse`, `img`, `idcategoria2`, `idcategoria3`) VALUES
(91, 'Garotas, Interrompida', 5, 2000, 'James Mangold', 127, 1, 'Em 1967, após uma sessão com um psicanalista que nunca havia visto antes, Susanna Kaysen (Winona Ryder) foi diagnosticada como vítima de \"Ordem Incerta de Personalidade\" - uma aflição com sintomas tão ambíguos que qualquer garota adolescente pode ser enquadrada. Enviada para um hospital psiquiátrico, ela conhece um novo mundo, repleteo de jovens garotas sedutoras e transtornadas. Entre elas está Lisa (Angelina Jolie), uma charmosa sociopata que organiza uma fuga.', 'Vintage/10.jpg', NULL, 13),
(92, 'O Sorriso de Mona Lisa', 7, 2004, 'Mike Newell', 119, 1, 'Katharine Watson (Julia Roberts) é uma recém-graduada professora que consegue emprego no conceituado colégio Wellesley, para lecionar aulas de História da Arte. Incomodada com o conservadorismo da sociedade e do próprio colégio em que trabalha, Katharine decide lutar contra estas normas e acaba inspirando suas alunas a enfrentarem os desafios da vida.', 'Vintage/11.jpg', 4, 13),
(93, 'Revolução em Dagenham', 7, 2011, 'Nigel Cole', 113, 1, '1968, Dagenham, Inglaterra. Entre os milhares de funcionários da Ford estão 187 mulheres que recebem pouco e trabalham em condições precárias. Revoltadas e sob a liderança de Rita O Grady (Sally Hawkins), elas iniciam uma greve que abala o país e muda o mundo.', 'Vintage/13.jpg', 5, 13),
(94, 'A Vida Num Só Dia', 7, 2008, 'Bharat Nalluri', 90, 1, 'Depois de ser demitida de seu emprego como babá, Miss Pettigrew (Frances McDormand) vai a uma agência de emprego, mas não encontra nenhuma vaga. Por acaso, ela descobre o número de Delysia Lafosse (Amy Adams), uma cantora americana procurando uma assistente, e se apresenta à casa dela. Esta jovem americana e superficial dorme com vários homens na tentativa de conseguir cantar em uma grande casa de shows. Durante 24h, Pettigrew segue Delysia e conhece um mundo de glamour e de sonhos, onde um grande amor a espera.', 'Vintage/14.jpg', 5, 13),
(95, 'The Secret Life of Marilyn Monroe', 5, 2015, 'Stephen Kronish', 240, 1, 'A história por trás de uma das principais estrelas da América de todos os tempos: Marilyn Monroe. Apesar das adversidades, como uma vida solitária e a mãe ausente, a jovem Norma Jeane Mortenson procurou se reinventar com inteligência e criatividade, tornando-se o símbolo de um país. No entanto, o mundo externo nunca compreendeu a a verdadeira Marilyn Monroe, uma mulher muito diferente da sua imagem pública.', 'Vintage/15.jpg', NULL, 13),
(96, 'Yves Saint-Laurent', 5, 2014, 'Jalil Lespert', 106, 4, 'Paris, 1957. Com apenas 21 anos, Yves Saint-Laurent (Pierre Niney) é chamado cuidar do futuro da prestigiosa grife de alta costura fundada por Christian Dior - falecido recentemente. Depois de seu primeiro desfile triunfal, ele vai conhecer Pierre Bergé (Guillaume Gallienne) e este encontro irá abalar sua vida. Amantes e parceiros de trabalho, os dois se associam a fim de criar a grife Yves Saint Laurent. Apesar de suas obsessões e demônios interiores, Saint Laurent vai revolucionar o mundo da moda com sua abordagem moderna e iconoclasta.', 'Vintage/16.jpg', NULL, 13),
(97, 'Mel de Laranjas', 5, 2012, ' Imanol Uribe', 101, 1, 'Nos anos 50, em Andaluzia, Enrique e Carmen estão apaixonados em plena ditadura franquista. A sede de Enrique por justiça o levará a realizar ações clandestinas contra o regime, colocando em perigo a sua vida e a de pessoas que ama.', 'Vintage/17.jpg', NULL, 13),
(98, 'Show de Vizinhas', 7, 2004, 'Luke Greenfield', 110, 3, 'Matthew (Emile Hirsch) é um jovem estudante que tem planos ambiciosos e deseja ingressar na carreira política. Após conhecer sua nova vizinha, Danielle (Elisha Cuthbert), eles se apaixonam imediatamente. Porém a situação se complica quando Matthew, e boa parte do bairro em que vive, descobre que Danielle foi uma atriz pornô.', 'Vintage/19.jpg', 4, 13),
(99, 'Educação', 5, 2010, 'Lone Scherfig', 95, 1, 'Jenny Carey (Carey Mulligan) tem 16 anos e vive com a família no subúrbio londrino em 1961. Inteligente e bela, sofre com o tédio de seus dias de adolescente e aguarda impacientemente a chegada da vida adulta. Seus pais alimentam o sonho de que ela vá estudar em Oxford, mas a moça se vê atraída por um outro tipo de vida. Quando conhece David (Peter Sarsgaard), homem charmoso e cosmopolita de trinta e poucos anos, vê um mundo novo se abrir diante de si. Ele a leva a concertos de música clássica, a leilões de arte, e a faz descobrir o glamour da noite, deixando-a em um dilema entre a educação formal e o aprendizado da vida.', 'Vintage/20.jpg', NULL, 13),
(100, 'Vingadores: Guerra Infinita', 3, 2018, 'Joe Russo', 2, 2, 'Thanos (Josh Brolin) enfim chega à Terra, disposto a reunir as Joias do Infinito. Para enfrentá-lo, os Vingadores precisam unir forças com os Guardiões da Galáxia, ao mesmo tempo em que lidam com desavenças entre alguns de seus integrantes.', 'Filmes/vingadores.jpg', NULL, NULL),
(101, 'BATMAN - O CAVALEIRO DAS TREVAS', 3, 2008, 'Christopher Nolan', 2, 2, 'Após dois anos desde o surgimento do Batman (Christian Bale), os criminosos de Gotham City têm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman) e do promotor público Harvey Dent (Aaron Eckhart), Batman luta contra o crime organizado. Acuados com o combate, os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.', 'Filmes/batman-o-cavaleiro-das-trevas.jpg', NULL, NULL),
(102, 'GUARDIÕES DA GALÁXIA', 3, 2014, 'James Gunn', 2, 2, 'Peter Quill (Chris Pratt) foi abduzido da Terra quando ainda era criança. Adulto, fez carreira como saqueador e ganhou o nome de Senhor das Estrelas. Quando rouba uma esfera, na qual o poderoso vilão Ronan, da raça kree, está interessado, passa a ser procurado por vários caçadores de recompensas. Para escapar do perigo, Quill une forças com quatro personagens fora do sistema: Groot, uma árvore humanóide (Vin Diesel), a sombria e perigosa Gamora (Zoe Saldana), o guaxinim rápido no gatilho Rocket Racoon (Bradley Cooper) e o vingativo Drax, o Destruidor (Dave Bautista). Mas o Senhor das Estrelas descobre que a esfera roubada possui um poder capaz de mudar os rumos do universo, e logo o grupo deverá proteger o objeto para salvar o futuro da galáxia.', 'Filmes/guardioes-galaxia.jpg', NULL, NULL),
(103, 'LOGAN', 3, 2017, ' James Mangold', 2, 4, 'Em 2029, Logan (Hugh Jackman) ganha a vida como chofer de limousine para cuidar do nonagenário Charles Xavier (Patrick Stewart). Debilitado fisicamente e esgotado emocionalmente, ele é procurado por Gabriela (Elizabeth Rodriguez), uma mexicana que precisa da ajuda do ex-X-Men para defender a pequena Laura Kinney / X-23 (Dafne Keen). Ao mesmo tempo em que se recusa a voltar à ativa, Logan é perseguido pelo mercenário Donald Pierce (Boyd Holbrook), interessado na menina.', 'Filmes/logan.jpg', NULL, NULL),
(104, 'SCARFACE', 3, 1984, 'Brian De Palma', 2, 5, 'Um criminoso cubano exilado (Al Pacino) vai para Miami e em pouco tempo está trabalhando para um chefão das drogas. Sua ascensão na quadrilha é meteórica, mas quando ele começa a sentir interesse na amante do chefe (Michelle Pfeiffer) este manda matá-lo. No entanto ele escapa do atentado, mata o mandante do crime, fica com a amante dele - mas simultaneamente sente desejos incestuosos por sua irmã (Mary Elizabeth Mastrantonio) - e assume o controle da quadrilha. Em pouco tempo ele ganha mais dinheiro do que jamais sonhou. No entanto ele está na mira dos agentes federais, que o pegam quando ele está \"trocando\" dinheiro. Mas seu problema pode ser resolvido se ele fizer um \"serviço\" em Nova York para um grande traficante e pessoas influentes, que podem manipular o poder para ajudá-lo. Porém, a missão toma um rumo inesperado quando, para concretizá-la, ele precisa matar crianças.', 'Filmes/scarface.jpg', NULL, NULL),
(105, 'STAR WARS - O DESPERTAR DA FORÇA', 3, 2015, 'J.J. Abrams', 2, 2, 'Décadas após a queda de Darth Vader e do Império, surge uma nova ameaça: a Primeira Ordem, uma organização sombria que busca minar o poder da República e que tem Kylo Ren (Adam Driver), o General Hux (Domhnall Gleeson) e o Líder Supremo Snoke (Andy Serkis) como principais expoentes. Eles conseguem capturar Poe Dameron (Oscar Isaac), um dos principais pilotos da Resistência, que antes de ser preso envia através do pequeno robô BB-8 o mapa de onde vive o mitológico Luke Skywalker (Mark Hamill). Ao fugir pelo deserto, BB-8 encontra a jovem Rey (Daisy Ridley), que vive sozinha catando destroços de naves antigas. Paralelamente, Poe recebe a ajuda de Finn (John Boyega), um stormtrooper que decide abandonar o posto repentinamente. Juntos, eles escapam do domínio da Primeira Ordem.', 'Filmes/starwars-despertar-forca.jpg', NULL, NULL),
(106, 'O EXTERMINADOR DO FUTURO 2 - O JULGAMENTO FINAL', 3, 1991, 'James Cameron', 2, 2, 'Uma criança destinada a ser líder (Edward Furlong) já nasceu, mas infeliz por viver com pais adotivos, pois foi privado da companhia da mãe (Linda Hamilton), que foi considerada louca quando falou de um exterminador vindo do futuro. Neste contexto, um andróide (Arnold Schwarzenegger) vem do futuro, mais exatamente um modelo T-800 igual ao filme original, para proteger o garoto, mas existe um problema: o mais avançado andróide existente no futuro, um modelo T-1000 (Robert Patrick), que feito de \"metal líquido\", não pode ter nenhum dano permanente e pode assumir a forma que desejar, também veio para o passado com a missão de matar o menino.', 'Filmes/Terminator2.jpg', NULL, NULL),
(107, 'VELOZES & FURIOSOS 7', 3, 2015, 'James Wan', 2, 2, 'Após os acontecimentos em Londres, Dom (Vin Diesel), Brian (Paul Walker), Letty (Michelle Rodriguez) e o resto da equipe tiveram a chance de voltar para os Estados Unidos e recomeçarem suas vidas. Mas a tranquilidade do grupo é destruída quando Deckard Shaw (Jason Statham), um assassino profissional, quer vingança pela morte de seu irmão. Agora, a equipe tem que se reunir para impedir este novo vilão. Mas dessa vez, não é só sobre ser veloz. A luta é pela sobrevivência.', 'Filmes/velozes-furiosos.jpg', NULL, NULL),
(108, 'X-MEN: DIAS DE UM FUTURO ESQUECIDO', 3, 2014, 'Bryan Singer', 2, 2, 'No futuro, os mutantes são caçados impiedosamente pelos Sentinelas, gigantescos robôs criados por Bolívar Trask (Peter Dinklage). Os poucos sobreviventes precisam viver escondidos, caso contrário serão também mortos. Entre eles estão o professor Charles Xavier (Patrick Stewart), Magneto (Ian McKellen), Tempestade (Halle Berry), Kitty Pryde (Ellen Page) e Wolverine (Hugh Jackman), que buscam um meio de evitar que os mutantes sejam aniquilados. O meio encontrado é enviar a consciência de Wolverine em uma viagem no tempo, rumo aos anos 1970. Lá ela ocupa o corpo do Wolverine da época, que procura os ainda jovens Xavier (James McAvoy) e Magneto (Michael Fassbender) para que, juntos, impeçam que este futuro trágico para os mutantes se torne realidade.', 'Filmes/x-men-days-of-future-past.jpg', NULL, NULL),
(109, 'WHIPLASH - EM BUSCA DA PERFEIÇÃO', 3, 2015, 'Damien Chazelle', 1, 2, 'O solitário Andrew (Miles Teller) é um jovem baterista que sonha em ser o melhor de sua geração e marcar seu nome na música americana como fez Buddy Rich, seu maior ídolo na bateria. Após chamar a atenção do reverenciado e impiedoso mestre do jazz Terence Fletcher (JK Simmons), Andrew entra para a orquestra principal do conservatório de Shaffer, a melhor escola de música dos Estados Unidos. Entretanto, a convivência com o abusivo maestro fará Andrew transformar seu sonho em obsessão, fazendo de tudo para chegar a um novo nível como músico, mesmo que isso coloque em risco seus relacionamentos com sua namorada e sua saúde física e mental.', 'Filmes/whiplash.jpg', NULL, NULL),
(110, 'DIRTY DANCING - RITMO QUENTE', 3, 1987, 'Emile Ardolino', 1, 2, 'Em 1963, Frances Houseman (Jennifer Grey), ou \"Baby\", como é chamada pela família, uma jovem de 17 anos, viajou com seus pais, Marjorie (Kelly Bishop) e Jake Houseman (Jerry Orbach) e sua irmã Lisa (Jane Brucker) para um resort em Catskills. Ao contrário de Lisa, que pensa em roupas, Frances é idealista e quer estar no próximo verão no Corpo da Paz estudando a economia dos países do Terceiro Mundo. Assim, ela espera que este seja o último verão como uma adolescente despreocupada, mas Baby não se dá muito bem com sua irmã mais velha e está entediada em tentar distrair os hospedes mais velhos (foi envolvida nesta situação por seu pai). Até que numa noite Baby ouve algo que parece ser um som de festa no alojamento dos funcionários (que os hospedes não podem ter acesso). Ela consegue entrar na festa graças a um empregado e descobre que ali o pessoal realmente se diverte com danças, que Max Kellerman (Jack Weston), o dono do hotel, não permite. Baby chega a dançar com Johnny Castle (Patrick', 'Filmes/dirty-dancing.jpg', NULL, NULL),
(111, 'ELA DANÇA, EU DANÇO', 3, 2006, 'Anne Fletcher', 1, 2, 'Após depredar um colégio, Tyler Gage (Channing Tatum) é enviado para fazer serviços comunitários em uma escola de artes. Lá ele conhece Nora Clark (Jenna Dewan), uma bela aluna de dança moderna que precisa urgentemente de um novo parceiro. Tyler está acostumado com as danças de rua, mas reluta à idéia de ser o novo parceiro de Nora. Aos poucos ele aceita a idéia e passa a se envolver com Nora.', 'Filmes/ela-danca1.jpg', NULL, NULL),
(112, 'ELA DANÇA, EU DANÇO 4', 3, 2012, 'Scott Speer', 1, 2, ' Emily (Kathryn McCormick) é a filha de uma ocupada empresária que chega a Miami com o sonho de se tornar dançarina profissional. Logo ela se apaixona por Sean (Ryan Guzman), o responsável por criar elaboradas danças para a realização de flash mobs, aglomerações instantâneas de pessoas em um lugar público para realizar uma ação previamente combinada. Líder de um grupo chamado MOB, Sean resolve participar de uma disputa que pode render uma oportunidade de patrocínio.', 'Filmes/ela-danca4.jpg', NULL, NULL),
(113, 'A ESCOLHA PERFEITA 2', 3, 2015, ' Elizabeth Banks', 1, 2, 'Após conquistarem o sucesso, as Barden Bellas ganham a oportunidade de se apresentar para ninguém menos que o presidente dos Estados Unidos. Só que o show é um grande fiasco, o que as torna uma vergonha nacional. Diante do ocorrido, as Bellas são proibidas de participar de competições no meio acadêmico e até mesmo de aceitar novas integrantes. A única saída de Beca (Anna Kendrick), Fat Amy (Rebel Wilson) & cia é vencer o campeonato mundial a capela, o que apagaria as punições aplicadas ao grupo. Mas há um problema: nunca uma equipe americana venceu o torneio.', 'Filmes/escolha-perfeita2.jpg', NULL, NULL),
(114, 'MAMMA MIA! O FILME', 6, 2008, 'Phyllida Lloyd', 1, 2, '1999, na ilha grega de Kalokairi. Sophie (Amanda Seyfried) está prestes a se casar e, sem saber quem é seu pai, envia convites para Sam Carmichael (Pierce Brosnan), Harry Bright (Colin Firth) e Bill Anderson (Stellan Skarsgard). Eles vêm de diferentes partes do mundo, dispostos a reencontrar a mulher de suas vidas: Donna (Meryl Streep), mãe de Sophie. Ao chegarem Donna é surpreendida, tendo que inventar desculpas para não revelar quem é o pai de Sophie.', 'Filmes/mamma-mia.jpg', NULL, NULL),
(115, 'MESMO SE NADA DER CERTO', 6, 2014, 'John Carney', 1, 2, 'Uma cantora (Keira Knightley) se muda para Nova Iorque, mas logo após chegar no local, seu namorado americano decide terminar o relacionamento. Em plena crise, ela começa a cantar em bares, até ser descoberta por um produtor de discos (Mark Ruffalo), certo de que ela pode se tornar uma estrela.', 'Filmes/mesmo-se-nada-der-certo.jpg', NULL, NULL),
(116, 'O SOM DO CORAÇÃO', 6, 2008, 'Kirsten Sheridan', 1, 1, 'August Rush (Freddie Highmore) é resultado do encontro casual entre um guitarrista e uma violoncelista. Crescido em orfanato e dotado de um dom musical impressionante, ele se apresenta nas ruas de Nova York ao lado do divertido Wizard (Robin Williams). Contando apenas com seu talento musical, August decide usá-lo para tentar reencontrar seus pais.', 'Filmes/som-coracao.jpg', NULL, NULL),
(117, 'TINI - DEPOIS DE VIOLETTA', 6, 2016, 'Juan Pablo Buscarini', 1, 1, 'Inspirado na aclamada série do Disney Channel, o filme narra uma nova fase na vida de Violetta (Martina Stoessel). Em crise no relacionamento com León (Jorge Blanco), e cansada da vida atarefada de celebridade, ela decide se aposentar e passar um tempo na Itália, procurando sua verdadeira identidade. Enquanto conhece novos amigos e um novo pretendente, Violetta descobre segredos sobre seu passado, e estabelece novos rumos para o futuro.', 'Filmes/tini.jpg', NULL, NULL),
(118, 'CINDERELA', 6, 1950, ' Wilfred Jackson', 1, 1, 'Cinderela (Ilene Woods/ Simone de Morais) vive com sua madrasta, Lady Tremaine (Eleanor Audley/ Tina Vita), e as duas filhas dela. Obrigada a trabalhar como empregada da casa, ela tem como amigos apenas os animais que a rodeiam. O local em que vive está agitado devido ao baile que será realizado no castelo, o qual contará com a presença do príncipe (William Phipps/ Jorge Goulart). Como Lady Tremaine pretende que uma das filhas se case com ele, elas se preparam com requinte para o evento. Cinderela, entretanto, não pode ir. Até que surge a Fada-madrinha (Verna Felton/ Maria Helena Pader), que dá a Cinderela um vestido e condições para que possa ir ao baile em alto estilo. Entretanto há uma condição: Cinderela precisa retornar antes da meia-noite, caso contrário o feitiço será desfeito.', 'Filmes/cinderela.jpg', NULL, NULL),
(119, 'A ORIGEM', 2, 2010, 'Christopher Nolan', 2, 3, 'Em um mundo onde é possível entrar na mente humana, Cobb (Leonardo DiCaprio) está entre os melhores na arte de roubar segredos valiosos do inconsciente, durante o estado de sono. Além disto ele é um fugitivo, pois está impedido de retornar aos Estados Unidos devido à morte de Mal (Marion Cotillard). Desesperado para rever seus filhos, Cobb aceita a ousada missão proposta por Saito (Ken Watanabe), um empresário japonês: entrar na mente de Richard Fischer (Cillian Murphy), o herdeiro de um império econômico, e plantar a ideia de desmembrá-lo. Para realizar este feito ele conta com a ajuda do parceiro Arthur (Joseph Gordon-Levitt), a inexperiente arquiteta de sonhos Ariadne (Ellen Page) e Eames (Tom Hardy), que consegue se disfarçar de forma precisa no mundo dos sonhos.', 'Filmes/a-origem.jpg', NULL, NULL),
(120, ' CLUBE DA LUTA', 2, 1999, 'David Fincher', 2, 5, 'Jack (Edward Norton) é um executivo jovem, trabalha como investigador de seguros, mora confortavelmente, mas ele está ficando cada vez mais insatisfeito com sua vida medíocre. Para piorar ele está enfrentando uma terrível crise de insônia, até que encontra uma cura inusitada para o sua falta de sono ao frequentar grupos de auto-ajuda. Nesses encontros ele passa a conviver com pessoas problemáticas como a viciada Marla Singer (Helena Bonham Carter) e a conhecer estranhos como Tyler Durden (Brad Pitt). Misterioso e cheio de ideias, Tyler apresenta para Jack um grupo secreto que se encontra para extravasar suas angústias e tensões através de violentos combates corporais.', 'Filmes/clube-luta.jpg', NULL, NULL),
(121, 'GAROTA EXEMPLAR', 2, 2014, 'David Fincher', 2, 4, 'Amy Dunne (Rosamund Pike) desaparece no dia do seu aniversário de casamento, deixando o marido Nick (Ben Affleck) em apuros. Ele começa a agir descontroladamente, abusando das mentiras, e se torna o suspeito número um da polícia. Com o apoio da sua irmã gêmea, Margo (Carrie Coon), Nick tenta provar a sua inocência e, ao mesmo tempo, procura descobrir o que aconteceu com Amy.', 'Filmes/garota-exemplar.jpg', NULL, NULL),
(122, 'ILHA DO MEDO', 2, 2010, 'Martin Scorsese', 2, 4, '1954. Teddy Daniels (Leonardo DiCaprio) investiga o desaparecimento de um paciente no Shutter Island Ashecliffe Hospital, em Boston. No local, ele descobre que os médicos realizam experiências radicais com os pacientes, envolvendo métodos ilegais e anti-éticos. Teddy tenta buscar mais informações, mas enfrenta a resistência dos médicos em lhe fornecer os arquivos que possam permitir que o caso seja aberto. Quando um furacão deixa a ilha sem comunicação, diversos prisioneiros conseguem escapar e tornam a situação ainda mais perigosa.', 'Filmes/ilha-medo.jpg', NULL, NULL),
(123, 'O QUARTO DE JACK', 2, 2016, 'Lenny Abrahamson', 1, 3, 'O psicólogo infantil Malcolm Crowe (Bruce Willis) abraça com dedicação o caso de Cole Sear (Haley Joel Osment). O garoto, de 8 anos, tem dificuldades de entrosamento no colégio e vive paralisado de medo. Malcolm, por sua vez, busca se recuperar de um trauma sofrido anos antes, quando um de seus pacientes se suicidou na sua frente.', 'Filmes/o-quarto-jack.jpg', NULL, NULL),
(124, 'PRENDA-ME SE FOR CAPAZ', 2, 2003, 'Steven Spielberg', 2, 2, 'Frank Abagnale Jr. (Leonardo DiCaprio) já foi médico, advogado e co-piloto, tudo isso com apenas 18 anos. Mestre na arte do disfarce, ele aproveita suas habilidades para viver a vida como quer e praticar golpes milionários, que fazem com que se torne o ladrão de banco mais bem-sucedido da história dos Estados Unidos com apenas 17 anos. Mas em seu encalço está o agente do FBI Carl Hanratty (Tom Hanks), que usa todos os meios que tem ao seu dispor para encontrá-lo e capturá-lo.', 'Filmes/PRENDA ME.jpg', NULL, NULL),
(125, ' PSICOSE', 2, 1960, 'Alfred Hitchcock', 1, 2, 'Marion Crane é uma secretária (Janet Leigh) que rouba 40 mil dólares da imobiliária onde trabalha para se casar e começar uma nova vida. Durante a fuga à carro, ela enfrenta uma forte tempestade, erra o caminho e chega em um velho hotel. O estabelecimento é administrado por um sujeito atencioso chamado Norman Bates (Anthony Perkins), que nutre um forte respeito e temor por sua mãe. Marion decide passar a noite no local, sem saber o perigo que a cerca.', 'Filmes/psicose.jpg', NULL, NULL),
(126, 'SEVEN - OS SETE CRIMES CAPITAIS', 2, 1995, 'David Fincher', 2, 3, 'Dois policiais, om jovem e impetuoso David Mills (Brad Pitt) e o outro maduro e prestes a se aposentar, William Somerset (Morgan Freeman), são encarregados de uma periogosa investigação: encontrar um serial killer que mata as pessoas seguindo a ordem dos sete pecados capitais.', 'Filmes/seven.jpg', NULL, NULL),
(127, 'O SEXTO SENTIDO', 2, 1999, 'M. Night Shyamalan', 1, 2, 'O psicólogo infantil Malcolm Crowe (Bruce Willis) abraça com dedicação o caso de Cole Sear (Haley Joel Osment). O garoto, de 8 anos, tem dificuldades de entrosamento no colégio e vive paralisado de medo. Malcolm, por sua vez, busca se recuperar de um trauma sofrido anos antes, quando um de seus pacientes se suicidou na sua frente. ', 'Filmes/sexto-sentido.jpg', NULL, NULL),
(128, ' O Silêncio dos Inocentes', 2, 1995, 'Quentin Tarantino', 2, 5, 'Vincent Vega (John Travolta) e Jules Winnfield (Samuel L. Jackson) são dois assassinos profissionais trabalham fazendo cobranças para Marsellus Wallace (Ving Rhames), um poderosos gângster. Vega é forçado a sair com a garota do chefe, temendo passar dos limites; enquanto isso, o pugilista Butch Coolidge (Bruce Willis) se mete em apuros por ganhar luta que deveria perder.', 'Filmes/silencio-inocentes.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbseries`
--

CREATE TABLE `tbseries` (
  `idFilmes` int(11) NOT NULL,
  `titFilme` varchar(50) DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `diretor` varchar(40) DEFAULT NULL,
  `duracao` int(11) DEFAULT NULL,
  `classificacao` int(11) DEFAULT NULL,
  `sinopse` varchar(1000) DEFAULT NULL,
  `img` varchar(300) DEFAULT NULL,
  `idcategoria2` int(11) DEFAULT NULL,
  `qtdTemporadas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbseries`
--

INSERT INTO `tbseries` (`idFilmes`, `titFilme`, `idcategoria`, `ano`, `diretor`, `duracao`, `classificacao`, `sinopse`, `img`, `idcategoria2`, `qtdTemporadas`) VALUES
(3, 'Breaking Bad', 5, 2008, 'Vince Gilligan', 42, 2, 'Walter White (Bryan Cranston) é um professor de química na casa dos 50 anos que trabalha em uma escola secundária no Novo México. Para atender às necessidades de Skyler (Anna Gunn), sua esposa grávida, e Walt Junior (RJ Mitte), seu filho deficiente físico, ele tem que trabalhar duplamente. Sua vida fica ainda mais complicada quando descobre que está sofrendo de um câncer de pulmão incurável. Para aumentar rapidamente a quantidade de dinheiro que deixaria para sua família após sua morte, Walter usa seu conhecimento de química para fazer e vender metanfetamina, uma droga sintética. Ele conta com a ajuda do ex-aluno e pequeno traficante Jesse (Aaron Paul) e enfrenta vários desafios, incluindo o fato de seu concunhado ser um importante nome dentro da Agência Anti-Drogas da região.', 'Series/01.jpg', 2, 5),
(4, 'Rick and Morty', 8, 2014, 'Dan Harmon, Justin Roiland', 22, 1, 'Uma série animada que acompanha as aventuras e os descobrimentos de um super cientista e seu neto não muito brilhante.', 'Series/02.jpg', 7, 4),
(5, 'Sherlock', 8, 2010, 'Steven Moffat, Steven Moffat, Mark Gatis', 90, 1, 'O dr. John Watson precisa de um lugar para morar em Londres. Ele é apresentado ao detetive Sherlock Holmes e os dois acabam desenvolvendo uma parceria intrigante, na qual a dupla vagará pela capital inglesa solucionando assassinatos e outros crimes brutais. Tudo isso em pleno século XXI.', 'Series/03.jpg', 5, 4),
(6, 'Stranger Things', 5, 2016, ' Matt Duffer, Ross Duffer', 55, 1, 'Long Island, 1983. Um garoto de 12 anos desaparece misteriosamente. A família e a polícia procuram respostas, mas acabam se deparando com um experimento secreto do governo. Enquanto isso, os amigos do menino iniciam suas próprias investigações, o que os levam a um extraordinário mistério envolvendo forças sobrenaturais e uma garotinha muito, muito estranha.', 'Series/04.jpg', 2, 3),
(7, 'Black Mirror', 5, 2011, 'Charlie Brooker, Charlie Brooker', 60, 1, 'Uma espécie de híbrido entre \"The Twilight Zone\" e \"Tales of the Unexpected\", Black Mirror explora sensações do mal-estar contemporâneo. Cada episódio conta uma história diferente, traçando uma antologia que mostra o lado negro da vida atrelada à tecnologia.', 'Series/05.jpg', 2, 5),
(8, 'House of Cards', 5, 2013, 'Frank Pugliese, Beau Willimon, Melissa J', 52, 1, 'Frank Underwood é um astuto congressista norte-americano que é traído pelo presidente que ele ajudou a eleger. Com a ajuda da esposa, de uma jornalista ambiciosa e de um outro político com problemas com alcoolismo, Underwood inicia um plano para minar adversários políticos e conquistar, em alguns anos, a presidência dos Estados Unidos.', 'Series/06.jpg', 2, 6),
(9, 'Friends', 7, 1994, 'David Crane, Marta Kauffman', 22, 1, 'Seis jovens são unidos por laços familiares, românticos e, principalmente, de amizade, enquanto tentam vingar em Nova York. Rachel é a garota mimada que deixa o noivo no altar para viver com a amiga dos tempos de escola Monica, sistemática e apaixonada pela culinária. Monica é irmã de Ross, um paleontólogo que é abandonado pela esposa, que descobriu ser lésbica. Do outro lado do corredor do apartamento de Monica e Rachel, moram Joey, um ator frustrado, e Chandler, de profissão misteriosa. A turma é completa pela exótica Phoebe. ', 'Series/07.jpg', 8, 10),
(10, 'Narcos', 5, 2015, 'Chris Brancato', 52, 1, 'No final da década de 1970, Pablo Escobar (Wagner Moura) não é mais considerado apenas um traficante. Seu nome circula pelas delegacias da Colômbia e também dos Estados Unidos como o traficantes de drogas mais perigoso do momento. Enquanto isso, Escobar continua construindo seu império e enriquece cada vez mais com seus negócios ilegais.', 'Series/08.jpg', 2, 3),
(11, 'House', 7, 2004, 'David Shore', 44, 1, 'O cientista House (Hugh Laurie) é especializado em infectologia e nefrologia, realiza excelentes diagnósticos mantendo uma postura cética, distanciada e até mesmo mau humorada com os pacientes do fictício hospital de Princeton-Plainsboro. Ele trabalha com uma equipe de médicos selecionada de acordo com critérios duvidosos na busca de soluções para os piores males relacionados à saúde.', 'Series/09.jpg', 5, 8),
(12, 'The Crown', 5, 2016, 'Stephen Daldry, Peter Morgan', 58, 1, 'Filha do rei George VI (Jared Harris), Elizabeth II (Claire Foy) sempre soube que não teria uma vida comum. Após a morte do seu pai em 1952, ela dá seus primeiros passos em direção ao trono inglês, a começar pelas audiências semanais com os primeiro-ministros ingleses. Ela assume a coroa com apenas 25 anos de idade, mas com grandes compromissos, vêm grandes responsabilidades.', 'Series/10.jpg', 3, 3),
(13, 'Grey´s Anatomy', 5, 2005, 'Shonda Rhimes, Shonda Rhimes, Betsy Beer', 42, 1, 'Os médicos do Grey Sloan Memorial Hospital lidam diariamente com casos e consequências de vida ou morte. É um no outro que eles encontram apoio, conforto, amizade e, às vezes, até mais que amizade... Juntos, eles descobrem o quanto a vida profissional e a pessoal podem ser complicadas e se misturarem no meio do caminho.', 'Series/12.jpg', 2, 15),
(14, 'La Casa De Papel', 5, 2017, 'Úrsula Corberó, Álvaro Morte, Pedro Alon', 45, 4, 'Oito habilidosos ladrões se trancam na Casa da Moeda da Espanha com o ambicioso plano de realizar o maior roubo da história e levar com eles mais de 2 bilhões de euros. Para isso, a gangue precisa lidar com as dezenas de pessoas que manteve como refém, além dos agentes da força de elite da polícia, que farão de tudo para que a investida dos criminosos fracasse.', 'Series/13.jpg', 2, 3),
(15, 'Riverdale', 5, 2017, 'Roberto Aguirre-Sacasa, Roberto Aguirre-', 42, 1, 'Riverdale traz uma abordagem subversiva de Archie (KJ Apa), Betty (Lili Reinhart), Veronica (Camila Mendes), Jughead Jones (Cole Sprouse), Josie (Ashleigh Murray) e seus amigos, explorando o surrealismo de uma pequena cidade e seus curiosos habitantes. A história começa quando a cidade se recupera de uma trágica perda, o que leva Archie a pensar mais seriamente a respeito de seu futuro. Com isto, ele embarca em uma jornada em busca de realizar o seu sonho de tornar um grande músico; mas cumprir essa missão não será nada fácil, enquanto Archie ainda precisa lidar com sua agitada vida amorosa, dividido entre Betty e Veronica.', 'Series/14.jpg', 2, 3),
(16, 'The Walking Dead', 5, 2010, 'Robert Kirkman, Glen Mazzara, Scott M. G', 44, 1, 'Um apocalipse provoca uma infestação de zumbis na cidade de Cynthiana, em Kentucky, nos Estados Unidos, e o oficial de polícia Rick Grimes (Andrew Lincoln) descobre que os mortos-vivos estão se propagando progressivamente. Ele decide unir-se aos homens e mulheres sobreviventes para que tenham mais força para combater o fenômeno que os atinge. O grupo percorre diferentes lugares em busca de soluções para o problema.', 'Series/16.jpg', 1, 9),
(17, 'Death Note', 1, 2017, 'Adam Wingard', 101, 4, 'Seattle, Estados Unidos. Light Turner (Nat Wolff) é um estudante brilhante que, um dia, encontra um caderno que repentinamente cai do céu. Trata-se do Death Note, que permite ao seu portador matar qualquer pessoa que conheça a partir da mera anotação do nome do alvo numa de suas páginas. Sob a influência de Ruyk (Willem Dafoe), o dono do caderno, Light passa a usá-lo para eliminar criminosos e pessoas que escaparam da justiça. A súbita onda de assassinatos faz com que ele seja endeusado por muitos, que o apelidaram de Kira, mas também atrai a atenção de um enigmático e também brilhante detetive, chamado L (Lakeith Stanfield).', 'Series/17.jpg', 2, 1),
(18, 'Freaks and Geeks', 7, 1999, 'Paul Feig', 42, 1, 'A jovem Lindsay Weir (Linda Cardellini) é uma das garotas mais inteligentes de sua escola, participando de grupos de estudos e competições de matemática. Após a morte da avó, ela muda seus hábidos e começa a conviver com um grupo de \"ovelhas negras\" do colégio, os freaks Daniel (James Franco), Kim (Busy Philipps), Nick (Jason Segel) e Ken (Seth Rogen). Bem mais novo, o irmão de Lindsay, Sam (John Francis Daley) também sofre com o dia a dia estudantil. Ao lado dos geeks Neal (Samm Levine) e Bill (Martin Starr), ele convive com a chegada da adolescência.', 'Series/18.jpg', 5, 1),
(19, 'Archer', 7, 2009, 'Adam Reed (III)', 22, 1, 'A ISIS é uma agência internacional de espionagem, e crises globais não passam de oportunidades para que os altamente treinados agentes possam confundir, enfraquecer e enganar uns aos outros. No centro de tudo está o chefe de espionagem, Sterling Archer, que responde imediatamente à própria mãe, Malory Archer. Além dela, ele precisa lidar com a ex-namorada, Agente Lana Kane, e o novo namorado dela, o administrador Cyrill Figgis. ', 'Series/19.jpg', 3, 10),
(20, 'Everything Sucks', 7, 2018, 'Ben York Jones, Michael Mohan', 25, 1, 'Oregon, 1996. Na escola de Boring, Kate Messner (Peyton Kennedy) e Luke O’Neil (Jahi Winston) são dois alunos que sabem muito bem o que é passar pelos dramas do colégio, mas não os únicos, já que todos os membros do clube de teatro e de vídeo sentem o mesmo desespero. Sem internet ou smatphones, essa turminha decide, então, produzir um filme para registrar todos os dramas do ensino médio.', 'Series/20.jpg', 4, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `situacao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbusuarios`
--

INSERT INTO `tbusuarios` (`idUsuario`, `nome`, `email`, `senha`, `situacao`) VALUES
(1, 'Thiago Malaquias', 'tammalaquias@gmail.com', '120601Th', 'admin'),
(2, 'Carlos Alberto', 'teste@teste.com', '345627', 'normal_user'),
(3, 'Rodrigo ', 'teste@adim.com', '123456789', 'normal_user'),
(4, 'Sara Cassabi Faustino', 'viva@bol.com', '123456', 'normal_user'),
(5, 'Vida Vladi', 'teste@admin.com', '44569', 'normal_user'),
(6, 'teste', 'teste@teste.com', '12345', 'normal_user'),
(7, 'teste', 'teste@teste.com', '12345', 'normal_user'),
(8, 'teste', 'teste@teste.com', '12345', 'normal_user'),
(9, 'teste', 'teste@teste.com', '12345', 'normal_user'),
(10, 'teste', 'teste@teste.com', '12345', 'normal_user'),
(11, 'teste', 'teste@teste.com', '12345', 'admin'),
(12, 'teste', 'teste@teste.com', '12345', 'admin'),
(13, 'teste', 'teste@teste.com', '12345', 'admin'),
(14, 'teste', 'teste@teste.com', '12345', 'admin'),
(15, 'teste', 'teste@teste.com', '12345', 'admin'),
(16, 'Vida', 'teste@teste.com', '12345', 'admin'),
(17, 'teste', 'teste@teste.com', '12345', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avaliacos`
--
ALTER TABLE `avaliacos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbcategoria`
--
ALTER TABLE `tbcategoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `tbclassificacao`
--
ALTER TABLE `tbclassificacao`
  ADD PRIMARY KEY (`idClassificacao`);

--
-- Indexes for table `tbcomentario`
--
ALTER TABLE `tbcomentario`
  ADD PRIMARY KEY (`idComentario`);

--
-- Indexes for table `tbfilmes`
--
ALTER TABLE `tbfilmes`
  ADD PRIMARY KEY (`idFilmes`),
  ADD KEY `idcategoria` (`idcategoria`),
  ADD KEY `idcategoria2` (`idcategoria2`),
  ADD KEY `idcategoria3` (`idcategoria3`);

--
-- Indexes for table `tbseries`
--
ALTER TABLE `tbseries`
  ADD PRIMARY KEY (`idFilmes`),
  ADD KEY `idcategoria` (`idcategoria`),
  ADD KEY `idcategoria2` (`idcategoria2`),
  ADD KEY `classificacao` (`classificacao`);

--
-- Indexes for table `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avaliacos`
--
ALTER TABLE `avaliacos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbcategoria`
--
ALTER TABLE `tbcategoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbclassificacao`
--
ALTER TABLE `tbclassificacao`
  MODIFY `idClassificacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbcomentario`
--
ALTER TABLE `tbcomentario`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbfilmes`
--
ALTER TABLE `tbfilmes`
  MODIFY `idFilmes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tbseries`
--
ALTER TABLE `tbseries`
  MODIFY `idFilmes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbusuarios`
--
ALTER TABLE `tbusuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbfilmes`
--
ALTER TABLE `tbfilmes`
  ADD CONSTRAINT `tbfilmes_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `tbcategoria` (`idCategoria`),
  ADD CONSTRAINT `tbfilmes_ibfk_2` FOREIGN KEY (`idcategoria2`) REFERENCES `tbcategoria` (`idCategoria`),
  ADD CONSTRAINT `tbfilmes_ibfk_3` FOREIGN KEY (`idcategoria2`) REFERENCES `tbcategoria` (`idCategoria`),
  ADD CONSTRAINT `tbfilmes_ibfk_4` FOREIGN KEY (`idcategoria3`) REFERENCES `tbcategoria` (`idCategoria`);

--
-- Limitadores para a tabela `tbseries`
--
ALTER TABLE `tbseries`
  ADD CONSTRAINT `tbseries_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `tbcategoria` (`idCategoria`),
  ADD CONSTRAINT `tbseries_ibfk_2` FOREIGN KEY (`idcategoria2`) REFERENCES `tbcategoria` (`idCategoria`),
  ADD CONSTRAINT `tbseries_ibfk_3` FOREIGN KEY (`classificacao`) REFERENCES `tbclassificacao` (`idClassificacao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
