-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/08/2025 às 16:13
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `zssn`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `inventory`
--

CREATE TABLE `inventory` (
  `idInv` int(10) UNSIGNED NOT NULL,
  `idSur` int(11) NOT NULL,
  `idItem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `items`
--

CREATE TABLE `items` (
  `idItem` int(10) UNSIGNED NOT NULL,
  `nameItem` varchar(20) NOT NULL,
  `pointsItem` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `items`
--

INSERT INTO `items` (`idItem`, `nameItem`, `pointsItem`) VALUES
(1, 'Water', 4),
(2, 'Food', 3),
(3, 'Medication', 2),
(4, 'Ammunition', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `survivors`
--

CREATE TABLE `survivors` (
  `idSur` int(5) UNSIGNED NOT NULL,
  `nameSur` varchar(30) NOT NULL,
  `ageSur` tinyint(3) UNSIGNED NOT NULL,
  `LatSur` smallint(6) NOT NULL,
  `LongSur` smallint(6) NOT NULL,
  `sexSur` tinyint(1) NOT NULL,
  `infectedSur` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `survivors`
--

INSERT INTO `survivors` (`idSur`, `nameSur`, `ageSur`, `LatSur`, `LongSur`, `sexSur`, `infectedSur`) VALUES
(1, 'John Doe', 34, -53, -60, 1, 0),
(2, 'Anne Doe', 26, 90, -180, 2, 0),
(3, 'Carl Vendlinger', 57, -37, 65, 1, 0),
(4, 'Nathan McGrath', 38, -30, 84, 1, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`idInv`);

--
-- Índices de tabela `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`idItem`);

--
-- Índices de tabela `survivors`
--
ALTER TABLE `survivors`
  ADD PRIMARY KEY (`idSur`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `inventory`
--
ALTER TABLE `inventory`
  MODIFY `idInv` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `items`
--
ALTER TABLE `items`
  MODIFY `idItem` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `survivors`
--
ALTER TABLE `survivors`
  MODIFY `idSur` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
