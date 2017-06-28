-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Vært: localhost
-- Genereringstid: 28. 06 2017 kl. 12:52:57
-- Serverversion: 10.1.13-MariaDB
-- PHP-version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internshipmx`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `loginfail`
--

CREATE TABLE `loginfail` (
  `uid` int(11) NOT NULL,
  `loginwhen` int(11) NOT NULL,
  `ip` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `loginfail`
--

INSERT INTO `loginfail` (`uid`, `loginwhen`, `ip`) VALUES
(0, 2017, 127);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `note`
--

CREATE TABLE `note` (
  `uid` int(11) NOT NULL,
  `subject` varchar(50) CHARACTER SET latin1 COLLATE latin1_danish_ci NOT NULL,
  `author` varchar(50) CHARACTER SET latin1 COLLATE latin1_danish_ci NOT NULL,
  `body` text CHARACTER SET latin1 COLLATE latin1_danish_ci NOT NULL,
  `dateofwrite` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `note`
--

INSERT INTO `note` (`uid`, `subject`, `author`, `body`, `dateofwrite`) VALUES
(1, 'Dette er en overskrift', 'birgerhansen', ' Permanence, perseverance and persistence in spite of all obstacles, discouragements, and impossibilities: It is this, that in all things distinguishes the strong soul from the weak.', '2017-06-20'),
(2, 'Dette er en overskrift', 'birgerhansen', 'Lorem ipsum dolor sit amet, et mea dolore possit. Nec aliquam maiestatis elaboraret at, quem sapientem cum ne. Has sonet everti inciderint ad, no eos forensibus delicatissimi. Sed ad dolores forensibus, at clita admodum iudicabit usu.\r\n\r\nUt ius quando epicurei legendos. Stet idque ancillae ne per, ea sea tibique appellantur. Vis utinam quodsi eligendi at, his doctus nostrum fabellas ex, has corpora mediocrem et. Vim quem diceret argumentum at, epicuri vivendum voluptatum est ut. Te exerci adipisci persecuti per, vis nisl clita omnesque in.', '2017-06-20'),
(3, 'Dette er endnu en overskrift3', 'birgerhansen', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', '2017-06-20'),
(9, 'This is a headline', 'frankjensen', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', '2017-06-23'),
(13, 'This is a headline 2', 'frankjensen', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', '2017-06-23'),
(15, 'This is a headline 3', 'frankjensen', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat."', '2017-06-23'),
(16, 'This is a headline4', 'birgerhansen', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', '2017-06-25'),
(28, 'This is a subject 1', 'birgerhansen', 'Lorem ipsum dolor sit amet, id sit nunc, est in volutpat libero et ac magna, pellentesque pede id sed tempor nulla. Sed justo enim aliquet ultricies, nam ac dolor. Phasellus etiam, et ut sed eget amet nullam dignissim, sollicitudin at fringilla dui risus dui a, urna augue. Venenatis nam sed justo vitae in. Quis sit nisl elit purus risus quis, sodales urna vehicula dolor, commodo praesent faucibus ut qui vel. Volutpat est duis vivamus. Aliquet libero porttitor sed tempore eget est, erat suscipit rhoncus commodo elementum lectus sed, erat mauris sodales fermentum ultricies vel, lobortis pede risus diam libero, nec rhoncus lorem amet eu id rhoncus. Amet ut mauris, libero nunc sed, pellentesque cras sed porttitor, dignissim arcu auctor praesent, volutpat curabitur bibendum neque. Sollicitudin lorem eget tincidunt felis, sed aliquam nulla placerat libero duis lacinia, et luctus vulputate condimentum, venenatis sollicitudin sollicitudin non varius metus, diam pariatur ante diam pellentesque turpis', '2017-06-27'),
(29, 'This is a subject 2', 'birgerhansen', 'Lorem ipsum dolor sit amet, id sit nunc, est in volutpat libero et ac magna, pellentesque pede id sed tempor nulla. Sed justo enim aliquet ultricies, nam ac dolor. Phasellus etiam, et ut sed eget amet nullam dignissim, sollicitudin at fringilla dui risus dui a, urna augue. Venenatis nam sed justo vitae in. Quis sit nisl elit purus risus quis, sodales urna vehicula dolor, commodo praesent faucibus ut qui vel. Volutpat est duis vivamus. Aliquet libero porttitor sed tempore eget est, erat suscipit rhoncus commodo elementum lectus sed, erat mauris sodales fermentum ultricies vel, lobortis pede risus diam libero, nec rhoncus lorem amet eu id rhoncus. Amet ut mauris, libero nunc sed, pellentesque cras sed porttitor, dignissim arcu auctor praesent, volutpat curabitur bibendum neque. Sollicitudin lorem eget tincidunt felis, sed aliquam nulla placerat libero duis lacinia, et luctus vulputate condimentum, venenatis sollicitudin sollicitudin non varius metus, diam pariatur ante diam pellentesque turpis', '2017-06-27');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(130) NOT NULL,
  `salt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `salt`) VALUES
(1, 'birgerhansen', '8b125ee5abba894f4ea7b92e6a514880365413be7bc7365b67c86191e954f713bcd40a4069448bd12453600e2ae73ece0081174ce39e374ed522d78cd88852a3', ''),
(2, 'frankjensen', '0a2a07d23b4768af2437b122fbd8ce1ab6c1156ab26667202a7a9db55851c502d3e5dd6b9f947cb9b2870e95fd8048cd9a03dd6b1ac5a791b9b41912470ba9b8', '');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `loginfail`
--
ALTER TABLE `loginfail`
  ADD UNIQUE KEY `uid` (`uid`),
  ADD KEY `uid_2` (`uid`);

--
-- Indeks for tabel `note`
--
ALTER TABLE `note`
  ADD UNIQUE KEY `uid` (`uid`),
  ADD KEY `author` (`author`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD KEY `username` (`username`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `note`
--
ALTER TABLE `note`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
