DROP TABLE IF EXISTS `%TABLE_PREFIX%markitup_profiles`;

CREATE TABLE IF NOT EXISTS `%TABLE_PREFIX%markitup_profiles` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL,
  `markitup_buttons` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `%TABLE_PREFIX%markitup_profiles` (`id`, `name`, `description`, `language`, `type`, `markitup_buttons`) VALUES
(1, 'full', 'Standard MarkItUp-Konfiguration', 'de', 'textile', 'bold,deleted,formatting[h1|h2|h3|h4|h5|h6|p],italic,orderedlist,underline,unorderedlist');

ALTER TABLE `%TABLE_PREFIX%markitup_profiles`
 ADD PRIMARY KEY (`id`);