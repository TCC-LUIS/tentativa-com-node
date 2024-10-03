-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/10/2024 às 17:06
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livraria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `livro`
--

CREATE TABLE `livro` (
  `id` int NOT NULL,
  `numero_paginas` int NOT NULL,
  `idioma` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `data_publicacao` datetime NOT NULL,
  `editora` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sinopse` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `genero` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `avaliacao` double NOT NULL,
  `classificacao_indicativa` int NOT NULL,
  `preco` double NOT NULL,
  `status` int NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `capa` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livro`
--

INSERT INTO `livro` (`id`, `numero_paginas`, `idioma`, `data_publicacao`, `editora`, `autor`, `sinopse`, `genero`, `avaliacao`, `classificacao_indicativa`, `preco`, `status`, `nome`, `capa`) VALUES
(1, 288, 'Inglês', '2012-08-08 00:00:00', 'Titan Books', 'S.D Perry', 'Raccoon City: uma remota comunidade montanhosa repentinamente sitiada por uma onda de assassinatos terríveis. No epicentro, uma mansão escura e isolada pertencente à misteriosa Umbrella Corporation.\r\n\r\nImplantado para investigar os estranhos acontecimento', 'Suspense', 4.3, 18, 99.99, 1, '', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
