-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 29/04/2020 às 04:28
-- Versão do servidor: 5.7.27
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemaDeCadatro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `postagens`
--

CREATE TABLE `postagens` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `conteudo` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `postagens`
--

INSERT INTO `postagens` (`id`, `titulo`, `conteudo`, `createdAt`, `updatedAt`) VALUES
(1, 'Post 01', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum amet nam dolorem harum. Nesciunt vero possimus odio, nostrum quis minus cumque hic! Accusantium odio iste nesciunt aliquam sequi iusto saepe.', '2020-04-29 04:24:51', '2020-04-29 04:24:51'),
(2, 'Post 02', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum amet nam dolorem harum. Nesciunt vero possimus odio, nostrum quis minus cumque hic! Accusantium odio iste nesciunt aliquam sequi iusto saepe.', '2020-04-29 04:24:54', '2020-04-29 04:24:54'),
(3, 'Post 03', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum amet nam dolorem harum. Nesciunt vero possimus odio, nostrum quis minus cumque hic! Accusantium odio iste nesciunt aliquam sequi iusto saepe.', '2020-04-29 04:25:56', '2020-04-29 04:25:56'),
(4, 'Post 04', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum amet nam dolorem harum. Nesciunt vero possimus odio, nostrum quis minus cumque hic! Accusantium odio iste nesciunt aliquam sequi iusto saepe.', '2020-04-29 04:28:15', '2020-04-29 04:28:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `sobrenome`, `idade`, `email`, `createdAt`, `updatedAt`) VALUES
(1, 'Jose Roberto', 'Oliveira', 35, 'jrobertoonb@gmail.com', '2020-04-29 04:28:15', '2020-04-29 04:28:15');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `postagens`
--
ALTER TABLE `postagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `postagens`
--
ALTER TABLE `postagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
