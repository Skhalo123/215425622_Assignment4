#
# TABLE STRUCTURE FOR: students
#

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postcode` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO `students` (`id`, `first_name`, `last_name`, `city`, `phone`, `gender`, `email`, `address`, `postcode`, `date_of_birth`) VALUES (1, 'Ailn', 'Rathmouth', 'Rathmouth', '05144461974', 'Female', 'mailn0@bravesites.com', '97228 Emmalee Harbors Suite 421 South Emmet, TX 54950', 23031, '2001-12-16');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `city`, `phone`, `gender`, `email`, `address`, `postcode`, `date_of_birth`) VALUES (2, 'Hounson', 'Port Lolamouth', 'Port Lolamouth', '1-136-366-9496', 'Female', 'dhounson1@slashdot.org', '62654 Hirthe Lodge Port Zeldafurt, DE 87270', 27108, '1977-01-21');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `city`, `phone`, `gender`, `email`, `address`, `postcode`, `date_of_birth`) VALUES (3, 'Tison', 'Lavernastad', 'Lavernastad', '157-283-0337x872', 'Female', 'ctison2@europa.eu', '9107 Blanda Plains Apt. 476 North Burdettechester, NM 91601', 76631, '1984-03-26');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `city`, `phone`, `gender`, `email`, `address`, `postcode`, `date_of_birth`) VALUES (4, 'Surmeyers', 'Ethelville', 'Ethelville', '552.496.5910', 'Male', 'msurmeyers3@nytimes.com', '0997 Gleason Rue Apt. 149 East Gretaland, GA 13633-6343', 37965, '2005-03-17');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `city`, `phone`, `gender`, `email`, `address`, `postcode`, `date_of_birth`) VALUES (5, 'Bob', 'Schulistland', 'Schulistland', '895-877-0076x197', 'Male', 'scbob@opensource.org', '39405 Nicolas Walk Apt. 041 Kozeychester, AL 20566-8063', 23031, '2019-07-15');


DROP TABLE IF EXISTS `marks`;

CREATE TABLE `marks` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(9) unsigned NOT NULL,
  `mark` int(9) unsigned NOT NULL,
  `subject` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

INSERT INTO `marks` (`id`, `student_id`, `mark`, `subject`) VALUES (1, 3,  23,   'Magic Survival');
INSERT INTO `marks` (`id`, `student_id`, `mark`, `subject`) VALUES (2, 4,  56,   'Planetary Geography');
INSERT INTO `marks` (`id`, `student_id`, `mark`, `subject`) VALUES (3, 9,  77,   'Foreign Evolutionary Biology');
INSERT INTO `marks` (`id`, `student_id`, `mark`, `subject`) VALUES (4, 6,  83,   'Intergallactic Relations');
INSERT INTO `marks` (`id`, `student_id`, `mark`, `subject`) VALUES (5, 9,  45,   'Grand Strategy');
