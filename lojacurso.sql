-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Nov-2019 às 01:36
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojacurso`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `lc_categorias`
--

CREATE TABLE `lc_categorias` (
  `cate_id` int(11) NOT NULL,
  `cate_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `lc_categorias`
--

INSERT INTO `lc_categorias` (`cate_id`, `cate_nome`, `cate_slug`) VALUES
(2, 'Camisas', 'camisas'),
(3, 'Calças', 'calcas'),
(4, 'Sapatos', 'sapatos'),
(5, 'Geral', 'geral'),
(6, 'Perfume', 'perfume');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lc_clientes`
--

CREATE TABLE `lc_clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cli_sobrenome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cli_endereco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cli_numero` int(11) DEFAULT NULL,
  `cli_bairro` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cli_cidade` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cli_uf` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cli_cpf` int(11) DEFAULT NULL,
  `cli_cep` int(10) DEFAULT NULL,
  `cli_rg` int(11) DEFAULT NULL,
  `cli_ddd` int(2) DEFAULT NULL,
  `cli_fone` int(10) DEFAULT NULL,
  `cli_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cli_celular` int(10) DEFAULT NULL,
  `cli_pass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cli_data_nasc` datetime DEFAULT NULL,
  `cli_hora_cad` datetime DEFAULT NULL,
  `cli_data_cad` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `lc_clientes`
--

INSERT INTO `lc_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cpf`, `cli_cep`, `cli_rg`, `cli_ddd`, `cli_fone`, `cli_email`, `cli_celular`, `cli_pass`, `cli_data_nasc`, `cli_hora_cad`, `cli_data_cad`) VALUES
(1, 'Jorge', 'de Barros', 'Conjunto Parque Santa Rita', 12345678, 'itinga', 'Lauro de Freitas', 'BA', 2147483647, 42739710, 1234567891, 71, 123456789, 'j.lucas_7@hotmail.com', 123456789, 'fcea920f7412b5da7be0cf42b8c93759', '1995-09-22 00:00:00', '2021-09-21 00:00:00', '2019-11-19 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lc_imagens`
--

CREATE TABLE `lc_imagens` (
  `img_id` int(11) NOT NULL,
  `img_nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_pro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lc_pedidos`
--

CREATE TABLE `lc_pedidos` (
  `ped_id` int(11) NOT NULL,
  `ped_data` datetime DEFAULT NULL,
  `ped_hora` time DEFAULT NULL,
  `ped_cliente` int(11) DEFAULT NULL,
  `ped_cod` int(11) DEFAULT NULL,
  `ped_ref` int(11) DEFAULT NULL,
  `ped_pag_status` int(11) DEFAULT NULL,
  `ped_pag_forma` int(11) DEFAULT NULL,
  `ped_pag_tipo` int(11) DEFAULT NULL,
  `ped_pag_codigo` int(11) DEFAULT NULL,
  `ped_frete_valor` double DEFAULT NULL,
  `ped_frete_tipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `lc_pedidos`
--

INSERT INTO `lc_pedidos` (`ped_id`, `ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`) VALUES
(1, '2019-11-19 00:00:00', '22:34:50', 1, 2147483647, 2147483647, 0, NULL, NULL, NULL, 0, NULL),
(2, '2019-11-20 00:00:00', '18:28:40', 1, 2147483647, 2147483647, 0, NULL, NULL, NULL, 0, NULL),
(3, '2019-11-20 00:00:00', '18:47:09', 1, 2147483647, 2147483647, 0, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lc_pedidos_itens`
--

CREATE TABLE `lc_pedidos_itens` (
  `item_produto` int(11) DEFAULT NULL,
  `item_ped_cod` int(11) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `item_qtd` int(11) DEFAULT NULL,
  `item_valor` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `lc_pedidos_itens`
--

INSERT INTO `lc_pedidos_itens` (`item_produto`, `item_ped_cod`, `item_id`, `item_qtd`, `item_valor`) VALUES
(2, 2147483647, 1, 1, 60),
(3, 2147483647, 2, 1, 80),
(4, 2147483647, 3, 1, 80);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lc_produtos`
--

CREATE TABLE `lc_produtos` (
  `pro_id` int(11) NOT NULL,
  `pro_categoria` int(11) NOT NULL,
  `pro_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_peso` double(9,3) NOT NULL,
  `pro_valor` double(9,2) NOT NULL,
  `pro_largura` int(11) NOT NULL,
  `pro_altura` int(11) NOT NULL,
  `pro_comprimento` int(11) NOT NULL,
  `pro_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_estoque` int(11) NOT NULL,
  `pro_modelo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_ref` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_fabricante` int(11) NOT NULL,
  `pro_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `pro_frete_free` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Não'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `lc_produtos`
--

INSERT INTO `lc_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_largura`, `pro_altura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_free`) VALUES
(1, 2, 'Camisa Social', 'camisa social de manga comprida.\r\n\r\nAs ruas do Rio de Janeiro são pavimentadas com mosaicos coloridos. O design fragmentado desta camisa de futebol foi montado para refletir o estilo único da casa do CR Flamengo. Feita para os fãs, ela coloca o conforto em primeiro lugar com um tecido sedoso que absorve o suor e uma modelagem um pouco mais larga do que a usada pelos jogadores em campo. Um escudo do time se destaca no peito.', 0.000, 80.00, 80, 80, 80, '03.jpg', 'camisa-social', 1, 'modelo1', '14521', 1, '1', 'sim'),
(2, 2, 'Camisa Polo', 'Camisa Polo de manga curta.\r\n\r\nAs ruas do Rio de Janeiro são pavimentadas com mosaicos coloridos. O design fragmentado desta camisa de futebol foi montado para refletir o estilo único da casa do CR Flamengo. Feita para os fãs, ela coloca o conforto em primeiro lugar com um tecido sedoso que absorve o suor e uma modelagem um pouco mais larga do que a usada pelos jogadores em campo. Um escudo do time se destaca no peito.', 0.000, 60.00, 80, 80, 80, 'camisa.jpg', 'camisa-polo', 1, 'modelo2', '14879', 1, '1', 'Não'),
(3, 4, 'Sapato', '<p><span style=\"font-family: \'Neue Plak Text\', \'Arial Narrow\', \'Franklin Gothic Book\', Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\">Voc&ecirc; n&atilde;o se arrepender&aacute; de sua escolha. T&ecirc;nis ic&ocirc;nicos, como os NPCs, s&atilde;o confort&aacute;veis e resistentes para as quadras e uso casual. Nossa logo cl&aacute;ssica garante autenticidade &agrave; simplicidade desse modelo confeccionado com uma &uacute;nica cor.</span></p>', 0.000, 80.00, 0, 0, 0, '191120182239170911143911d22-0084-012-zoom1.jpg.jpg.jpg', 'sapato', 2, 'Sap', 'sap-1', 0, 'S', 'Não'),
(4, 3, 'Calça', '<p><span style=\"color: #4d4d4d; font-family: \'Source Sans Pro\', sans-serif;\">Completamente despojada a Cal&ccedil;a Jeans Ecxo Jogger &eacute; perfeita para ocasi&otilde;es despojadas e bem descontra&iacute;das. Confeccionada em algod&atilde;o, possui c&oacute;s com el&aacute;stico e fechamento por cord&atilde;o. Exibe lavagem estonada e bolsos laterais que fazem da pe&ccedil;a moderna e simplesmente estilosa. Aproveite os descontos Black Friday e invista!</span></p>', 0.000, 80.00, 0, 0, 0, '191120182645calca.jpg.jpg', 'calca', 2, 'Cal', 'cal-1', 0, 'S', 'Não'),
(5, 6, 'Perfume', '<p><span style=\"color: #636363; font-family: Roboto, sans-serif;\">Uma fragr&acirc;ncia traduzida na combina&ccedil;&atilde;o da Copa&iacute;ba, madeira da biodiversidade brasileira, com especiarias frescas, como cardamomo e pimenta, que traz exclusividade da fragr&acirc;ncia. Essencial Exclusivo torna cada momento &uacute;nico, em uma fragr&acirc;ncia moderna e sofisticada pra quem tem personalidade</span></p>', 0.000, 120.00, 0, 0, 0, '191120184305shopping.jpg.jpg', 'perfume', 5, 'perf', 'perf-1', 0, 'S', 'Não'),
(6, 2, 'asd', '', 0.000, 30.00, 0, 0, 0, '19112019002017090614532144.jpg.jpg.jpg', 'asd', 2, 'asd1', 'asd-1', 0, 'S', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lc_user`
--

CREATE TABLE `lc_user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_pw` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `lc_user`
--

INSERT INTO `lc_user` (`user_id`, `user_email`, `user_pw`, `user_nome`) VALUES
(1, 'j.lucas_7@hotmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 'Lucas');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `lc_categorias`
--
ALTER TABLE `lc_categorias`
  ADD PRIMARY KEY (`cate_id`);

--
-- Índices para tabela `lc_clientes`
--
ALTER TABLE `lc_clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Índices para tabela `lc_imagens`
--
ALTER TABLE `lc_imagens`
  ADD PRIMARY KEY (`img_id`);

--
-- Índices para tabela `lc_pedidos`
--
ALTER TABLE `lc_pedidos`
  ADD PRIMARY KEY (`ped_id`);

--
-- Índices para tabela `lc_pedidos_itens`
--
ALTER TABLE `lc_pedidos_itens`
  ADD PRIMARY KEY (`item_id`);

--
-- Índices para tabela `lc_produtos`
--
ALTER TABLE `lc_produtos`
  ADD PRIMARY KEY (`pro_id`);

--
-- Índices para tabela `lc_user`
--
ALTER TABLE `lc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `lc_categorias`
--
ALTER TABLE `lc_categorias`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `lc_clientes`
--
ALTER TABLE `lc_clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `lc_imagens`
--
ALTER TABLE `lc_imagens`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lc_pedidos`
--
ALTER TABLE `lc_pedidos`
  MODIFY `ped_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `lc_pedidos_itens`
--
ALTER TABLE `lc_pedidos_itens`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `lc_produtos`
--
ALTER TABLE `lc_produtos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `lc_user`
--
ALTER TABLE `lc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
