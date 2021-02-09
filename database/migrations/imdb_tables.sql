--
-- Table structure for table `genre_lkup`
--

CREATE TABLE `genre_lkup` (
  `id` int NOT NULL,
  `genre_name` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `genre_lkup`
--

INSERT INTO `genre_lkup` (`id`, `genre_name`) VALUES
(1, 'Adventure'),
(2, 'Family'),
(3, 'Fantasy'),
(4, 'Musical'),
(5, 'Sci-Fi'),
(6, 'Action'),
(7, 'Drama'),
(8, 'War'),
(9, 'Horror'),
(10, 'Mystery'),
(11, 'Thriller'),
(12, 'Romance'),
(13, 'Animation'),
(14, 'History'),
(15, 'Western'),
(16, 'Crime');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genre_lkup`
--
ALTER TABLE `genre_lkup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre_lkup`
--
ALTER TABLE `genre_lkup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `firstname`, `lastname`, `mobile_no`, `password`) VALUES
(1, 'Shubham', 'Bhatt', '8888888888', '$2y$10$0W23DljFhwzILkFObHWe.e/6HkKnQhFIX9LHiPBk5.sPE/V1uosRm'),
(2, 'Rohit', 'Singh', '9999999999', '$2y$10$sjD2OcKI.fQonyNb0KsKtOOSwi/AvS6/qMO.8t32tLkchC0IVIsVa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;



--
-- Table structure for table `movie_details`
--

CREATE TABLE `movie_details` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `director` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `popularity` float NOT NULL,
  `imdb_score` float NOT NULL,
  `genre_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `movie_details`
--

INSERT INTO `movie_details` (`id`, `name`, `director`, `popularity`, `imdb_score`, `genre_id`) VALUES
(1, 'The Wizard of Oz', 'Victor Fleming', 83, 8.3, '1,2,3,4'),
(2, 'Star Wars', 'George Lucas', 88, 8.8, '1,3,5,6'),
(3, 'Cabiria', 'Giovanni Pastrone', 66, 6.6, '1,7,8'),
(4, 'Psycho', 'Alfred Hitchcock', 87, 8.7, '9,10,11'),
(5, 'King Kong', 'Merian C. Cooper', 80, 8, '1,2,3'),
(6, 'Metropolis', 'Fritz Lang', 84, 8.4, '1,2,3'),
(7, 'Star Trek', 'Marc Daniels', 86, 8.6, '1,2,3'),
(8, 'Casablanca', 'Michael Curtiz', 88, 8.8, '1,2,3'),
(9, 'Snow White and the Seven Dwarfs', 'William Cottrell', 79, 7.9, '1,2,3'),
(10, '2001 : A Space Odyssey', 'Stanley Kubrick', 84, 8.4, '1,2,3'),
(11, 'The Godfather', 'Francis Ford Coppola', 92, 9.2, '1,2,3'),
(12, 'The Birth of a Nation', 'D.W. Griffith', 71, 7.1, '1,2,3'),
(13, 'Shadow of a Doubt', 'Alfred Hitchcock', 81, 8.1, '1,2,3'),
(14, 'Jaws', 'Steven Spielberg', 83, 8.3, '1,2,3'),
(15, 'Snow White', 'J. Searle Dawley', 64, 6.4, '1,2,3'),
(16, 'Apocalypse Now', 'Francis Ford Coppola', 86, 8.6, '1,2,3'),
(17, 'Gone with the Wind', 'Victor Fleming', 82, 8.2, '1,2,3'),
(18, 'The Merry Widow', 'Ernst Lubitsch', 76, 7.6, '1,2,3'),
(19, 'The Searchers', 'John Ford', 81, 8.1, '1,2,3'),
(20, 'Vertigo', 'Alfred Hitchcock', 86, 8.6, '1,2,3'),
(21, 'Dr. No', 'Terence Young', 73, 7.3, '1,2,3'),
(22, 'Touch of Evil', 'Orson Welles', 83, 8.3, '1,2,3'),
(23, 'Chang : A Drama of the Wilderness', 'Merian C. Cooper', 74, 7.4, '1,2,3'),
(24, 'The Exorcist', 'William Friedkin', 81, 8.1, '1,2,3'),
(25, 'Citizen Kane', 'Orson Welles', 86, 8.6, '1,2,3'),
(26, 'The Terminator', 'James Cameron', 81, 8.1, '1,2,3'),
(27, 'Rosemarys Baby', 'Roman Polanski', 81, 8.1, '1,2,3'),
(28, 'Bronenosets Potyomkin', 'Sergei M. Eisenstein', 81, 8.1, '1,2,3'),
(29, 'Star Wars : Episode V - The Empire Strikes Back', 'Irvin Kershner', 88, 8.8, '1,2,3'),
(30, 'The Lost World', 'Harry O. Hoyt', 71, 7.1, '1,2,3'),
(31, 'A Clockwork Orange', 'Stanley Kubrick', 85, 8.5, '1,2,3'),
(32, 'Frankenstein', 'James Whale', 80, 8, '1,2,3'),
(33, 'Sesame Street', 'Lisa Simon', 85, 8.5, '1,2,3'),
(34, 'La grande illusion', 'Jean Renoir', 82, 8.2, '1,2,3'),
(35, 'Raiders of the Lost Ark', 'Steven Spielberg', 87, 8.7, '1,2,3'),
(36, 'Night of the Living Dead', 'George A. Romero', 80, 8, '1,2,3'),
(37, 'The Wizard of Oz', 'Larry Semon', 53, 5.3, '1,2,3'),
(38, 'THX 1138', 'George Lucas', 68, 6.8, '1,2,3'),
(39, 'E.T. : The Extra-Terrestrial', 'Steven Spielberg', 79, 7.9, '1,2,3'),
(40, 'The Poor Little Rich Girl', 'Maurice Tourneur', 69, 6.9, '1,2,3'),
(41, 'The Tin Man', 'James Parrott', 46, 4.6, '1,2,3'),
(42, 'Taxi Driver', 'Martin Scorsese', 86, 8.6, '1,2,3'),
(43, 'Il buono, il brutto, il cattivo.', 'Sergio Leone', 90, 9, '1,2,3'),
(44, 'The Battle at Elderbush Gulch', 'D.W. Griffith', 66, 6.6, '1,2,3'),
(45, 'Singin in the Rain', 'Stanley Donen', 84, 8.4, '1,2,3'),
(46, 'On the Waterfront', 'Elia Kazan', 84, 8.4, '1,2,3'),
(47, 'The General', 'Clyde Bruckman', 84, 8.4, '1,2,3'),
(48, 'Ghost Busters', 'Ivan Reitman', 78, 7.8, '1,2,3'),
(49, 'Tarzan the Ape Man', 'W.S. Van Dyke', 71, 7.1, '1,2,3'),
(50, 'His Majesty, the Scarecrow of Oz', 'L. Frank Baum', 60, 6, '1,2,3'),
(51, 'The Twilight Zone', 'John Brahm', 95, 9.5, '1,2,3'),
(52, 'The Great Train Robbery', 'Edwin S. Porter', 75, 7.5, '1,2,3'),
(53, 'Goldfinger', 'Guy Hamilton', 79, 7.9, '1,2,3'),
(54, 'La dolce vita', 'Federico Fellini', 81, 8.1, '1,2,3'),
(55, 'Alien', 'Ridley Scott', 85, 8.5, '1,2,3'),
(56, 'Nosferatu, eine Symphonie des Grauens', 'F.W. Murnau', 81, 8.1, '1,2,3'),
(57, 'The Shining', 'Stanley Kubrick', 85, 8.5, '1,2,3'),
(58, 'Dr. Strangelove or : How I Learned to Stop Worrying and Love the Bomb', 'Stanley Kubrick', 86, 8.6, '1,2,3'),
(59, 'Scarface', 'Brian De Palma', 82, 8.2, '1,2,3'),
(60, 'Rocky', 'John G. Avildsen', 81, 8.1, '1,2,3'),
(61, 'The Simpsons', 'Mark Kirkland', 90, 9, '1,2,3'),
(62, 'Un chien andalou', 'Luis Bu1uel', 80, 8, '1,2,3'),
(63, 'Dracula', 'Tod Browning', 77, 7.7, '1,2,3'),
(64, 'First Blood', 'Ted Kotcheff', 75, 7.5, '1,2,3'),
(65, 'The Flintstones', 'Joseph Barbera', 80, 8, '1,2,3'),
(66, 'Batman', 'Oscar Rudolph', 77, 7.7, '1,2,3'),
(67, 'The Lost Patrol', 'John Ford', 70, 7, '1,2,3'),
(68, 'I Am a Fugitive from a Chain Gang', 'Mervyn LeRoy', 81, 8.1, '1,2,3'),
(69, 'Back to the Future', 'Robert Zemeckis', 84, 8.4, '1,2,3'),
(70, 'Deliverance', 'John Boorman', 79, 7.9, '1,2,3'),
(71, 'Rebecca', 'Alfred Hitchcock', 84, 8.4, '1,2,3'),
(72, 'The Scarecrow', 'Edward F. Cline', 80, 8, '1,2,3'),
(73, 'The Texas Chain Saw Massacre', 'Tobe Hooper', 75, 7.5, '1,2,3'),
(74, 'The Bridge on the River Kwai', 'David Lean', 84, 8.4, '1,2,3'),
(75, 'Its a Wonderful Life', 'Frank Capra', 87, 8.7, '1,2,3'),
(76, 'Sex, Lies, and Videotape', 'Steven Soderbergh', 71, 7.1, '1,2,3'),
(77, 'Dirty Harry', 'Don Siegel', 79, 7.9, '1,2,3'),
(78, 'My Fair Lady', 'George Cukor', 79, 7.9, '1,2,3'),
(79, 'Dumbo', 'Samuel Armstrong', 75, 7.5, '1,2,3'),
(80, 'The Birds', 'Alfred Hitchcock', 79, 7.9, '1,2,3'),
(81, 'College', 'James W. Horne', 72, 7.2, '1,2,3'),
(82, 'Titanic', 'James Cameron', 74, 7.4, '1,2,3'),
(83, 'Ben-Hur', 'William Wyler', 82, 8.2, '1,2,3'),
(84, 'Pulp Fiction', 'Quentin Tarantino', 90, 9, '1,2,3'),
(85, 'Rear Window', 'Alfred Hitchcock', 87, 8.7, '1,2,3'),
(86, 'Aliens', 'James Cameron', 85, 8.5, '1,2,3'),
(87, 'Algiers', 'John Cromwell', 70, 7, '1,2,3'),
(88, 'Greed', 'Erich von Stroheim', 81, 8.1, '1,2,3'),
(89, 'The Silence of the Lambs', 'Jonathan Demme', 87, 8.7, '1,2,3'),
(90, 'The Circus', 'Charles Chaplin', 79, 7.9, '1,2,3'),
(91, 'The X Files', 'Kim Manners', 90, 9, '1,2,3'),
(92, 'Terminator 2 : Judgment Day', 'James Cameron', 85, 8.5, '1,2,3'),
(93, 'The Oprah Winfrey Show', 'Joseph C. Terry', 60, 6, '1,2,3'),
(94, 'The Graduate', 'Mike Nichols', 82, 8.2, '1,2,3'),
(95, 'The Bangville Police', 'Henry Lehrman', 55, 5.5, '1,2,3'),
(96, 'The Matrix', 'Andy Wachowski', 87, 8.7, '1,2,3'),
(97, 'The Brady Bunch', 'Oscar Rudolph', 70, 7, '1,2,3'),
(98, 'Lawrence of Arabia', 'David Lean', 85, 8.5, '1,2,3'),
(99, 'A Nightmare on Elm Street', 'Wes Craven', 74, 7.4, '1,2,3'),
(100, 'Pygmalion', 'George Schaefer', 78, 7.8, '1,2,3'),
(101, 'North by Northwest', 'Alfred Hitchcock', 86, 8.6, '1,2,3'),
(102, 'The Sound of Music', 'Robert Wise', 79, 7.9, '1,2,3'),
(103, 'Gilligans Island', 'Jack Arnold', 78, 7.8, '1,2,3'),
(104, 'Bambi', 'James Algar', 76, 7.6, '1,2,3'),
(105, 'West Side Story', 'Jerome Robbins', 78, 7.8, '1,2,3'),
(106, 'From Here to Eternity', 'Fred Zinnemann', 79, 7.9, '1,2,3'),
(107, 'Halloween', 'John Carpenter', 79, 7.9, '1,2,3'),
(108, 'I Love Lucy', 'William Asher', 90, 9, '1,2,3'),
(109, 'Mad Love', 'Karl Freund', 74, 7.4, '1,2,3'),
(110, 'Blade Runner', 'Ridley Scott', 83, 8.3, '1,2,3'),
(111, 'Mary Poppins', 'Robert Stevenson', 77, 7.7, '1,2,3'),
(112, 'Star Wars : Episode VI - Return of the Jedi', 'Richard Marquand', 83, 8.3, '1,2,3'),
(113, 'Close Encounters of the Third Kind', 'Steven Spielberg', 78, 7.8, '1,2,3'),
(114, 'Shichinin no samurai', 'Akira Kurosawa', 88, 8.8, '1,2,3'),
(115, 'Bride of Frankenstein', 'James Whale', 80, 8, '1,2,3'),
(116, 'The Treasure of the Sierra Madre', 'John Huston', 85, 8.5, '1,2,3'),
(117, '5 Against the House', 'Phil Karlson', 60, 6, '1,2,3'),
(118, 'Kagemusha', 'Akira Kurosawa', 79, 7.9, '1,2,3'),
(119, 'His Trust Fulfilled', 'D.W. Griffith', 47, 4.7, '1,2,3'),
(120, 'His Trust', 'D.W. Griffith', 53, 5.3, '1,2,3'),
(121, 'Gojira', 'Ishirccab Honda', 73, 7.3, '1,2,3'),
(122, 'Spartacus', 'Stanley Kubrick', 80, 8, '1,2,3'),
(123, 'Dreams of the Rarebit Fiend : The Pet', 'Winsor McCay', 71, 7.1, '1,2,3'),
(124, 'The Maltese Falcon', 'John Huston', 84, 8.4, '1,2,3'),
(125, 'Planet of the Apes', 'Franklin J. Schaffner', 80, 8, '1,2,3'),
(126, 'The Sea Hawk', 'Frank Lloyd', 72, 7.2, '1,2,3'),
(127, 'All Quiet on the Western Front', 'Lewis Milestone', 82, 8.2, '1,2,3'),
(128, 'Der Golem, wie er in die Welt kam', 'Carl Boese', 74, 7.4, '1,2,3'),
(129, 'In Like Flint', 'Gordon Douglas', 59, 5.9, '1,2,3'),
(130, 'The Bells of St. Marys', 'Leo McCarey', 74, 7.4, '1,2,3'),
(131, 'Duel', 'Steven Spielberg', 77, 7.7, '1,2,3'),
(132, 'Stachka', 'Sergei M. Eisenstein', 78, 7.8, '1,2,3'),
(133, 'Oklahoma!', 'Fred Zinnemann', 71, 7.1, '1,2,3'),
(134, 'At Land', 'Maya Deren', 74, 7.4, '1,2,3'),
(135, 'Jurassic Park', 'Steven Spielberg', 79, 7.9, '1,2,3'),
(136, 'Stagecoach', 'John Ford', 79, 7.9, '1,2,3'),
(137, 'Paths of Glory', 'Stanley Kubrick', 86, 8.6, '1,2,3'),
(138, 'Happy Days', 'Jerry Paris', 77, 7.7, '1,2,3'),
(139, 'Saturday Night Fever', 'John Badham', 68, 6.8, '1,2,3'),
(140, 'The Philadelphia Story', 'George Cukor', 81, 8.1, '1,2,3'),
(141, '8xe5', 'Federico Fellini', 82, 8.2, '1,2,3'),
(142, 'Doctor Who', 'Douglas Camfield', 86, 8.6, '1,2,3'),
(143, 'M', 'Fritz Lang', 86, 8.6, '1,2,3'),
(144, 'Moby Dick', 'John Huston', 74, 7.4, '1,2,3'),
(145, 'Carrie', 'Brian De Palma', 74, 7.4, '1,2,3'),
(146, 'Rebel Without a Cause', 'Nicholas Ray', 79, 7.9, '1,2,3'),
(147, 'Superman', 'Richard Donner', 73, 7.3, '1,2,3'),
(148, 'The Muppet Show', 'Peter Harris', 88, 8.8, '1,2,3'),
(149, 'Pinocchio', 'Norman Ferguson', 77, 7.7, '1,2,3'),
(150, '21-87', 'Arthur Lipsett', 75, 7.5, '1,2,3'),
(151, 'Scooby Doo, Where Are You!', 'Joseph Barbera', 81, 8.1, '1,2,3'),
(152, 'Animal Farm', 'Joy Batchelor', 71, 7.1, '1,2,3'),
(153, 'Swing Your Lady', 'Ray Enright', 48, 4.8, '1,2,3'),
(154, 'Shane', 'George Stevens', 78, 7.8, '1,2,3'),
(155, 'The Karate Kid', 'John G. Avildsen', 69, 6.9, '1,2,3'),
(156, 'Jeopardy!', 'Kevin McCarthy', 86, 8.6, '1,2,3'),
(157, 'Leave It to Beaver', 'Norman Tokar', 82, 8.2, '1,2,3'),
(158, 'Bonnie and Clyde', 'Arthur Penn', 80, 8, '1,2,3'),
(159, 'One Flew Over the Cuckoos Nest', 'Milos Forman', 89, 8.9, '1,2,3'),
(160, 'Saturday Night Live', 'Dave Wilson', 81, 8.1, '1,2,3'),
(161, 'Cera una volta il West', 'Sergio Leone', 88, 8.8, '1,2,3'),
(162, 'Sunrise : A Song of Two Humans', 'F.W. Murnau', 84, 8.4, '1,2,3'),
(163, 'The Lion King', 'Roger Allers', 82, 8.2, '1,2,3'),
(164, 'Plane Crazy', 'Walt Disney', 75, 7.5, '1,2,3'),
(165, '60 Minutes', 'Rob Klug', 64, 6.4, '1,2,3'),
(166, 'Lolita', 'Stanley Kubrick', 77, 7.7, '1,2,3'),
(167, 'Die Hard', 'John McTiernan', 83, 8.3, '1,2,3'),
(168, 'Laura', 'Otto Preminger', 82, 8.2, '1,2,3'),
(169, 'Easy Rider', 'Dennis Hopper', 73, 7.3, '1,2,3'),
(170, 'Invasion of the Body Snatchers', 'Don Siegel', 80, 8, '1,2,3'),
(171, 'Lanncca9e derniccacre ccca Marienbad', 'Alain Resnais', 78, 7.8, '1,2,3'),
(172, 'Lady in a Cage', 'Walter Grauman', 68, 6.8, '1,2,3'),
(173, 'The Evil Dead', 'Sam Raimi', 76, 7.6, '1,2,3'),
(174, 'The Tonight Show Starring Johnny Carson', 'Bobby Quinn', 83, 8.3, '1,2,3'),
(175, 'Top Gun', 'Tony Scott', 66, 6.6, '1,2,3'),
(176, 'You Only Live Twice', 'Lewis Gilbert', 69, 6.9, '1,2,3'),
(177, 'From Russia with Love', 'Terence Young', 75, 7.5, '1,2,3'),
(178, 'The Lone Ranger', 'Hollingsworth Morse', 81, 8.1, '1,2,3'),
(179, 'Deep Throat', 'Gerard Damiano', 52, 5.2, '1,2,3'),
(180, 'Shock Corridor', 'Samuel Fuller', 76, 7.6, '1,2,3'),
(181, 'Enter the Dragon', 'Robert Clouse', 76, 7.6, '1,2,3'),
(182, 'The Magnificent Seven', 'John Sturges', 78, 7.8, '1,2,3'),
(183, 'Underworld', 'Josef von Sternberg', 77, 7.7, '1,2,3'),
(184, 'She Wore a Yellow Ribbon', 'John Ford', 73, 7.3, '1,2,3'),
(185, 'Un dans la ville', 'Edouard Molinaro', 67, 6.7, '1,2,3'),
(186, 'Batman', 'Tim Burton', 76, 7.6, '1,2,3'),
(187, 'Cinderella', 'Clyde Geronimi', 74, 7.4, '1,2,3'),
(188, 'Tarzans Magic Fountain', 'Lee Sholem', 55, 5.5, '1,2,3'),
(189, 'High Noon', 'Fred Zinnemann', 83, 8.3, '1,2,3'),
(190, 'Triumph des Willens', 'Leni Riefenstahl', 77, 7.7, '1,2,3'),
(191, 'Mr. Smith Goes to Washington', 'Frank Capra', 84, 8.4, '1,2,3'),
(192, 'Grease', 'Randal Kleiser', 70, 7, '1,2,3'),
(193, 'Intolerance : Loves Struggle Throughout the Ages', 'D.W. Griffith', 81, 8.1, '1,2,3'),
(194, 'Reservoir Dogs', 'Quentin Tarantino', 84, 8.4, '1,2,3'),
(195, 'A Place in the Sun', 'George Stevens', 78, 7.8, '1,2,3'),
(196, 'The Third Man', 'Carol Reed', 85, 8.5, '1,2,3'),
(197, 'The Gold Rush', 'Charles Chaplin', 83, 8.3, '1,2,3'),
(198, 'The Ten Commandments', 'Cecil B. DeMille', 79, 7.9, '1,2,3'),
(199, 'My Darling Clementine', 'John Ford', 79, 7.9, '1,2,3'),
(200, 'Sunset Blvd.', 'Billy Wilder', 87, 8.7, '1,2,3'),
(201, 'Friday the 13th', 'Sean S. Cunningham', 63, 6.3, '1,2,3'),
(202, 'The Great Escape', 'John Sturges', 83, 8.3, '1,2,3'),
(203, 'Play Misty for Me', 'Clint Eastwood', 70, 7, '1,2,3'),
(204, 'Jerry Maguire', 'Cameron Crowe', 73, 7.3, '1,2,3'),
(205, 'The Enforcer', 'Bretaigne Windust', 73, 7.3, '1,2,3,9'),
(206, 'Fantastic Voyage', 'Richard Fleischer', 68, 6.8, '1,2,3'),
(207, 'Butch Cassidy and the Sundance Kid', 'George Roy Hill', 82, 8.2, '1,2,3'),
(208, 'The Andy Griffith Show', 'Bob Sweeney', 86, 8.6, '1,2,3,10'),
(209, 'The Blues Brothers', 'John Landis', 79, 7.9, '1,2,3'),
(210, 'Forrest Gump', 'Robert Zemeckis', 86, 8.6, '1,2,3'),
(211, 'Some Like It Hot', 'Billy Wilder', 84, 8.4, '1,2,3,11'),
(212, 'American Idol : The Search for a Superstar', 'Bruce Gowers', 48, 4.8, '1,2,3'),
(213, 'Fight Club', 'David Fincher', 88, 8.8, '1,2,3'),
(214, 'Revenge of the Creature', 'Jack Arnold', 51, 5.1, '1,2,3'),
(215, 'Chinatown', 'Roman Polanski', 85, 8.5, '1,2,3,13'),
(216, 'The Wild Bunch', 'Sam Peckinpah', 81, 8.1, '1,2,3'),
(217, 'The Lord of the Rings : The Fellowship of the Ring', 'Peter Jackson', 88, 8.8, '1,2,3'),
(218, 'Mutiny on the Bounty', 'Frank Lloyd', 79, 7.9, '1,2,3'),
(219, 'El', 'Luis el', 78, 7.8, '1,2,3'),
(220, 'Full Metal Jacket', 'Stanley Kubrick', 84, 8.4, '1,2,3,14'),
(221, 'The Pride and the Passion', 'Stanley Kramer', 55, 5.5, '1,2,3'),
(222, 'This Is Spinal Tap', 'Rob Reiner', 80, 8, '1,2,3'),
(223, 'Winchester 73', 'Anthony Mann', 78, 7.8, '1,2,3'),
(224, 'Star Trek : The Next Generation', 'Cliff Bole', 88, 8.8, '1,2,3'),
(225, 'Kojak', 'Charles S. Dubin', 73, 7.3, '1,2,3'),
(226, 'Gryozy', 'Yevgeni Bauer', 74, 7.4, '1,2,3'),
(227, 'Baywatch', 'Gregory J. Bonann', 49, 4.9, '1,2,3'),
(228, 'Heavy Metal', 'Gerald Potterton', 64, 6.4, '1,2,3'),
(229, 'The Day the Earth Stood Still', 'Robert Wise', 80, 8, '1,2,3'),
(230, 'Three Little Pigs', 'Burt Gillett', 77, 7.7, '1,2,3'),
(231, 'The Public Enemy', 'William A. Wellman', 78, 7.8, '1,2,3'),
(232, 'The Rocky Horror Picture Show', 'Jim Sharman', 71, 7.1, '1,2,3'),
(233, 'Rain Man', 'Barry Levinson', 80, 8, '1,2,3'),
(234, 'Latalante', 'Jean Vigo', 80, 8, '1,2,3,8'),
(235, 'Persona', 'Ingmar Bergman', 82, 8.2, '1,2,3'),
(236, 'Dawn of the Dead', 'George A. Romero', 80, 8, '1,2,3'),
(237, 'Bonanza', 'William F. Claxton', 74, 7.4, '1,2,3'),
(238, 'Fatal Attraction', 'Adrian Lyne', 68, 6.8, '1,2,3'),
(239, 'It! The Terror from Beyond Space', 'Edward L. Cahn', 60, 6, '1,2,3'),
(240, 'Toast of the Town', 'John Moffitt', 83, 8.3, '1,2,3,6'),
(241, 'The French Connection', 'William Friedkin', 79, 7.9, '1,2,3'),
(242, 'Peter Pan', 'Clyde Geronimi', 73, 7.3, '1,2,3'),
(243, 'Miami Vice', 'John Nicolella', 78, 7.8, '1,2,3,7'),
(244, 'Star Wars : Episode I - The Phantom Menace', 'George Lucas', 64, 6.4, '1,2,3'),
(245, 'Goodfellas', 'Martin Scorsese', 88, 8.8, '1,2,3'),
(246, 'The Egyptian', 'Michael Curtiz', 62, 6.2, '1,2,3'),
(247, 'Hawaii Five-O', 'Michael OHerlihy', 76, 7.6, '1,2,3,14'),
(248, 'Charlies Angels', 'Dennis Donnelly', 66, 6.6, '1,2,15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie_details`
--
ALTER TABLE `movie_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie_details`
--
ALTER TABLE `movie_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
