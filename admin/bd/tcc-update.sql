-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.17 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para tcc
CREATE DATABASE IF NOT EXISTS `tcc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tcc`;


-- Copiando estrutura para tabela tcc.atadefesa
CREATE TABLE IF NOT EXISTS `atadefesa` (
  `idAtaDefesa` int(11) NOT NULL AUTO_INCREMENT,
  `idgrupo` int(11) NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `prof1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `prof2` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `prof3` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dia` date NOT NULL,
  `hora` time NOT NULL,
  `status` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  PRIMARY KEY (`idAtaDefesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.atadefesa: ~0 rows (aproximadamente)
DELETE FROM `atadefesa`;
/*!40000 ALTER TABLE `atadefesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `atadefesa` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.avisos
CREATE TABLE IF NOT EXISTS `avisos` (
  `idavisos` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` text COLLATE utf8_unicode_ci,
  `data` date DEFAULT NULL,
  `visto` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `de` int(11) NOT NULL,
  PRIMARY KEY (`idavisos`),
  KEY `fk_avisos_users1_idx1` (`uid`),
  KEY `fk_avisos_users2_idx` (`de`),
  CONSTRAINT `FK_avisos_users` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_avisos_users2` FOREIGN KEY (`de`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.avisos: ~186 rows (aproximadamente)
DELETE FROM `avisos`;
/*!40000 ALTER TABLE `avisos` DISABLE KEYS */;
INSERT INTO `avisos` (`idavisos`, `descricao`, `data`, `visto`, `uid`, `de`) VALUES
	(1, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o solicitada.', '2015-06-08', '1', 12, 1),
	(2, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-06-08', '1', 1, 12),
	(3, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-06-08', '1', 6, 12),
	(4, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-06-08', '0', 7, 12),
	(5, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o aceita.', '2015-06-08', '1', 1, 12),
	(6, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o aceita.', '2015-06-08', '1', 6, 12),
	(7, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o aceita.', '2015-06-08', '0', 7, 12),
	(8, 'O(a) Professor(a) Ana Giancoli desfez parceria com seu grupo pelo seguinte motivo: hahahahahahahahahahahahha', '2015-06-08', '1', 1, 12),
	(9, 'O(a) Professor(a) Ana Giancoli desfez parceria com seu grupo pelo seguinte motivo: hahahahahahahahahahahahha', '2015-06-08', '1', 6, 12),
	(10, 'O(a) Professor(a) Ana Giancoli desfez parceria com seu grupo pelo seguinte motivo: hahahahahahahahahahahahha', '2015-06-08', '0', 7, 12),
	(11, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o solicitada.', '2015-08-07', '1', 12, 1),
	(12, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-08-07', '1', 1, 12),
	(13, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-08-07', '1', 6, 12),
	(14, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-08-07', '0', 7, 12),
	(15, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o aceita.', '2015-08-07', '1', 1, 12),
	(16, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o aceita.', '2015-08-07', '1', 6, 12),
	(17, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o aceita.', '2015-08-07', '0', 7, 12),
	(18, 'O evento Escrever com entrega prevista para 10-12-2015 foi adicionado, confira no cronograma!!!', '2015-08-07', '1', 6, 1),
	(19, 'O evento Escrever com entrega prevista para 10-12-2015 foi adicionado, confira no cronograma!!!', '2015-08-07', '0', 7, 1),
	(20, 'O evento Escrever com entrega prevista para 10-12-2015 foi adicionado, confira no cronograma!!!', '2015-08-07', '1', 12, 1),
	(21, 'O evento Escrever com entrega prevista para 10-12-2015 foi adicionado, confira no cronograma!!!', '2015-08-07', '0', 19, 1),
	(22, 'O evento Lista de detalhes para elaboração TCC com entrega prevista para 14-10-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(23, 'O evento Lista de detalhes para elaboração TCC com entrega prevista para 14-10-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(24, 'O evento Lista de detalhes para elaboração TCC com entrega prevista para 14-10-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(25, 'O evento Lista de detalhes para elaboração TCC com entrega prevista para 14-10-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(26, 'O evento Lista de desempenho com entrega prevista para 13-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(27, 'O evento Lista de desempenho com entrega prevista para 13-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(28, 'O evento Lista de desempenho com entrega prevista para 13-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(29, 'O evento Lista de desempenho com entrega prevista para 13-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(30, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(31, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(32, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(33, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(34, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(35, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(36, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(37, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(38, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(39, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(40, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(41, 'O evento Reunião de grupo com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(42, 'O evento Revisão Bibliografica com entrega prevista para 15-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(43, 'O evento Revisão Bibliografica com entrega prevista para 15-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(44, 'O evento Revisão Bibliografica com entrega prevista para 15-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(45, 'O evento Revisão Bibliografica com entrega prevista para 15-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(46, 'O grupo precisa elaborar a revisão com prazo apertado, sugiro começar a elaborar agora.', '2015-08-09', '1', 1, 12),
	(47, 'O grupo precisa elaborar a revisão com prazo apertado, sugiro começar a elaborar agora.', '2015-08-09', '1', 6, 12),
	(48, 'O grupo precisa elaborar a revisão com prazo apertado, sugiro começar a elaborar agora.', '2015-08-09', '0', 7, 12),
	(49, 'O grupo precisa elaborar a revisão com prazo apertado, sugiro começar a elaborar agora.', '2015-08-09', '0', 19, 12),
	(50, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(51, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(52, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(53, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(54, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(55, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(56, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(57, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(58, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(59, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(60, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(61, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(62, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(63, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(64, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(65, 'O evento Conteudo programatico com entrega prevista para 11-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(66, 'O evento Correção do cronograma com entrega prevista para 15-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(67, 'O evento Correção do cronograma com entrega prevista para 15-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(68, 'O evento Correção do cronograma com entrega prevista para 15-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(69, 'O evento Correção do cronograma com entrega prevista para 15-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(70, 'O evento Correção do cronograma com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 1, 12),
	(71, 'O evento Correção do cronograma com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '1', 6, 12),
	(72, 'O evento Correção do cronograma com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 7, 12),
	(73, 'O evento Correção do cronograma com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-09', '0', 19, 12),
	(74, 'O evento Cronograma e Gráficos com entrega prevista para 25-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(75, 'O evento Cronograma e Gráficos com entrega prevista para 25-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 6, 12),
	(76, 'O evento Cronograma e Gráficos com entrega prevista para 25-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(77, 'O evento Cronograma e Gráficos com entrega prevista para 25-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(78, 'O evento Detalhes do projeto com entrega prevista para 15-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(79, 'O evento Detalhes do projeto com entrega prevista para 15-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 6, 12),
	(80, 'O evento Detalhes do projeto com entrega prevista para 15-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(81, 'O evento Detalhes do projeto com entrega prevista para 15-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(82, 'Meninos fiquem atentos ao evento de aprovação de hoje 11-08-2015, principalmente você Everton.', '2015-08-10', '1', 1, 12),
	(83, 'Meninos fiquem atentos ao evento de aprovação de hoje 11-08-2015, principalmente você Everton.', '2015-08-10', '1', 6, 12),
	(84, 'Meninos fiquem atentos ao evento de aprovação de hoje 11-08-2015, principalmente você Everton.', '2015-08-10', '0', 7, 12),
	(85, 'Meninos fiquem atentos ao evento de aprovação de hoje 11-08-2015, principalmente você Everton.', '2015-08-10', '0', 19, 12),
	(86, 'O evento reuniao com entrega prevista para 10-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(87, 'O evento reuniao com entrega prevista para 10-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 6, 12),
	(88, 'O evento reuniao com entrega prevista para 10-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(89, 'O evento reuniao com entrega prevista para 10-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(90, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 1, 6),
	(91, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 7, 6),
	(92, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 12, 6),
	(93, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 19, 6),
	(94, 'O evento Revisar monografia com entrega prevista para 25-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 1, 6),
	(95, 'O evento Revisar monografia com entrega prevista para 25-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 7, 6),
	(96, 'O evento Revisar monografia com entrega prevista para 25-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 12, 6),
	(97, 'O evento Revisar monografia com entrega prevista para 25-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 19, 6),
	(98, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o solicitada.', '2015-08-10', '1', 12, 10),
	(99, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-08-10', '0', 8, 12),
	(100, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-08-10', '0', 9, 12),
	(101, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-08-10', '1', 10, 12),
	(103, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-08-10', '0', 8, 12),
	(104, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-08-10', '0', 9, 12),
	(105, 'Sua Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o ao professor foi Visualizada, e est&aacute; sendo analisada mediante sua descri&ccedil;&atilde;o do projeto e disponibilidade do mesmo.', '2015-08-10', '1', 10, 12),
	(106, 'Sua Requisi&ccedil;&atilde;o foi recusada pelo seguinte motivo: dasdasd', '2015-08-10', '0', 8, 12),
	(107, 'Sua Requisi&ccedil;&atilde;o foi recusada pelo seguinte motivo: dasdasd', '2015-08-10', '0', 9, 12),
	(108, 'Sua Requisi&ccedil;&atilde;o foi recusada pelo seguinte motivo: dasdasd', '2015-08-10', '1', 10, 12),
	(109, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o aceita.', '2015-08-10', '0', 8, 12),
	(110, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o aceita.', '2015-08-10', '0', 9, 12),
	(111, 'Requisi&ccedil;&atilde;o de Orienta&ccedil;&atilde;o aceita.', '2015-08-10', '1', 10, 12),
	(112, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(113, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(114, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(115, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(116, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(117, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(118, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(119, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(120, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(121, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(122, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(123, 'O evento Junta a turma com entrega prevista para 10-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(124, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(125, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(126, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(127, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(128, 'O evento Reunião com entrega prevista para 20-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 8, 12),
	(129, 'O evento Reunião com entrega prevista para 20-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 9, 12),
	(130, 'O evento Reunião com entrega prevista para 20-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 10, 12),
	(131, 'O evento Teste unitarios com entrega prevista para 15-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 8, 12),
	(132, 'O evento Teste unitarios com entrega prevista para 15-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 9, 12),
	(133, 'O evento Teste unitarios com entrega prevista para 15-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '1', 10, 12),
	(134, 'O evento Leitura de projeto com entrega prevista para 30-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 8, 12),
	(135, 'O evento Leitura de projeto com entrega prevista para 30-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 9, 12),
	(136, 'O evento Leitura de projeto com entrega prevista para 30-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 10, 12),
	(137, 'O evento ATA com entrega prevista para 12-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 8, 12),
	(138, 'O evento ATA com entrega prevista para 12-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 9, 12),
	(139, 'O evento ATA com entrega prevista para 12-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 10, 12),
	(140, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(141, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(142, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(143, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(144, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(145, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(146, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(147, 'O evento Correção do cronograma com entrega prevista para 16-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(148, 'O evento Teste unitarios com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 8, 12),
	(149, 'O evento Teste unitarios com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 9, 12),
	(150, 'O evento Teste unitarios com entrega prevista para 15-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 10, 12),
	(151, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(152, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(153, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(154, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(155, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(156, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(157, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(158, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(159, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(160, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(161, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(162, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(163, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(164, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(165, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(166, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(167, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(168, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(169, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(170, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(171, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(172, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(173, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(174, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(175, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(176, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(177, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(178, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(179, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '1', 1, 12),
	(180, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 6, 12),
	(181, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 7, 12),
	(182, 'O evento Pesquisar e escrever com entrega prevista para 20-08-2015 foi atualizado, confira no cronograma!!!', '2015-08-10', '0', 19, 12),
	(183, 'O evento Relatorio comite de ética com entrega prevista para 31-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 6, 1),
	(184, 'O evento Relatorio comite de ética com entrega prevista para 31-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 7, 1),
	(185, 'O evento Relatorio comite de ética com entrega prevista para 31-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 12, 1),
	(186, 'O evento Relatorio comite de ética com entrega prevista para 31-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 19, 1),
	(187, 'O evento BD completo com entrega prevista para 24-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 6, 1),
	(188, 'O evento BD completo com entrega prevista para 24-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 7, 1),
	(189, 'O evento BD completo com entrega prevista para 24-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 12, 1),
	(190, 'O evento BD completo com entrega prevista para 24-09-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 19, 1),
	(191, 'O evento Checked point projeto com entrega prevista para 28-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 6, 1),
	(192, 'O evento Checked point projeto com entrega prevista para 28-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 7, 1),
	(193, 'O evento Checked point projeto com entrega prevista para 28-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 12, 1),
	(194, 'O evento Checked point projeto com entrega prevista para 28-08-2015 foi adicionado, confira no cronograma!!!', '2015-08-10', '0', 19, 1);
/*!40000 ALTER TABLE `avisos` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `msg_id_fk` int(11) NOT NULL,
  `uid_fk` int(11) NOT NULL,
  `ip` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `created` int(11) DEFAULT '1269249260',
  PRIMARY KEY (`com_id`),
  KEY `fk_comments_messages1_idx1` (`msg_id_fk`),
  KEY `fk_comments_users1_idx1` (`uid_fk`),
  CONSTRAINT `FK_msg_id` FOREIGN KEY (`msg_id_fk`) REFERENCES `messages` (`msg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_users` FOREIGN KEY (`uid_fk`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.comments: ~27 rows (aproximadamente)
DELETE FROM `comments`;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`com_id`, `comment`, `msg_id_fk`, `uid_fk`, `ip`, `created`) VALUES
	(1, 'My first comment ', 1, 1, '127.0.0.1', 1305209833),
	(26, 'Must watch ', 51, 6, '127.0.0.1', 1305483460),
	(31, 'by Lee Tao', 59, 6, '127.0.0.1', 1305485714),
	(53, 'agora parece que foi', 68, 1, '127.0.0.1', 1421373754),
	(64, 'haha', 94, 6, '127.0.0.1', 1421375625),
	(67, 'Parabéns, vc é o melhor do  melhor do mundo !! haha', 98, 6, '127.0.0.1', 1421377101),
	(68, 'Obrigado, um dia te ensino *--* ', 98, 1, '127.0.0.1', 1421402450),
	(69, 'Obrigado amigo <3', 98, 6, '127.0.0.1', 1421402490),
	(70, 'da hora mesmo !!!', 99, 6, '127.0.0.1', 1421673796),
	(71, 'lindo :D', 99, 7, '127.0.0.1', 1421674045),
	(72, 'Parabéns manow (Y) muito bacana... haha', 99, 8, '127.0.0.1', 1421674945),
	(77, 'Bacana haha', 99, 9, '127.0.0.1', 1427734173),
	(78, 'Oi gata haha', 102, 10, '127.0.0.1', 1427734246),
	(81, 'Botafogo meu amor, minha vidaaaa.. HAHA', 109, 17, '127.0.0.1', 1427927682),
	(85, 'Aiii que tdooo, conte mais sobre esse seu sonho...', 112, 6, '127.0.0.1', 1428416301),
	(86, 'Sé loko', 109, 6, '127.0.0.1', 1428416645),
	(87, 'Pode fica pra outra semana...', 108, 6, '127.0.0.1', 1428416786),
	(90, 'Hummmm, que isso digo.... HAHAHA', 112, 1, '127.0.0.1', 1428417320),
	(93, 'HAHAHAHAHA', 108, 1, '127.0.0.1', 1428426661),
	(94, 'Lokão haha', 104, 1, '127.0.0.1', 1428427125),
	(100, '*--------* vlw minha gente <3', 99, 1, '127.0.0.1', 1428558221),
	(105, 'Nosso grupo é o melhor do melhor do mundo... HAHAHAHA', 126, 1, '127.0.0.1', 1428559206),
	(110, 'Paga pau em florzinha hahaha', 126, 7, '127.0.0.1', 1428785793),
	(111, 'Booooraa haha', 127, 6, '127.0.0.1', 1429231831),
	(112, 'pode cre!!!!', 120, 6, '127.0.0.1', 1431035669),
	(113, 'kjk', 125, 1, '127.0.0.1', 1432680365),
	(114, 'oi gatinhaaa, casa comigo !!??? :D', 127, 15, '127.0.0.1', 1433370930),
	(115, 'capaz msm', 128, 1, '::1', 1438981717);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.cronograma
CREATE TABLE IF NOT EXISTS `cronograma` (
  `idcronograma` int(11) NOT NULL AUTO_INCREMENT,
  `idgrupo` int(11) NOT NULL,
  `aprovado` tinyint(1) NOT NULL DEFAULT '0',
  `analisando` tinyint(1) NOT NULL DEFAULT '0',
  `revisando` tinyint(1) NOT NULL DEFAULT '0',
  `enviado` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idcronograma`),
  UNIQUE KEY `idgrupo` (`idgrupo`),
  KEY `idgrupo_2` (`idgrupo`),
  CONSTRAINT `cronograma_grupo` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.cronograma: ~2 rows (aproximadamente)
DELETE FROM `cronograma`;
/*!40000 ALTER TABLE `cronograma` DISABLE KEYS */;
INSERT INTO `cronograma` (`idcronograma`, `idgrupo`, `aprovado`, `analisando`, `revisando`, `enviado`) VALUES
	(22, 44, 0, 1, 0, 1),
	(23, 45, 0, 1, 0, 1);
/*!40000 ALTER TABLE `cronograma` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.desistenciaaluno
CREATE TABLE IF NOT EXISTS `desistenciaaluno` (
  `idDesistencia` int(11) NOT NULL AUTO_INCREMENT,
  `idUsers` int(11) NOT NULL,
  `idGrupo` int(11) NOT NULL,
  `motivo` int(11) NOT NULL,
  `dataDesistencia` date NOT NULL,
  `descricao` text COLLATE utf32_unicode_ci NOT NULL,
  PRIMARY KEY (`idDesistencia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Copiando dados para a tabela tcc.desistenciaaluno: ~0 rows (aproximadamente)
DELETE FROM `desistenciaaluno`;
/*!40000 ALTER TABLE `desistenciaaluno` DISABLE KEYS */;
INSERT INTO `desistenciaaluno` (`idDesistencia`, `idUsers`, `idGrupo`, `motivo`, `dataDesistencia`, `descricao`) VALUES
	(4, 1, 39, 1, '2015-06-08', 'Porque eu cansei de voces, seus lixos, cocos estrumes de bosta de vaca HAHAHA beijos me liga...');
/*!40000 ALTER TABLE `desistenciaaluno` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.desistenciaprof
CREATE TABLE IF NOT EXISTS `desistenciaprof` (
  `idDesistencia` int(11) NOT NULL AUTO_INCREMENT,
  `idUsers` int(11) NOT NULL,
  `idGrupo` int(11) NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `dataDesistencia` date NOT NULL,
  `motivo` int(11) NOT NULL,
  PRIMARY KEY (`idDesistencia`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.desistenciaprof: ~0 rows (aproximadamente)
DELETE FROM `desistenciaprof`;
/*!40000 ALTER TABLE `desistenciaprof` DISABLE KEYS */;
INSERT INTO `desistenciaprof` (`idDesistencia`, `idUsers`, `idGrupo`, `descricao`, `dataDesistencia`, `motivo`) VALUES
	(5, 12, 43, 'hahahahahahahahahahahahha', '2015-06-08', 1);
/*!40000 ALTER TABLE `desistenciaprof` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.evento
CREATE TABLE IF NOT EXISTS `evento` (
  `idEvento` int(11) NOT NULL AUTO_INCREMENT,
  `idGrupo` int(11) NOT NULL,
  `participantes` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `allday` tinyint(1) NOT NULL DEFAULT '1',
  `nomeEvento` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `idcronograma` int(11) NOT NULL,
  `idTipoEvento` int(11) NOT NULL,
  `concluido` tinyint(1) NOT NULL DEFAULT '0',
  `data_conclusao` datetime DEFAULT NULL,
  PRIMARY KEY (`idEvento`),
  KEY `idGrupo` (`idGrupo`,`idcronograma`),
  KEY `idcronograma` (`idcronograma`),
  CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`idcronograma`) REFERENCES `cronograma` (`idcronograma`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.evento: ~14 rows (aproximadamente)
DELETE FROM `evento`;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` (`idEvento`, `idGrupo`, `participantes`, `start`, `end`, `allday`, `nomeEvento`, `descricao`, `idcronograma`, `idTipoEvento`, `concluido`, `data_conclusao`) VALUES
	(128, 44, '7,12', '2015-08-15 00:00:00', '2015-09-15 00:00:00', 1, 'Revisão Bibliografica', 'Elaboração da revisão bibliográfica, fazer sobre supervisão da Orientadora.', 22, 4, 1, '2015-08-10 14:20:30'),
	(129, 44, '12,6', '2015-08-09 00:00:00', '2015-08-11 00:00:00', 1, 'Conteudo programatico', 'Aprovação de conteúdo programático, enfasê nas etapas 2 e 3.', 22, 3, 1, '2015-08-10 21:45:56'),
	(130, 44, '12,6', '2015-08-11 00:00:00', '2015-08-16 00:00:00', 1, 'Correção do cronograma', 'Correção do modelo de  cronograma do trabalho. Efetivas comits até data limite. ', 22, 8, 1, NULL),
	(131, 44, '6,1', '2015-08-10 00:00:00', '2015-08-25 00:00:00', 1, 'Cronograma e Gráficos', 'Elaboração de cronograma e gráficos.\nCronograma: \nAgendamento de tarefas determinadas por grupos de acesso a cada tarefa. \nGrupo de tarefas pré determinado.\nUtilizar fullcalender.\nGráficos de acompanhamentos dos períodos do cronograma.\n', 22, 6, 1, '2015-08-10 23:38:19'),
	(132, 44, '12', '2015-08-30 00:00:00', '2015-09-15 00:00:00', 1, 'Detalhes do projeto', 'Analise para aprovação dos detalhes do projeto.', 22, 3, 0, NULL),
	(133, 44, '7,12,6,1', '2015-08-10 10:35:00', '2015-08-10 11:35:00', 0, 'Junta a turma', 'Reunião para controle de progresso', 22, 2, 1, '2015-08-10 23:38:24'),
	(134, 44, '7,12', '2015-08-10 00:00:00', '2015-08-20 00:00:00', 1, 'Pesquisar e escrever', 'Pesquisa e escrita sobre o web services.ESTE', 22, 4, 0, NULL),
	(135, 44, '12,6,1', '2015-08-21 00:00:00', '2015-08-25 00:00:00', 1, 'Revisar monografia', 'Revisão dos textos da Ana.', 22, 5, 0, NULL),
	(137, 45, '12,9,10', '2015-08-10 00:00:00', '2015-08-15 00:00:00', 1, 'Teste unitarios', 'Realizar testes unitários.', 23, 6, 1, NULL),
	(138, 45, '12,8', '2015-08-25 00:00:00', '2015-08-30 00:00:00', 1, 'Leitura de projeto', 'Leitura e aprovação de projetos para elaboração do TCC.', 23, 3, 0, NULL),
	(139, 45, '12,9,10,8', '2015-08-12 15:30:00', '2015-08-12 16:30:00', 0, 'ATA', 'Reunião para decisões de projetos, ATA obrigatória.', 23, 2, 0, NULL),
	(140, 44, '7', '2015-08-21 00:00:00', '2015-08-31 00:00:00', 1, 'Relatorio comite de ética', 'Comité de ética.', 22, 7, 0, NULL),
	(141, 44, '1,19', '2015-09-15 00:00:00', '2015-09-24 00:00:00', 1, 'BD completo', 'BD completo.', 22, 6, 0, NULL),
	(142, 44, '7,12', '2015-08-21 00:00:00', '2015-08-28 00:00:00', 1, 'Checked point projeto', 'Analisar e checar todo o projeto ate o momento.', 22, 5, 0, NULL);
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.grupo
CREATE TABLE IF NOT EXISTS `grupo` (
  `idgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `dataCriacao` date NOT NULL,
  `titulo` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `objetivoGeral` text COLLATE utf8_unicode_ci,
  `objetivoEspecifico` text COLLATE utf8_unicode_ci,
  `justificativa` text COLLATE utf8_unicode_ci,
  `tipodePesquisa` text COLLATE utf8_unicode_ci,
  `metodologia` text COLLATE utf8_unicode_ci,
  `resultadoEsperado` text COLLATE utf8_unicode_ci,
  `fraselema` text COLLATE utf8_unicode_ci,
  `aceito` int(1) NOT NULL DEFAULT '0' COMMENT 'representa se o professor aceitou ou não orientar esse grupo',
  `visto` int(1) NOT NULL DEFAULT '0' COMMENT 'representa se o professor visualizou o requerimento',
  `recusado` int(1) NOT NULL DEFAULT '0' COMMENT 'representa se o professor recusou ou não o grupo',
  `revisando` int(1) NOT NULL DEFAULT '0' COMMENT 'representa se a requisicao esta sendo reavaliada para maiores informações',
  `preProjeto` int(1) NOT NULL DEFAULT '0' COMMENT 'utilizado para controle de tela, para forçar o aluno a cadastrar o pre projeto',
  `cronograma` int(1) NOT NULL DEFAULT '0' COMMENT 'utilizado no controle de tela para forçar o aluno a cadastrar o cronograma apos o pre projeto',
  PRIMARY KEY (`idgrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.grupo: ~2 rows (aproximadamente)
DELETE FROM `grupo`;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` (`idgrupo`, `dataCriacao`, `titulo`, `descricao`, `objetivoGeral`, `objetivoEspecifico`, `justificativa`, `tipodePesquisa`, `metodologia`, `resultadoEsperado`, `fraselema`, `aceito`, `visto`, `recusado`, `revisando`, `preProjeto`, `cronograma`) VALUES
	(44, '2015-08-07', 'Workflow', 'ahuahuahauhauhua', 'huahuhauh', 'ahuahuah', 'hauahuahau', 'hauhuhauha', 'ahuhauhau', 'ahuahuah', NULL, 1, 1, 0, 0, 0, 0),
	(45, '2015-08-10', 'Web', 'dasdasdads', 'adsasd', 'adsasd', 'asdasd', 'asdasd', 'asdasd', 'asdads', NULL, 1, 1, 0, 0, 0, 0);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.grupo_has_users
CREATE TABLE IF NOT EXISTS `grupo_has_users` (
  `idgrupo` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `tipo` int(1) NOT NULL COMMENT 'representa o tipo do individuou 1=aluno,2=orientador,3=coorientador',
  PRIMARY KEY (`idgrupo`,`uid`),
  KEY `fk_grupo_has_users_users1_idx` (`uid`),
  KEY `fk_grupo_has_users_grupo_idx` (`idgrupo`),
  CONSTRAINT `FK_grupo_has_users_grupo` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_grupo_has_users_users` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.grupo_has_users: ~9 rows (aproximadamente)
DELETE FROM `grupo_has_users`;
/*!40000 ALTER TABLE `grupo_has_users` DISABLE KEYS */;
INSERT INTO `grupo_has_users` (`idgrupo`, `uid`, `tipo`) VALUES
	(44, 1, 1),
	(44, 6, 1),
	(44, 7, 1),
	(44, 12, 2),
	(44, 19, 3),
	(45, 8, 1),
	(45, 9, 1),
	(45, 10, 1),
	(45, 12, 2);
/*!40000 ALTER TABLE `grupo_has_users` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.likes
CREATE TABLE IF NOT EXISTS `likes` (
  `idlikes` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  PRIMARY KEY (`idlikes`),
  KEY `uid` (`uid`),
  KEY `msg_id` (`msg_id`),
  CONSTRAINT `fk_msg` FOREIGN KEY (`msg_id`) REFERENCES `messages` (`msg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.likes: ~13 rows (aproximadamente)
DELETE FROM `likes`;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` (`idlikes`, `uid`, `msg_id`) VALUES
	(6, 2, 128),
	(7, 3, 128),
	(21, 6, 128),
	(24, 6, 127),
	(25, 6, 120),
	(27, 17, 128),
	(28, 17, 120),
	(29, 1, 128),
	(30, 12, 128),
	(31, 8, 128),
	(32, 9, 128),
	(33, 9, 127),
	(34, 15, 128),
	(35, 1, 125);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.mensagens
CREATE TABLE IF NOT EXISTS `mensagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_de` int(11) NOT NULL,
  `id_para` int(11) NOT NULL,
  `mensagem` varchar(255) CHARACTER SET latin1 NOT NULL,
  `data` datetime NOT NULL,
  `lido` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.mensagens: ~39 rows (aproximadamente)
DELETE FROM `mensagens`;
/*!40000 ALTER TABLE `mensagens` DISABLE KEYS */;
INSERT INTO `mensagens` (`id`, `id_de`, `id_para`, `mensagem`, `data`, `lido`) VALUES
	(1, 3, 1, 'OlÃ¡ fabio, tudo bem?', '2013-09-11 08:07:00', 1),
	(2, 1, 4, 'dddd', '2015-01-16 08:29:14', 0),
	(3, 1, 3, 'hg', '2015-01-16 08:46:22', 1),
	(4, 1, 3, 'vai indo mano e vc?', '2015-01-16 08:47:09', 1),
	(5, 3, 1, 'haha', '2015-01-16 13:20:22', 1),
	(6, 3, 1, 'bom tbm', '2015-01-16 13:20:31', 1),
	(7, 3, 1, 'kkk', '2015-01-16 13:20:36', 1),
	(8, 3, 1, 'tttt', '2015-01-16 13:35:47', 1),
	(9, 1, 3, 'legal', '2015-01-16 13:39:03', 0),
	(10, 1, 6, 'ola amigo', '0000-00-00 00:00:00', 1),
	(11, 1, 6, 'fala cmg pelo amor de deus', '0000-00-00 00:00:00', 1),
	(12, 6, 1, 'to falando mano', '0000-00-00 00:00:00', 1),
	(13, 6, 1, 'hahaha', '0000-00-00 00:00:00', 1),
	(14, 6, 7, 'ee', '0000-00-00 00:00:00', 1),
	(15, 6, 8, 'ee', '0000-00-00 00:00:00', 1),
	(16, 8, 1, 'pq esse merda ta zuada ?', '0000-00-00 00:00:00', 1),
	(17, 8, 6, 'que lixo', '0000-00-00 00:00:00', 1),
	(18, 1, 8, 'consegui arrumar mano relaxa ai', '0000-00-00 00:00:00', 1),
	(19, 1, 8, 'hahaha', '0000-00-00 00:00:00', 1),
	(20, 1, 6, 'eee', '0000-00-00 00:00:00', 1),
	(21, 1, 6, 'd', '0000-00-00 00:00:00', 1),
	(22, 1, 6, 'dcdccd', '0000-00-00 00:00:00', 1),
	(23, 6, 1, 'haha', '0000-00-00 00:00:00', 1),
	(24, 1, 6, 's', '0000-00-00 00:00:00', 1),
	(25, 1, 7, 'oi ana', '0000-00-00 00:00:00', 1),
	(26, 1, 6, 'oi', '0000-00-00 00:00:00', 1),
	(27, 6, 1, 'oi pra vc tbm', '0000-00-00 00:00:00', 1),
	(28, 1, 6, 's', '0000-00-00 00:00:00', 1),
	(29, 1, 6, 'hashahshahas', '0000-00-00 00:00:00', 1),
	(30, 1, 6, 'ola', '0000-00-00 00:00:00', 1),
	(31, 21, 6, 'Oi seu viado', '0000-00-00 00:00:00', 1),
	(32, 1, 8, 'ei man', '0000-00-00 00:00:00', 1),
	(33, 1, 8, 'blz?', '0000-00-00 00:00:00', 1),
	(34, 1, 11, 'oi mãe', '0000-00-00 00:00:00', 1),
	(35, 1, 11, 'o', '0000-00-00 00:00:00', 1),
	(36, 1, 11, 'como vc ta maãe', '0000-00-00 00:00:00', 1),
	(37, 11, 1, 'to bem', '0000-00-00 00:00:00', 1),
	(38, 1, 6, 'bo', '0000-00-00 00:00:00', 1),
	(39, 1, 7, 'oiiii', '0000-00-00 00:00:00', 1);
/*!40000 ALTER TABLE `mensagens` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `uid_fk` int(11) NOT NULL,
  `ip` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `created` int(11) DEFAULT '1269249260',
  PRIMARY KEY (`msg_id`),
  KEY `ip` (`ip`),
  KEY `fk_messages_users1_idx` (`uid_fk`),
  CONSTRAINT `Fk_users_udi` FOREIGN KEY (`uid_fk`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.messages: ~24 rows (aproximadamente)
DELETE FROM `messages`;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` (`msg_id`, `message`, `uid_fk`, `ip`, `created`) VALUES
	(1, 'Hello', 1, '127.0.0.1', 1305209778),
	(2, 'My little blog http://9lessons.info', 1, '127.0.0.1', 1305209846),
	(51, 'Thought of You http://vimeo.com/14803194', 1, '127.0.0.1', 1305483243),
	(59, 'SEEDLING http://vimeo.com/22912215', 1, '127.0.0.1', 1305485602),
	(64, 'teste certo', 1, '127.0.0.1', 1421328675),
	(65, 'defefe', 1, '127.0.0.1', 1421329017),
	(68, 'httt', 1, '127.0.0.1', 1421335189),
	(94, 'Hello Word ! Vamos testar nosso post, comente... rsrs', 6, '127.0.0.1', 1421374355),
	(98, 'Rede social em funcionamento !!!', 1, '127.0.0.1', 1421377059),
	(99, 'Mano ta ficando legal...', 1, '127.0.0.1', 1421673651),
	(101, 'ola mundo', 1, '127.0.0.1', 1426285015),
	(102, 'oi', 11, '127.0.0.1', 1426290855),
	(104, 'Que das hora...', 9, '127.0.0.1', 1427734186),
	(106, 'Olá mundo...', 12, '127.0.0.1', 1427754496),
	(108, 'Artigo pra semana que vem pessoal...', 14, '127.0.0.1', 1427771332),
	(109, 'Vaiii curinthiaaaaa... haha', 15, '127.0.0.1', 1427919100),
	(112, 'Sonhei com pepinosss.... hummmm', 8, '127.0.0.1', 1427983735),
	(115, 'Ta froids', 11, '127.0.0.1', 1428001032),
	(116, 'Pelo amor de deus...', 6, '127.0.0.1', 1428416837),
	(120, 'Bootstrap é oque há... rsrsrs Ta fununciando mlk <3', 1, '127.0.0.1', 1428421557),
	(125, 'Pessoal, vamos fazer as gravações aqui pro meu tcc pooww.. hahahahahahahahahahahahahahahahaha hahahahahahahahaha hahahahahahahahaha hahahahahahahahaha hahahahahahahahaha hahahahahahahahaha hahahahahah', 18, '127.0.0.1', 1428429789),
	(126, 'Facebook do IFSP HAHAHA kkkk', 15, '127.0.0.1', 1428454260),
	(127, '#Partiu Paratti haha', 7, '127.0.0.1', 1428785816),
	(128, 'Eu sou um gordinho gostoso, gordinhoo gostosoooo haha', 9, '127.0.0.1', 1428791672);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.tipoevento
CREATE TABLE IF NOT EXISTS `tipoevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'black',
  `textcolor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.tipoevento: ~8 rows (aproximadamente)
DELETE FROM `tipoevento`;
/*!40000 ALTER TABLE `tipoevento` DISABLE KEYS */;
INSERT INTO `tipoevento` (`id`, `nome`, `imagem`, `color`, `textcolor`) VALUES
	(1, 'Pesquisas', '<i class=\'fa fa-search\'></i>', '#87CEEB', '#FFF'),
	(2, 'Reunião', '<i class=\'fa fa-users\'></i>', '#FF8C00', '#FFF'),
	(3, 'Aprovação', '<i class=\'fa fa-check-square\'></i>', '#00FF7F', '#FFF'),
	(4, 'Monografia', '<i class=\'fa fa-pencil-square\'></i>', '#EEAEEE', '#FFF'),
	(5, 'Revisão', '<i class=\'fa fa-eye\'></i>', '#FF3030', '#FFF'),
	(6, 'Produção/Programação', '<i class=\'fa fa-file-code-o\'></i>', '#000', '#FFF'),
	(7, 'Comissão de Ética', '<i class=\'fa fa-paperclip\'></i>', '#E6E6FA', '#FFF'),
	(8, 'Outros', '<i class=\'fa fa-asterisk\'></i>', '#1E90FF', '#FFF');
/*!40000 ALTER TABLE `tipoevento` ENABLE KEYS */;


-- Copiando estrutura para tabela tcc.users
CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(44) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `prontuario` int(11) NOT NULL,
  `fotouser` varchar(100) CHARACTER SET latin1 NOT NULL,
  `horario` datetime NOT NULL,
  `limite` datetime NOT NULL,
  `descricao` text CHARACTER SET latin1,
  `cargo` varchar(100) CHARACTER SET latin1 NOT NULL,
  `tipo` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela tcc.users: ~23 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`uid`, `username`, `password`, `email`, `prontuario`, `fotouser`, `horario`, `limite`, `descricao`, `cargo`, `tipo`) VALUES
	(1, 'Leonardo Martins', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'leo.piracaia@hotmail.com', 1262751, 'fotoUser/thumbnail_1427732986.jpg', '2015-08-10 23:32:25', '2015-08-10 23:34:25', 'Programador Júnior, Formando em Análise e Desenvolvimento de Sistemas', 'Aluno', 0),
	(2, '-----', '123', '-----', 0, 'fotoUser/padraoUser.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Admin', 'Admin', 0),
	(3, '-----', '123', '-----', 0, 'fotoUser/padraoUser.jpg', '2015-04-07 00:00:00', '2015-04-07 00:00:00', 'Admin', 'Admin', 0),
	(6, 'Everton de Paula', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'everton.projetos@gmail.com', 0, 'fotoUser/thumbnail_1427733642.jpg', '2015-08-10 14:42:34', '2015-08-10 14:44:34', 'teste', 'Aluno', 0),
	(7, 'Ana carolina', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ana@hotmail.com', 0, 'fotoUser/thumbnail_1427733717.jpg', '2015-06-02 11:01:24', '2015-06-02 11:03:24', 'teste', 'Aluno', 0),
	(8, 'Rodrigo Adolfo', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'rodrigo@hotmail.com', 0, 'fotoUser/thumbnail_1427733865.jpg', '2015-06-01 18:57:34', '2015-06-01 18:59:34', 'teste', 'Aluno', 0),
	(9, 'Marcio Vianna', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'marcio@hotmail.com', 111111111, 'fotoUser/thumbnail_1427734132.jpg', '2015-06-03 15:05:08', '2015-06-03 15:07:08', 'teste', 'Aluno', 0),
	(10, 'Marcos Martins', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'marcosevmartins@gmail.com', 22222222, 'fotoUser/thumbnail_1427734208.jpg', '2015-08-10 20:32:13', '2015-08-10 20:34:13', 'Programador e Analista de Sistemas', 'Aluno', 0),
	(11, 'Claudia Martins', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'claubmartins@gmail.com', 3333333, 'fotoUser/thumbnail_1427733083.jpg', '2015-04-02 16:08:10', '2015-04-02 16:10:10', 'teste', 'Aluno', 0),
	(12, 'Ana Giancoli', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'paulagiancoli@gmail.com', 1234567, 'fotoUser/thumbnail_1427754341.jpg', '2015-08-10 21:32:25', '2015-08-10 21:34:25', 'teste', 'Professor', 1),
	(14, 'Jefferson de Souza', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'jeff@hotmail.com', 1234567, 'fotoUser/thumbnail_1427771298.jpg', '2015-03-30 19:28:05', '2015-03-30 19:30:05', 'Prof. Dr. Jefferson de Souza Pinto\r\nDoutor em Engenharia Mecânica - DEF/FEM/UNICAMP\r\nPós-doutor em Engenharia Mecânica - DEMM/FEM/UNICAMP\r\nPós-doutorando em Engenharia Mecânica - DEMM/FEM/UNICAMP\r\nInstituto Federal de São Paulo - Campus Bragança Paulista', 'Professor', 1),
	(15, 'João Paulo', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'joaolds@gmail.com', 1234567, 'fotoUser/thumbnail_1427919145.jpg', '2015-06-03 19:35:32', '2015-06-03 19:37:32', NULL, 'Aluno', 0),
	(17, 'Mauro Mazzola', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'mauro@hotmail.com', 1234567, 'fotoUser/thumbnail_1427919031.jpg', '2015-06-02 10:22:47', '2015-06-02 10:24:47', NULL, 'Aluno', 0),
	(18, 'André Lemme', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'andre@hotmail.com', 1234567, 'fotoUser/thumbnail_1427920239.png', '2015-04-15 18:52:49', '2015-04-15 18:54:49', 'Enquetes - Servidores , Coordenadoria de Extensão - Uso Interno, Coordenação do Curso de ADS, Coordenadoria de Área - Informática, Coordenação de Pesquisa (2015), Engenharia de Software - ESWI2, Projeto de Sistemas II - PS2I6, Gerencia de Projetos - GPSIIP3, Treinamento Professor', 'Professor', 1),
	(19, 'Wilson Vendramel', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'vendramel@hotmail.com', 1234567, 'fotoUser/thumbnail_1427920193.png', '2015-06-03 15:04:10', '2015-06-03 15:06:10', 'Professor e Coordenador ADS Enquetes - Servidores , Coordenadoria de Extensão - Uso Interno, Coordenação do Curso de ADS, Coordenadoria de Área - Informática, Coordenação de Pesquisa (2015), Análise Orientada a Objetos - AOOI3, Arquitetura de Software - ASWI4, Qualidade de Software - QSWI5, Treinamento Professor, Alunos ADS', 'Coordenador ADS', 1),
	(20, 'André Panhan', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'apanhan@gmail.com', 1234567, 'fotoUser/thumbnail_1427930009.png', '2015-04-02 20:28:43', '2015-04-02 20:30:43', 'Enquetes - Servidores , Coordenadoria de Extensão - Uso Interno, Coordenação do Curso de ADS, Coordenadoria de Área - Informática, Coordenação de Pesquisa (2015), Desenvolvimento para Web II - DW2A6, Programação Orientada a Objetos - POOI4, Treinamento Professor', 'Professor', 1),
	(21, 'Luciano Bernardes', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'luciano@hotmail.com', 1234567, 'fotoUser/thumbnail_1427930133.png', '2015-04-15 19:53:26', '2015-04-15 19:55:26', 'Enquetes - Servidores , Coordenadoria de Extensão - Uso Interno, Coordenação do Curso de ADS, Coordenadoria de Área - Informática, Coordenação de Pesquisa (2015), Segurança e Auditoria de Sistemas - SEGA6, Linguagem de Programação I - LP1I1, Serviços de Rede - SSRI5, Eletiva I - EL1I5, Treinamento Professor', 'Professor', 1),
	(22, 'Marcel Zacarias', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'marcel@hotmail.com', 111111111, 'fotoUser/thumbnail_1428453049.jpg', '2015-08-10 22:46:33', '2015-08-10 22:48:33', NULL, 'Aluno', 0),
	(23, 'Eliane Andreoli', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'eliane@hotmail.com', 1234567, 'fotoUser/thumbnail_1428721478.jpg', '2015-04-11 00:05:20', '2015-04-11 00:07:20', 'Professora de Português e Inglês', 'Professor', 1),
	(24, 'Rosalvo Soares C. Filho', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'rosalvo@hotmail.com', 123456, 'fotoUser/thumbnail_1429109792.jpg', '2015-04-15 11:56:49', '2015-04-15 11:58:49', 'Professor de Redes de Computadores', 'Professor', 1),
	(25, 'Ana Cristina Gobbo César', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'anacristina@hotmail.com', 1234567, 'fotoUser/thumbnail_1429109742.jpg', '2015-04-15 11:55:59', '2015-04-15 11:57:59', 'Professora de TCC', 'Professor', 1),
	(26, 'Bianca Maria Pedrosa', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'bianca@hotmail.com', 1234567, 'fotoUser/thumbnail_1429109829.jpg', '2015-04-15 11:57:30', '2015-04-15 11:59:30', 'Professora de WEB', 'Professor', 1),
	(27, 'Flavio César Amate', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'flavio@hotmail.com', 1234567, 'fotoUser/thumbnail_1429109684.jpg', '2015-04-15 11:55:06', '2015-04-15 11:57:06', 'Professor de Matemática', 'Professor', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
