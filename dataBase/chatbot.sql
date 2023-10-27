-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/10/2023 às 11:45
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `chatbot`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `chatmessage`
--

CREATE TABLE `chatmessage` (
  `id` int(11) NOT NULL,
  `pergunta` text NOT NULL,
  `resposta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `chatmessage`
--

INSERT INTO `chatmessage` (`id`, `pergunta`, `resposta`) VALUES
(1, 'como posso resolver o problema de falha na comunicação?', 'Prara resolver esse problema, você precisa Reiniciar o seu sistema ou talvez seja um problema com o navegador use CTRL+SHIFT+R para fazer uma limpeza no seu navegador!'),
(2, '. O que é suporte técnico de manutenção de computadores?', 'O suporte técnico de manutenção de computadores é um serviço que visa solucionar problemas, realizar reparos e manter o bom funcionamento de computadores pessoais e empresariais.'),
(3, 'Por que meu computador está lento?', 'A lentidão do computador pode ser causada por vários motivos, como falta de espaço em disco, malware, programas em segundo plano, hardware desatualizado ou falhas no sistema operacional.');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `chatmessage`
--
ALTER TABLE `chatmessage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chatmessage`
--
ALTER TABLE `chatmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
