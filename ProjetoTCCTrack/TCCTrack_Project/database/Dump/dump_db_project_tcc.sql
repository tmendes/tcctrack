-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Mar-2018 às 21:50
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project_tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_course`
--

CREATE TABLE `tbl_course` (
  `id_course` int(11) NOT NULL,
  `name_course` varchar(35) NOT NULL,
  `period_course` enum('M','T','N','I') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_course`
--

INSERT INTO `tbl_course` (`id_course`, `name_course`, `period_course`) VALUES
(1, 'Mecânica', 'N'),
(2, 'Recursos Humanos', 'N'),
(3, 'Química', 'M'),
(4, 'Nutrição', 'T'),
(5, 'Meio Ambiente', 'M'),
(6, 'Administração', 'N'),
(7, 'ETIM Mecatrônica', 'I'),
(8, 'Informática', 'N'),
(9, 'Eletrotécnica', 'T'),
(10, 'Logística', 'N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_file`
--

CREATE TABLE `tbl_file` (
  `id_file` int(11) NOT NULL,
  `url_file` varchar(60) NOT NULL,
  `name_file` varchar(35) NOT NULL,
  `description_file` blob,
  `upload_date_file` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_file`
--

INSERT INTO `tbl_file` (`id_file`, `url_file`, `name_file`, `description_file`, `upload_date_file`, `id_user`) VALUES
(1, 'D:\\Arquivos\\Inglês\\Trabalhos\\2018\\Informática', 'DUMP_db_form_database_test.sql', 0x44756d7020646f2062616e636f206465206461646f7320666569746f2070617261206f2074657374652064652061706c696361c3a7c3b5657320656d204323, '2018-03-14', 23),
(2, 'C:\\Program Files\\Microsoft Office 15\\ClientX86', 'Tipos De Dados MySQL E MariaDB.xlsx', 0x446566696e69c3a7c3a36f2065206578656d706c696361c3a7c3a36f20646f73207469706f73206465206461646f7320757469696c697a61646f73206e6f73205347424473204d7953514c2065204d617269614442, '2018-03-15', 1),
(3, 'D:\\Arquivos\\Inglês\\Trabalhos\\2017\\ETIM - 2° Série', 'Teclas De Atalho Para O Word.docx', 0x4174616c686f73206520636f6d616e646f732064652061636573736f2072c3a17069646f207061726120666163696c697461722061206e6176656761c3a7c3a36f206e6f20576f7264, '2018-03-16', 14),
(4, 'C:\\Program Files\\Android', 'Tecnologia Nos Esportes.docx', 0x526573756d6f2020636f6d206173207072696e636970616973207465636e6f6c6f676961732070726573656e746573206e6f73206573706f72746573, '2018-03-17', 6),
(5, 'D:\\Arquivos\\Inglês\\Outros\\Capas', 'Bootstrap.js', 0x4269626c696f7465636120646520636f6e666967757261c3a7c3a36f204a61766153637269707420646f20426f6f747374726170, '2018-03-18', 3),
(6, 'D:\\Arquivos\\Inglês\\Outros', 'Avatar1.png', 0x496d6167656d20646f206176617461722071756520736572c3a1207574696c697a61646f206e6f20646573656e766f6c76696d656e746f20646f2073697465, '2018-03-19', 19),
(7, 'C:\\Program Files\\NuGet', 'Banner (Feira-Tecnológica).pptx', 0x42616e6e657220696c75737472617469766f20646f2070726f6a65746f20646520544343, '2018-03-20', 27),
(8, 'C:\\Drivers\\Taisol UT330 Card Reader Patch', 'Produto.jpg', 0x496d6167656d2064652070726f6475746f7320636f6d657263696169732071756520736572c3a36f207574696c697a61646f73206e6f207369746520, '2018-03-21', 10),
(9, 'C:\\PDFToWordConverter', 'Gráficos.docx', 0x446566696e69c3a7c3a36f20646f207175652073c3a36f206772c3a16669636f73206520636f6d6f207574696c697a612d6c6f73, '2018-03-22', 21),
(10, 'D:\\Arquivos\\Inglês\\Trabalhos\\2015\\EMEF - 9° Série', 'Aplicativo Consultório.bmpr', 0x41706c6963617469766f202872617363756e686f2920636f6e73756c74c3b372696f206dc3a96469636f, '2018-03-23', 9),
(11, 'D:\\Arquivos\\Inglês\\Trabalhos\\2016\\ETIM - 1° Série', 'Construção De Arquivo XHTML.txt', 0x526573756d6f20646520636f6d6f20736520637269612070c3a167696e617320656d205848544d4c, '2018-03-24', 7),
(12, 'C:\\xampp\\htdocs\\dashboard', 'TCC_MecaInfo.zip', 0x4172717569766f7320646f2054434320636f6d7061637461646f73, '2018-03-25', 12),
(13, 'C:\\Users\\source', 'Lesson 3 - Regular Verbs - Simple P', 0x4c69c3a7c3b5657320646520696e676cc3aa73206120736572656d20666569746173, '2018-03-26', 8),
(14, 'D:\\Arquivos\\CalculadoraSimples', 'CalculadoraSimples.sln', 0x446573656e766f6c76696d656e746f2064652061706c6963617469766f202843616c63756c61646f72612920656d204323, '2018-03-27', 18),
(15, 'C:\\Users\\.VirtualBox', 'Login.jpg', 0x496d6167656d2062616e6e657220646f20736974652c206e6120616261206465206c6f67696e206520636164617374726f, '2018-03-28', 28);

--
-- Acionadores `tbl_file`
--
DELIMITER $$
CREATE TRIGGER `tgr_file_delete` AFTER DELETE ON `tbl_file` FOR EACH ROW BEGIN
    INSERT
INTO
    tbl_history(
        `id_user`,
        `table_modified_history`,
        `dml_history`,
        `date_time_history`
    )
VALUES(
    OLD.id_user,
    'tbl_file',
    'DELETE',
    NOW()) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tgr_file_insert` AFTER INSERT ON `tbl_file` FOR EACH ROW BEGIN
    INSERT
INTO
    tbl_history(
        `id_user`,
        `table_modified_history`,
        `dml_history`,
        `date_time_history`
    )
VALUES(
    NEW.id_user,
    'tbl_file',
    'INSERT',
    NOW()) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tgr_file_update` AFTER UPDATE ON `tbl_file` FOR EACH ROW BEGIN
    INSERT
INTO
    tbl_history(
        `id_user`,
        `table_modified_history`,
        `dml_history`,
        `date_time_history`
    )
VALUES(
    NEW.id_user,
    'tbl_file',
    'UPDATE',
    NOW()) ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_history`
--

CREATE TABLE `tbl_history` (
  `id_history` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_project` int(11) DEFAULT NULL,
  `table_modified_history` varchar(30) NOT NULL,
  `dml_history` varchar(15) DEFAULT NULL,
  `date_time_history` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_history`
--

INSERT INTO `tbl_history` (`id_history`, `id_user`, `id_project`, `table_modified_history`, `dml_history`, `date_time_history`) VALUES
(1, 3, NULL, 'tbl_file', 'UPDATE', '2018-03-16 06:52:46'),
(2, 18, NULL, 'tbl_file', 'INSERT', '2018-03-16 06:53:46'),
(3, 18, NULL, 'tbl_file', 'DELETE', '2018-03-16 06:53:54'),
(4, NULL, 10, 'tbl_task', 'UPDATE', '2018-03-16 07:09:26'),
(5, NULL, 1, 'tbl_task', 'INSERT', '2018-03-16 07:09:59'),
(6, NULL, 1, 'tbl_task', 'DELETE', '2018-03-16 07:10:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_project`
--

CREATE TABLE `tbl_project` (
  `id_project` int(11) NOT NULL,
  `name_project` varchar(60) NOT NULL,
  `start_project` date NOT NULL,
  `end_project` date DEFAULT '2018-12-02',
  `status_project` varchar(20) NOT NULL,
  `desc_project` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_project`
--

INSERT INTO `tbl_project` (`id_project`, `name_project`, `start_project`, `end_project`, `status_project`, `desc_project`) VALUES
(1, 'Gamefication', '2018-03-05', '2018-12-02', 'Ativo', 0x446573656e766f6c76696d656e746f20646520696e7465726661636520706573736f616c207061726120616c756e6f7320652070726f666573736f7265732c207574696c697a616e646f207265637572736f732064652047616d656669636174696f6e),
(2, 'Transporte Municipal', '2018-03-24', '2018-12-02', 'Em espera', 0x43726961c3a7c3a36f2064652061706c6963617469766f207061726120666163696c697461722061206d6f62696c696461646520757262616e61),
(3, 'Triturador de Plástico', '2018-03-05', '2018-12-02', 'Ativo', 0x436f6e73747275c3a7c3a36f2064652070726f74c3b37469706f20646520756d2074726974757261646f7220646520706cc3a1737469636f2c207061726120612072656369636c6167656d20646f206d65736d6f),
(4, 'Energia Wireless', '2018-03-06', '2018-12-02', 'Finalizado', 0x47657261c3a7c3a36f20646520656e65726769612073656d2061207574696c697a61c3a7c3a36f2064652066696f73),
(5, 'Robô Teletransportador', '2018-03-05', '2018-12-02', 'Ativo', 0x436f6e73747275c3a7c3a36f2064652070726f74c3b37469706f20646520726f62c3b420717565207472616e73706f727461206d65726361646f7269617320646520756d61206c6f6a61),
(6, 'Produtos de Alecrim', '2018-04-07', '2018-12-02', 'Ativo', 0x446573656e766f6c76696d656e746f20646520756d61206c6968612064652070726f6475746f7320646520616c656372696d),
(7, 'Indicador de Minério Ferro', '2018-03-23', '2018-12-02', 'Em espera', 0x50726f6475746f73207175c3ad6d69636f732071756520666163696c6974616d2061206c6f63616c697a61c3a7c3a36f206465206d696ec3a972696f20646520666572726f),
(8, 'Site para a ETEC', '2018-03-05', '2018-12-02', 'Ativo', 0x446573656e766f6c76696d656e746f2064652073697465207061726120612045544543),
(9, 'Energia de Hidrogênio', '2018-04-08', '2018-12-02', 'Ativo', 0x50726f6475c3a7c3a36f20646520656e6572676961206174726176c3a97320646f20686964726f67c3aa6e696f),
(10, 'Site Multimídia', '2018-03-26', '2018-12-02', 'Finalizado', 0x446573656e766f6c76696d656e746f206465207369746520636f6d207265637572736f73206d756c74696dc3ad6469612028616e696d65732c2073c3a97269657320652066696c6d657329);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_task`
--

CREATE TABLE `tbl_task` (
  `id_task` int(11) NOT NULL,
  `description_task` blob,
  `delivery_date_task` date NOT NULL,
  `status_task` varchar(15) NOT NULL,
  `id_project` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_task`
--

INSERT INTO `tbl_task` (`id_task`, `description_task`, `delivery_date_task`, `status_task`, `id_project`) VALUES
(1, 0x436f6d70726172207065c3a76173, '2018-05-03', 'Ativo', 3),
(2, 0x416e616c69736172206120636f6d706f7369c3a7c3a36f20646f20486964726f67c3aa6e696f, '2018-03-09', 'Finalizado', 9),
(3, 0x446573656e766f6c766572206f73206176617461726573, '2018-07-01', 'Ativo', 1),
(4, 0x436f6d70726172206dc3b364756c6f20576972656c657373, '2018-05-04', 'Ativo', 4),
(5, 0x446573656e766f6c766572206120696e74657266616365206772c3a166696361, '2018-06-01', 'Ativo', 1),
(6, 0x446573656e766f6c766572206f206c61796f757420646f2073697465, '2018-05-08', 'Ativo', 8),
(7, 0x5065737175697361722067656ec3aa726f7320646520616e696d6573, '2018-02-10', 'Finalizado', 10),
(8, 0x436f6d7072617220676172726120726f62c3b374696361, '2018-03-05', 'Finalizado', 5),
(9, 0x436f6d707261722062c3a971756572, '2018-04-09', 'Ativo', 9),
(10, 0x446566696e697220756d206c61796f757420617472617469766f, '2018-05-11', 'Ativo', 10);

--
-- Acionadores `tbl_task`
--
DELIMITER $$
CREATE TRIGGER `tgr_task_delete` AFTER DELETE ON `tbl_task` FOR EACH ROW BEGIN
    INSERT
INTO
    tbl_history(
        `id_project`,
        `table_modified_history`,
        `dml_history`,
        `date_time_history`
    )
VALUES(
    OLD.id_project,
    'tbl_task',
    'DELETE',
    NOW()) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tgr_task_insert` AFTER INSERT ON `tbl_task` FOR EACH ROW BEGIN
    INSERT
INTO
    tbl_history(
        `id_project`,
        `table_modified_history`,
        `dml_history`,
        `date_time_history`
    )
VALUES(
    NEW.id_project,
    'tbl_task',
    'INSERT',
    NOW()) ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tgr_task_update` AFTER UPDATE ON `tbl_task` FOR EACH ROW BEGIN
    INSERT
INTO
    tbl_history(
        `id_project`,
        `table_modified_history`,
        `dml_history`,
        `date_time_history`
    )
VALUES(
    NEW.id_project,
    'tbl_task',
    'UPDATE',
    NOW()) ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_task_file`
--

CREATE TABLE `tbl_task_file` (
  `id_task_file` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `id_file` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_task_file`
--

INSERT INTO `tbl_task_file` (`id_task_file`, `id_task`, `id_file`) VALUES
(1, 7, 6),
(2, 2, 9),
(3, 5, 12),
(4, 1, 2),
(5, 9, 14),
(6, 7, 6),
(7, 2, 9),
(8, 5, 12),
(9, 1, 2),
(10, 9, 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `id_teacher` int(11) NOT NULL,
  `name_teacher` varchar(50) NOT NULL,
  `email_teacher` varchar(60) DEFAULT NULL,
  `email_inst_teacher` varchar(60) NOT NULL,
  `password_teacher` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`id_teacher`, `name_teacher`, `email_teacher`, `email_inst_teacher`, `password_teacher`) VALUES
(1, 'Anderson Gustavo Teixeira', 'aandersonteixeira@petrobrais.com.br', 'aandersonteixeira@petrobrais.com.br', '1145783'),
(2, 'Mariana Analu Dias', 'marianaaludias@supercleanlav.com.br', 'marianaaludias@supercleanlav.com.br', '2245783'),
(3, 'Ester Natália Márcia Duarte', 'eesternataliaduarte@acesse.net', 'eesternataliaduarte@acesse.net', '3345783'),
(4, 'Cauã Yuri Benedito da Silva', 'cauayuribenedito@sorocaba.com', 'cauayuribenedito@sorocaba.com', '4445783'),
(5, 'Otávio Henrique Diego da Paz', 'otaviohenrique@cntbrasil.com.br', 'otaviohenrique@cntbrasil.com.br', '5545783'),
(6, 'Paulo Thomas Carvalho', 'paulothomascarvalho@krika.com.br', 'paulothomascarvalho@krika.com.br', '6645783'),
(7, 'Manuel Leandro Drumond', 'manueldrumond-72@htmail.com', 'manueldrumond-72@htmail.com', '7745783'),
(8, 'Isabella Mirella Cecília Fogaça', 'isabellamirella@hotmail.com', 'isabellamirella@hotmail.com', '8845783'),
(9, 'Louise Laura Porto', 'louiselauraporto-92@sodexo.com', 'louiselauraporto-92@sodexo.com', '9945783'),
(10, 'Gustavo Carlos Eduardo Pinto', 'gustavocarlos@polifiltro.com.br', 'gustavocarlos@polifiltro.com.br', '101045783'),
(11, 'Débora Rayssa Ayla Lopes', 'ddeborarayssa@valepur.com.br', 'ddeborarayssa@valepur.com.br', '111145783'),
(12, 'Nina Melissa da Luz', 'ninamelisz_@profiledesign.com.br', 'ninamelisz_@profiledesign.com.br', '121245783'),
(13, 'Felipe Oliver Gonçalves', 'felipeolivergoncalves@golinelli.eti.br', 'felipeolivergoncalves@golinelli.eti.br', '131345783'),
(14, 'César Tomás da Silva', 'cesartomasdasilva@gruporeis.net', 'cesartomasdasilva@gruporeis.net', '141445783'),
(15, 'Natália Sônia Ferreira', 'nataliaferreira_@netservicos.com.br', 'nataliaferreira_@netservicos.com.br', '151545783'),
(16, 'Elza Jaqueline Julia Vieira', 'elzajaquelinejuliavieira@iega.com', 'elzajaquelinejuliavieira@iega.com', '161645783'),
(17, 'Daiane Helena Sônia da Paz', 'daianehelena@andressamelo.com', 'daianehelena@andressamelo.com', '171745783'),
(18, 'Francisca Laís Amanda Barbosa', 'franciscalais@gruposantin.com.br', 'franciscalais@gruposantin.com.br', '181845783'),
(19, 'Igor Raul Caleb Aparício', 'igorraulcaleb_@julietavinhas.com', 'igorraulcaleb_@julietavinhas.com', '191945783'),
(20, 'Marcelo Roberto da Rosa', 'marceloroberto@gracomonline.com', 'marceloroberto@gracomonline.com', '202045783'),
(21, 'Elaine Brenda Figueiredo', 'elainebrenda_@cbsdobrasil.com', 'elainebrenda_@cbsdobrasil.com', '212145783'),
(22, 'Sarah Hadassa da Mata', 'sarahhadassa@salvadorlogistica.com', 'sarahhadassa@salvadorlogistica.com', '222245783'),
(23, 'Ricardo Leandro Melo', 'ricardoleandromelo@heineken.com.br', 'ricardoleandromelo@heineken.com.br', '232345783'),
(24, 'Aline Sandra Francisca Caldeira', 'alinesandrafrancisca@lynce.com.br', 'alinesandrafrancisca@lynce.com.br', '242445783'),
(25, 'Erick Manoel Gael Drumond', 'erickmanoelgael-80@onset.com.br', 'erickmanoelgael-80@onset.com.br', '252545783'),
(26, 'Severino Eduardo Figueiredo', 'severinoeduardo_@academiagolf.com', 'severinoeduardo_@academiagolf.com', '262645783'),
(27, 'Giovanna Maitê Amanda Viana', 'giovannamaite@lojapetline.com.br', 'giovannamaite@lojapetline.com.br', '272745783'),
(28, 'Isabelly Aparecida Rayssa', 'isabellyrayssa_@ornatopresentes.com', 'isabellyrayssa_@ornatopresentes.com', '282845783'),
(29, 'Alana Aparecida Vieira', 'alanaaparecidavieira_@hotmail.com', 'alanaaparecidavieira_@hotmail.com', '292945783'),
(30, 'Rodrigo Fábio Cláudio Aragão', 'rodrigofabio-84@solucao.adm.br', 'rodrigofabio-84@solucao.adm.br', '303045783');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_teacher_project`
--

CREATE TABLE `tbl_teacher_project` (
  `id_teacher_project` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `id_project` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_teacher_project`
--

INSERT INTO `tbl_teacher_project` (`id_teacher_project`, `id_teacher`, `id_project`) VALUES
(1, 5, 3),
(2, 9, 1),
(3, 26, 5),
(4, 16, 7),
(5, 7, 3),
(6, 21, 6),
(7, 11, 2),
(8, 1, 10),
(9, 26, 4),
(10, 28, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(50) NOT NULL,
  `email_user` varchar(60) DEFAULT NULL,
  `email_inst_user` varchar(60) NOT NULL,
  `password_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `name_user`, `email_user`, `email_inst_user`, `password_user`) VALUES
(1, 'Guilherme Consolação Dias', 'guilherme_Dias@gmail.com', 'guilherme_Dias@gmail.com', '123654898'),
(2, 'Iago Takeshi iguchi', 'iago_iguchi@gmail.com', 'iago_iguchi@gmail.com', '159753687'),
(3, 'Joao Victor Bueno de Caldas', 'jobu_caldas@gmail.com', 'jobu_caldas@gmail.com', '21321545'),
(4, 'Marcelo Vinícius Teodoro', 'marcelo_teodoro@gmail.com', 'marcelo_teodoro@gmail.com', '258963147'),
(5, 'André Fortolan', 'andre_fortolan@gmail.com', 'andre_fortolan@gmail.com', '741258963'),
(6, 'Gustavo Maciel', 'gustavo_maciel@gmail.com', 'gustavo_maciel@gmail.com', '123987456'),
(7, 'Fábio Dupre', 'fabiodpp@gmail.com', 'fabiodpp@gmail.com', '582014698'),
(8, 'Fábio Fabre', 'fabiofabre@gmail.com', 'fabiofabre@gmail.com', '4569047862'),
(9, 'Lucas Silva', 'lucassilva@gmail.com', 'lucassilva@gmail.com', '3215798'),
(10, 'Matheus Teodoro', 'matheust@gmail.com', 'matheust@gmail.com', '56418487'),
(11, 'Matheus Fernandes', 'matheusf@gmail.com', 'matheusf@gmail.com', '465213214'),
(12, 'Antônio Silva', 'antonioS@gmail.com', 'antonioS@gmail.com', '654687564'),
(13, 'Thiago Mendes', 'thiagoM@gmail.com', 'thiagoM@gmail.com', '465878546'),
(14, 'Luís Gustavo Vieira', 'luisv@gmail.com', 'luisv@gmail.com', '4568715849'),
(15, 'Erik Romanelli', 'erikR@gmail.com', 'erikR@gmail.com', '481564898'),
(16, 'Oliver Pincelli', 'oliverp@gmail.com', 'oliverp@gmail.com', '31245689'),
(17, 'Marco Foguel', 'marcof@gmail.com', 'marcof@gmail.com', '7894553928'),
(18, 'Luan Monteiro', 'luanM@gmil.com', 'luanM@gmil.com', '456789321'),
(19, 'Maria Fernanda', 'mariaf@gmail.com', 'mariaf@gmail.com', '321456987'),
(20, 'Monique Silva', 'moniqueS@gmail.com', 'moniqueS@gmail.com', '741258663'),
(21, 'Eduarda Monteiro', 'eduardoM@gmail.com', 'eduardoM@gmail.com', '222555877'),
(22, 'Adolf Hitler', 'adolfinho@gmail.com', 'adolfinho@gmail.com', 'Camaradegas'),
(23, 'Alex Borges Dias', 'alexdias@hotmail.com', 'alexdias@hotmail.com', '9514826'),
(24, 'Gentúlio Vargas', 'gentulinho@gmail.com', 'gentulinho@gmail.com', '264873159'),
(25, 'Floriado Peixoto', 'floeianoP@gmail.com', 'floeianoP@gmail.com', '3951843'),
(26, 'Cesar de Almeida', 'cesaA@gmail.com', 'cesaA@gmail.com', '365214789'),
(27, 'Machado de Assis', 'machadoA@gmail.com', 'machadoA@gmail.com', 'cebola123'),
(28, 'Celso Iguchi', 'celsoIguchi@gmail.com', 'celsoIguchi@gmail.com', 'macarao'),
(29, 'Vagna Iguchi', 'vagnaDias@gmail.com', 'vagnaDias@gmail.com', 'pizza'),
(30, 'Hélio Zorzo', 'helioZorzo@gmail.com', 'helioZorzo@gmail.com', '12365489');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_user_course`
--

CREATE TABLE `tbl_user_course` (
  `id_user_course` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_user_course`
--

INSERT INTO `tbl_user_course` (`id_user_course`, `id_user`, `id_course`) VALUES
(1, 1, 3),
(2, 14, 10),
(3, 23, 7),
(4, 18, 1),
(5, 10, 6),
(6, 29, 5),
(7, 20, 8),
(8, 17, 2),
(9, 4, 6),
(10, 6, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_user_project`
--

CREATE TABLE `tbl_user_project` (
  `id_user_project` int(11) NOT NULL,
  `id_user` int(20) NOT NULL,
  `id_project` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_user_project`
--

INSERT INTO `tbl_user_project` (`id_user_project`, `id_user`, `id_project`) VALUES
(1, 2, 5),
(2, 25, 4),
(3, 11, 2),
(4, 27, 8),
(5, 6, 1),
(6, 9, 4),
(7, 16, 10),
(8, 12, 1),
(9, 30, 5),
(10, 13, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_user_task`
--

CREATE TABLE `tbl_user_task` (
  `id_user_task` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_task` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_user_task`
--

INSERT INTO `tbl_user_task` (`id_user_task`, `id_user`, `id_task`) VALUES
(1, 12, 2),
(2, 23, 9),
(3, 7, 1),
(4, 10, 5),
(5, 2, 9),
(6, 5, 6),
(7, 14, 8),
(8, 28, 1),
(9, 30, 3),
(10, 17, 4),
(11, 12, 2),
(12, 23, 9),
(13, 7, 1),
(14, 10, 5),
(15, 2, 9),
(16, 5, 6),
(17, 14, 8),
(18, 28, 1),
(19, 30, 3),
(20, 17, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`id_course`);

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_history`
--
ALTER TABLE `tbl_history`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_project` (`id_project`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`id_project`);

--
-- Indexes for table `tbl_task`
--
ALTER TABLE `tbl_task`
  ADD PRIMARY KEY (`id_task`),
  ADD KEY `id_project` (`id_project`);

--
-- Indexes for table `tbl_task_file`
--
ALTER TABLE `tbl_task_file`
  ADD PRIMARY KEY (`id_task_file`),
  ADD KEY `id_file` (`id_file`),
  ADD KEY `id_task` (`id_task`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`id_teacher`);

--
-- Indexes for table `tbl_teacher_project`
--
ALTER TABLE `tbl_teacher_project`
  ADD PRIMARY KEY (`id_teacher_project`),
  ADD KEY `id_teacher` (`id_teacher`),
  ADD KEY `id_project` (`id_project`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_course`
--
ALTER TABLE `tbl_user_course`
  ADD PRIMARY KEY (`id_user_course`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_course` (`id_course`);

--
-- Indexes for table `tbl_user_project`
--
ALTER TABLE `tbl_user_project`
  ADD PRIMARY KEY (`id_user_project`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_project` (`id_project`);

--
-- Indexes for table `tbl_user_task`
--
ALTER TABLE `tbl_user_task`
  ADD PRIMARY KEY (`id_user_task`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_task` (`id_task`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `id_course` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_history`
--
ALTER TABLE `tbl_history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_task`
--
ALTER TABLE `tbl_task`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_task_file`
--
ALTER TABLE `tbl_task_file`
  MODIFY `id_task_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `id_teacher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tbl_teacher_project`
--
ALTER TABLE `tbl_teacher_project`
  MODIFY `id_teacher_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tbl_user_course`
--
ALTER TABLE `tbl_user_course`
  MODIFY `id_user_course` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_user_project`
--
ALTER TABLE `tbl_user_project`
  MODIFY `id_user_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_user_task`
--
ALTER TABLE `tbl_user_task`
  MODIFY `id_user_task` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD CONSTRAINT `tbl_file_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbl_history`
--
ALTER TABLE `tbl_history`
  ADD CONSTRAINT `tbl_history_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_history_ibfk_2` FOREIGN KEY (`id_project`) REFERENCES `tbl_project` (`id_project`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbl_task`
--
ALTER TABLE `tbl_task`
  ADD CONSTRAINT `tbl_task_ibfk_1` FOREIGN KEY (`id_project`) REFERENCES `tbl_project` (`id_project`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbl_task_file`
--
ALTER TABLE `tbl_task_file`
  ADD CONSTRAINT `tbl_task_file_ibfk_1` FOREIGN KEY (`id_file`) REFERENCES `tbl_file` (`id_file`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_task_file_ibfk_2` FOREIGN KEY (`id_task`) REFERENCES `tbl_task` (`id_task`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbl_teacher_project`
--
ALTER TABLE `tbl_teacher_project`
  ADD CONSTRAINT `tbl_teacher_project_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `tbl_teacher` (`id_teacher`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_teacher_project_ibfk_2` FOREIGN KEY (`id_project`) REFERENCES `tbl_project` (`id_project`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbl_user_course`
--
ALTER TABLE `tbl_user_course`
  ADD CONSTRAINT `tbl_user_course_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_user_course_ibfk_2` FOREIGN KEY (`id_course`) REFERENCES `tbl_course` (`id_course`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbl_user_project`
--
ALTER TABLE `tbl_user_project`
  ADD CONSTRAINT `tbl_user_project_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_user_project_ibfk_2` FOREIGN KEY (`id_project`) REFERENCES `tbl_project` (`id_project`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `tbl_user_task`
--
ALTER TABLE `tbl_user_task`
  ADD CONSTRAINT `tbl_user_task_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_user_task_ibfk_3` FOREIGN KEY (`id_task`) REFERENCES `tbl_task` (`id_task`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
