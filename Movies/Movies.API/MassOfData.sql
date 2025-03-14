﻿INSERT INTO [dbo].[Movies] ([Name], [Description], [LaunchDate], [Genre]) VALUES
('The Grand Heist', 'A group of thieves plan the ultimate heist.', '2019-05-22', 'Action'),
('Love in Paris', 'A romantic tale set in the heart of Paris.', '2020-02-14', 'Romance'),
('The Haunted Manor', 'A horror story about an abandoned house.', '2018-10-31', 'Horror'),
('Dreamland', 'A young girl discovers a fantasy world.', '2021-07-10', 'Fantasy'),
('Laughter Therapy', 'A comedy about a stand-up comedian.', '2023-04-01', 'Comedy'),
('Speed Chase', 'High-speed car chases and adrenaline-packed action.', '2017-06-15', 'Action'),
('Forever Yours', 'A heartwarming romance between two strangers.', '2022-08-20', 'Romance'),
('Dark Shadows', 'A haunted house with a mysterious past.', '2016-11-25', 'Horror'),
('The Magic Portal', 'A portal leads to a land of wonders.', '2021-03-30', 'Fantasy'),
('Jokes on You', 'A hilarious comedy full of unexpected twists.', '2019-09-05', 'Comedy'),
('Warriors of the Night', 'An elite force takes on crime.', '2020-12-18', 'Action'),
('Eternal Love', 'A romance that transcends time.', '2018-05-12', 'Romance'),
('The Cursed Doll', 'A cursed doll brings nightmares to life.', '2019-10-30', 'Horror'),
('The Dragon’s Secret', 'A boy embarks on a fantasy quest.', '2022-06-07', 'Fantasy'),
('Comedy Central', 'A group of friends in a comedy club.', '2023-03-11', 'Comedy'),
('The Escape Plan', 'A prisoner plans an elaborate escape.', '2017-07-19', 'Action'),
('Love Across Oceans', 'A romance between people from different continents.', '2021-09-23', 'Romance'),
('House of Screams', 'A terrifying horror mystery unfolds.', '2016-12-13', 'Horror'),
('The Enchanted Forest', 'A magical forest full of secrets.', '2020-04-27', 'Fantasy'),
('Funny Business', 'A comedy about office life.', '2019-01-16', 'Comedy'),
('Skyfall Warriors', 'Elite warriors fight against terrorism.', '2022-10-05', 'Action'),
('A Kiss in the Rain', 'A couple finds love under unexpected circumstances.', '2018-07-02', 'Romance'),
('The Abandoned Asylum', 'A group explores an abandoned asylum.', '2019-11-15', 'Horror'),
('Kingdom of Dreams', 'A prince embarks on a fantasy journey.', '2023-02-14', 'Fantasy'),
('Stand-Up Legends', 'A story about rising comedy stars.', '2017-06-30', 'Comedy'),
('Tactical Force', 'A special ops team on a deadly mission.', '2021-12-20', 'Action'),
('Letters to Juliet', 'A love story told through letters.', '2016-09-28', 'Romance'),
('Whispering Shadows', 'A horror film about a ghost town.', '2020-10-31', 'Horror'),
('The Sorcerer’s Apprentice', 'A young boy learns magic.', '2018-05-07', 'Fantasy'),
('Laugh Riot', 'A comedian’s journey to fame.', '2019-08-29', 'Comedy'),
('Undercover Agent', 'A cop goes undercover to stop a crime ring.', '2023-05-04', 'Action'),
('Serendipity', 'A romance based on fate.', '2017-02-14', 'Romance'),
('Silent Screams', 'A family faces supernatural horrors.', '2021-10-22', 'Horror'),
('Chronicles of Avalon', 'A magical kingdom awaits a hero.', '2020-06-01', 'Fantasy'),
('Comedy Kings', 'A group competes to be the best comedians.', '2018-09-09', 'Comedy'),
('Black Ops', 'A covert mission to save the world.', '2019-12-11', 'Action'),
('Candlelight Love', 'A romance born from a chance encounter.', '2022-03-21', 'Romance'),
('The Unseen Horror', 'A horror movie about an invisible entity.', '2016-11-02', 'Horror'),
('Mystic Lands', 'A group embarks on a fantasy adventure.', '2023-07-18', 'Fantasy'),
('The Funny Side', 'A comedian turns tragedy into laughter.', '2020-04-09', 'Comedy'),
('Shadow Warriors', 'A group of mercenaries fights crime.', '2021-08-14', 'Action'),
('Endless Love', 'A touching love story.', '2019-02-14', 'Romance'),
('Nightmare House', 'A horror story about a cursed house.', '2018-10-28', 'Horror'),
('The Lost Kingdom', 'A prince fights to reclaim his kingdom.', '2020-05-20', 'Fantasy'),
('Punchlines', 'A stand-up comedy showdown.', '2017-11-07', 'Comedy'),
('The Last Mission', 'An action-packed finale.', '2023-09-30', 'Action'),
('Love Notes', 'A musical romance story.', '2021-06-06', 'Romance'),
('The Possessed', 'A terrifying exorcism horror.', '2019-09-17', 'Horror'),
('Celestial Warriors', 'A team fights supernatural threats.', '2018-04-15', 'Fantasy');


INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
-- Reviews for The Grand Heist (MovieId = 1)
(5, 'Amazing action sequences!', '2019-06-01', 1),
(4, 'Great storytelling and characters.', '2019-06-10', 1),
(3, 'Good, but a bit predictable.', '2019-06-15', 1),
(4, 'Exciting and well-paced.', '2019-06-20', 1),
(5, 'A thrilling adventure!', '2019-06-25', 1);

-- Reviews for Love in Paris (MovieId = 2)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Beautiful love story.', '2020-02-20', 2),
(4, 'Heartwarming and romantic.', '2020-02-25', 2),
(3, 'Decent, but slow in parts.', '2020-03-01', 2),
(5, 'Captured the essence of romance.', '2020-03-05', 2),
(4, 'Lovely setting and chemistry.', '2020-03-10', 2);

-- Reviews for The Haunted Manor (MovieId = 3)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Scary and thrilling!', '2018-11-05', 3),
(4, 'A well-made horror movie.', '2018-11-10', 3),
(3, 'Creepy, but not too scary.', '2018-11-15', 3),
(4, 'Kept me on the edge of my seat.', '2018-11-20', 3),
(5, 'One of the best horror films!', '2018-11-25', 3);

-- Reviews for Dreamland (MovieId = 4)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Magical and immersive!', '2021-07-15', 4),
(4, 'Great fantasy elements.', '2021-07-20', 4),
(3, 'Enjoyable but predictable.', '2021-07-25', 4),
(5, 'A visually stunning experience.', '2021-07-30', 4);

-- Reviews for Laughter Therapy (MovieId = 5)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Hilarious and well-acted!', '2023-04-05', 5),
(4, 'Good humor and timing.', '2023-04-10', 5),
(3, 'Some jokes didn’t land.', '2023-04-15', 5),
(5, 'A must-watch for comedy lovers.', '2023-04-20', 5);

-- Reviews for Speed Chase (MovieId = 6)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Adrenaline rush from start to finish!', '2017-06-20', 6),
(4, 'Great action and car chases.', '2017-06-25', 6),
(3, 'A bit unrealistic, but fun.', '2017-06-30', 6);

-- Reviews for Forever Yours (MovieId = 7)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A touching love story.', '2022-08-25', 7),
(4, 'Beautiful performances.', '2022-08-30', 7),
(3, 'Some parts felt overly dramatic.', '2022-09-05', 7);

-- Reviews for Dark Shadows (MovieId = 8)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Genuinely creepy atmosphere.', '2016-11-30', 8),
(4, 'Good horror elements.', '2016-12-05', 8),
(3, 'Predictable but still scary.', '2016-12-10', 8);

-- Reviews for The Magic Portal (MovieId = 9)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A fascinating fantasy world.', '2021-04-05', 9),
(4, 'Engaging and creative.', '2021-04-10', 9),
(3, 'Great for kids and adults alike.', '2021-04-15', 9);

-- Reviews for Jokes on You (MovieId = 10)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Laugh-out-loud funny!', '2019-09-10', 10),
(4, 'Clever and well-written.', '2019-09-15', 10),
(3, 'Some jokes were hit or miss.', '2019-09-20', 10);

-- Reviews for Warriors of the Night (MovieId = 11)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Action-packed and thrilling.', '2020-12-25', 11),
(4, 'Great performances and cinematography.', '2021-01-02', 11),
(3, 'Could have had a better storyline.', '2021-01-10', 11);

-- Reviews for Eternal Love (MovieId = 12)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A love story that stands the test of time.', '2018-05-18', 12),
(4, 'Beautifully shot and emotional.', '2018-05-25', 12),
(3, 'Felt a bit too long.', '2018-06-01', 12);

-- Reviews for The Cursed Doll (MovieId = 13)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Absolutely terrifying!', '2019-11-02', 13),
(4, 'Great horror elements.', '2019-11-10', 13),
(3, 'Some parts were predictable.', '2019-11-15', 13);

-- Reviews for The Dragon’s Secret (MovieId = 14)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Epic fantasy adventure!', '2022-06-15', 14),
(4, 'Amazing world-building.', '2022-06-20', 14),
(3, 'Good, but felt rushed at times.', '2022-06-25', 14);

-- Reviews for Comedy Central (MovieId = 15)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Laugh-out-loud funny.', '2023-03-15', 15),
(4, 'Witty and entertaining.', '2023-03-20', 15),
(3, 'Some jokes didn’t land.', '2023-03-25', 15);

-- Reviews for The Escape Plan (MovieId = 16)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Brilliantly executed escape scenes.', '2017-07-25', 16),
(4, 'Engaging and suspenseful.', '2017-07-30', 16),
(3, 'Could have been more intense.', '2017-08-05', 16);

-- Reviews for Love Across Oceans (MovieId = 17)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A beautiful cross-cultural romance.', '2021-09-28', 17),
(4, 'Well-acted and emotional.', '2021-10-05', 17),
(3, 'A bit predictable.', '2021-10-10', 17);

-- Reviews for House of Screams (MovieId = 18)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Terrifying from start to finish!', '2016-12-18', 18),
(4, 'Kept me at the edge of my seat.', '2016-12-25', 18),
(3, 'A decent horror flick.', '2016-12-30', 18);

-- Reviews for The Enchanted Forest (MovieId = 19)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A visually stunning fairy tale.', '2020-05-02', 19),
(4, 'Magical and heartwarming.', '2020-05-10', 19),
(3, 'Some parts dragged.', '2020-05-15', 19);

-- Reviews for Funny Business (MovieId = 20)
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A hilarious take on office life.', '2019-01-25', 20),
(4, 'Clever and relatable.', '2019-02-02', 20),
(3, 'Could have been funnier.', '2019-02-10', 20);

-- Skyfall Warriors
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Non-stop action and gripping storylines. A must-see!', '2022-10-07', 21),
(4, 'Great action sequences, though the plot could have been stronger.', '2022-10-10', 21),
(3, 'Decent, but I expected more from the characters.', '2022-10-12', 21),
(5, 'Incredible stunts and a thrilling experience from start to finish!', '2022-10-15', 21),
(4, 'Tense and action-packed, just a bit predictable towards the end.', '2022-10-18', 21);

-- A Kiss in the Rain
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(4, 'A sweet, romantic tale with a beautiful setting.', '2018-07-04', 22),
(5, 'Absolutely loved the chemistry between the leads! So touching.', '2018-07-06', 22),
(3, 'A lovely romance, but the plot felt a bit familiar.', '2018-07-08', 22),
(4, 'The rain scene is magical. A perfect rom-com for a rainy day!', '2018-07-10', 22),
(5, 'Heartwarming and so romantic! Will watch it again.', '2018-07-12', 22);

-- The Abandoned Asylum
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(4, 'Chilling atmosphere and a great story, but some parts were too slow.', '2019-11-17', 23),
(5, 'Terrifying! The atmosphere was intense, I couldn’t look away.', '2019-11-19', 23),
(3, 'Had potential, but didn’t deliver on the scares.', '2019-11-21', 23),
(4, 'A solid horror movie with some truly eerie moments.', '2019-11-23', 23),
(5, 'One of the scariest movies I’ve seen in a while!', '2019-11-25', 23);

-- Kingdom of Dreams
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A magical journey filled with adventure and heart.', '2023-02-16', 24),
(4, 'Beautiful world-building, though the pacing was a bit slow at times.', '2023-02-18', 24),
(3, 'A fun fantasy, but some parts were a bit predictable.', '2023-02-20', 24),
(5, 'Absolutely loved the story and the fantasy world they created.', '2023-02-22', 24),
(4, 'The visuals were stunning, but the characters needed more depth.', '2023-02-24', 24);

-- Stand-Up Legends
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A hilarious movie with tons of laughs! So inspiring.', '2017-07-03', 25),
(4, 'Great story about the comedy world, though a bit too idealistic.', '2017-07-05', 25),
(3, 'Good performances, but some jokes felt forced.', '2017-07-07', 25),
(4, 'Funny and heartfelt. A must-watch for aspiring comedians.', '2017-07-09', 25),
(5, 'Absolutely loved the journey of these comedians. It’s motivational!', '2017-07-11', 25);

-- Tactical Force
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'An intense, action-packed movie with amazing stunts!', '2021-12-22', 26),
(4, 'The action was great, but the plot was a bit predictable.', '2021-12-24', 26),
(3, 'A good action movie, but nothing particularly special.', '2021-12-26', 26),
(5, 'Non-stop action and tension. Loved every second!', '2021-12-28', 26),
(4, 'Great action scenes, but the story could have been stronger.', '2021-12-30', 26);

-- Letters to Juliet
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(4, 'A touching love story with a beautiful Italian backdrop.', '2016-09-29', 27),
(5, 'So romantic and heartwarming. A perfect film for love story fans.', '2016-10-01', 27),
(3, 'A good romance, but I found the story a bit predictable.', '2016-10-03', 27),
(4, 'Loved the chemistry between the leads and the beautiful setting.', '2016-10-05', 27),
(5, 'The perfect blend of romance and nostalgia.', '2016-10-07', 27);

-- Whispering Shadows
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Terrifying and full of suspense. Couldn’t look away!', '2020-11-02', 28),
(4, 'An eerie, atmospheric horror film with some truly haunting moments.', '2020-11-04', 28),
(3, 'The story was good, but it could have been scarier.', '2020-11-06', 28),
(4, 'An interesting take on the ghost town genre. Some good scares.', '2020-11-08', 28),
(5, 'Absolutely creepy and intense. A must-watch for horror fans!', '2020-11-10', 28);

-- The Sorcerer’s Apprentice
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(4, 'A fun, magical adventure with great special effects.', '2018-05-09', 29),
(5, 'I loved the mix of magic and adventure. A very enjoyable film!', '2018-05-11', 29),
(3, 'A good movie, but some of the magic felt a little forced.', '2018-05-13', 29),
(4, 'The magical world was so cool, and the performances were solid.', '2018-05-15', 29),
(5, 'A fun magical adventure that I could watch again!', '2018-05-17', 29);

-- Laugh Riot
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'One of the funniest movies I’ve seen in years. Highly recommend!', '2019-09-01', 30),
(4, 'Hilarious with a heartwarming story. Loved it.', '2019-09-03', 30),
(3, 'A fun watch, but some of the jokes didn’t land for me.', '2019-09-05', 30),
(5, 'I couldn’t stop laughing. A perfect comedy for a lighthearted night.', '2019-09-07', 30),
(4, 'Funny and uplifting, though a bit predictable in parts.', '2019-09-09', 30);

-- Undercover Agent
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A thrilling action movie with great suspense and plot twists!', '2023-05-05', 31),
(4, 'Exciting and action-packed, but the pacing was a bit uneven.', '2023-05-07', 31),
(3, 'Good performance from the lead, but the story was a little predictable.', '2023-05-09', 31),
(5, 'Non-stop action and edge-of-your-seat moments. Loved it!', '2023-05-11', 31),
(4, 'Solid action movie, though some of the fight scenes felt repetitive.', '2023-05-13', 31);

-- Serendipity
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(4, 'A charming love story with a touch of fate and magic.', '2017-02-16', 32),
(5, 'Absolutely beautiful! One of my favorite romantic films.', '2017-02-18', 32),
(3, 'A bit too idealistic for my taste, but still a sweet love story.', '2017-02-20', 32),
(4, 'Perfect for a cozy evening. The romance is heartwarming.', '2017-02-22', 32),
(5, 'Love the concept of fate and chance encounters! So romantic.', '2017-02-24', 32);

-- Silent Screams
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'One of the scariest films I’ve seen. Truly chilling!', '2021-10-23', 33),
(4, 'Spine-tingling horror that kept me up at night!', '2021-10-25', 33),
(3, 'Good horror, but not as intense as I expected.', '2021-10-27', 33),
(4, 'A tense and eerie film, but some moments could have been scarier.', '2021-10-29', 33),
(5, 'A must-watch for horror fans. Full of unexpected scares.', '2021-10-31', 33);

-- Chronicles of Avalon
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'An epic fantasy with incredible world-building and adventure!', '2020-06-02', 34),
(4, 'A fantastic journey with beautiful landscapes and a strong plot.', '2020-06-04', 34),
(3, 'Good fantasy, but I wanted more character development.', '2020-06-06', 34),
(5, 'Totally immersive. I felt like I was in Avalon myself!', '2020-06-08', 34),
(4, 'A great fantasy film, though some parts felt predictable.', '2020-06-10', 34);

-- Comedy Kings
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Hilarious and full of amazing comedic moments. A must-see!', '2018-09-10', 35),
(4, 'Funny and entertaining, but some jokes could have been better timed.', '2018-09-12', 35),
(3, 'A fun movie, but not as funny as I hoped.', '2018-09-14', 35),
(5, 'The chemistry between the comedians was perfect. Laugh-out-loud moments!', '2018-09-16', 35),
(4, 'Lots of great humor, though the story could have been tighter.', '2018-09-18', 35);

-- Black Ops
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Action-packed and thrilling. A real rollercoaster ride!', '2019-12-12', 36),
(4, 'Great action and tension, but the plot could have been more developed.', '2019-12-14', 36),
(3, 'Good action, but I felt like it was missing something in the story.', '2019-12-16', 36),
(5, 'Intense, gripping, and full of jaw-dropping moments!', '2019-12-18', 36),
(4, 'Solid action movie with a great cast, but the pacing was off in places.', '2019-12-20', 36);

-- Candlelight Love
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A beautiful romance that made my heart melt. So touching.', '2022-03-23', 37),
(4, 'Sweet and romantic, though a bit predictable at times.', '2022-03-25', 37),
(3, 'Nice love story, but could have been more exciting.', '2022-03-27', 37),
(5, 'The perfect love story for a quiet evening. So heartwarming!', '2022-03-29', 37),
(4, 'A lovely film with a lot of heart, but a little cliché at times.', '2022-03-31', 37);

-- The Unseen Horror
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Terrifying and so unique. Loved the invisible threat!', '2016-11-03', 38),
(4, 'A great concept and genuinely creepy. The suspense was spot on.', '2016-11-05', 38),
(3, 'Interesting premise, but it could have been scarier.', '2016-11-07', 38),
(4, 'Creepy and atmospheric, but the ending was a bit underwhelming.', '2016-11-09', 38),
(5, 'One of the most unique horror films I’ve seen. Loved the concept.', '2016-11-11', 38);

-- Mystic Lands
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'An adventurous fantasy full of magic and mystery. Loved every moment!', '2023-07-20', 39),
(4, 'A fun fantasy with great world-building, though some characters were underdeveloped.', '2023-07-22', 39),
(3, 'Good adventure, but not very original. Still enjoyable, though.', '2023-07-24', 39),
(5, 'Incredible visuals and a thrilling journey into a mystical world.', '2023-07-26', 39),
(4, 'Exciting and full of magic, but some pacing issues slowed it down a bit.', '2023-07-28', 39);

-- The Funny Side
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Hilarious from start to finish. The perfect comedy for a laugh-out-loud night!', '2020-04-10', 40),
(4, 'Funny and heartwarming, with a great lead performance.', '2020-04-12', 40),
(3, 'Good comedy, but some jokes were too predictable.', '2020-04-14', 40),
(5, 'I couldn’t stop laughing. A must-watch for comedy lovers!', '2020-04-16', 40),
(4, 'A solid comedy with lots of funny moments, though the plot was a bit thin.', '2020-04-18', 40);

-- Shadow Warriors
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A thrilling action movie with amazing fight choreography. Loved it!', '2021-08-16', 41),
(4, 'Great action scenes, though some plot points felt rushed.', '2021-08-18', 41),
(3, 'Decent action, but I was hoping for a stronger storyline.', '2021-08-20', 41),
(5, 'Intense and full of action from start to finish. Highly recommended!', '2021-08-22', 41),
(4, 'A great action film, but the pacing could have been better.', '2021-08-24', 41);

-- Endless Love
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A beautiful, touching love story that will stay with you.', '2019-02-16', 42),
(4, 'A lovely romance with great chemistry between the leads.', '2019-02-18', 42),
(3, 'Nice love story, but I felt it could have been more dramatic.', '2019-02-20', 42),
(5, 'Such a heartwarming and emotional film. Loved it from beginning to end.', '2019-02-22', 42),
(4, 'Sweet and emotional, but the ending was a bit predictable.', '2019-02-24', 42);

-- Nightmare House
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'So scary! The atmosphere and tension kept me on edge the entire time.', '2018-10-30', 43),
(4, 'Chilling and well-made, but some parts were a little slow.', '2018-11-01', 43),
(3, 'It had potential, but it didn’t scare me as much as I expected.', '2018-11-03', 43),
(5, 'The suspense was unbearable, and the ending was fantastic!', '2018-11-05', 43),
(4, 'A solid horror film with great scares, but a few predictable moments.', '2018-11-07', 43);

-- The Lost Kingdom
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'An epic fantasy film with a great story and stunning visuals!', '2020-05-22', 44),
(4, 'Great world-building and action scenes, though it felt a bit slow at times.', '2020-05-24', 44),
(3, 'Enjoyable, but the plot was somewhat predictable and slow in the middle.', '2020-05-26', 44),
(5, 'A fantastic adventure that I couldn’t stop watching. Loved every minute!', '2020-05-28', 44),
(4, 'A visually stunning fantasy, but the pacing could have been better.', '2020-05-30', 44);

-- Punchlines
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Absolutely hilarious! The competition between the comedians was so fun to watch.', '2017-11-09', 45),
(4, 'Great comedy with some awesome performances, but the pacing could have been faster.', '2017-11-11', 45),
(3, 'A good comedy, but I expected more from the humor.', '2017-11-13', 45),
(5, 'So funny! The jokes and characters were fantastic, a perfect comedy film.', '2017-11-15', 45),
(4, 'Funny and lighthearted, though some of the humor felt a little forced at times.', '2017-11-17', 45);

-- The Last Mission
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A perfect finale! Action-packed and full of emotion.', '2023-10-02', 46),
(4, 'Great action sequences and a fitting conclusion, though some parts were predictable.', '2023-10-04', 46),
(3, 'Good, but didn’t feel as intense as the earlier films in the series.', '2023-10-06', 46),
(5, 'Non-stop action and a satisfying ending. Loved how it wrapped everything up!', '2023-10-08', 46),
(4, 'A solid end to the series. Action-packed and emotional.', '2023-10-10', 46);

-- Love Notes
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A beautiful musical love story! The music and romance were perfect.', '2021-06-08', 47),
(4, 'Charming and romantic, though I wish there was more focus on the music.', '2021-06-10', 47),
(3, 'A nice love story, but the musical numbers didn’t feel as strong as they could have.', '2021-06-12', 47),
(5, 'The music was amazing, and the chemistry between the leads was fantastic!', '2021-06-14', 47),
(4, 'A great mix of romance and music, though some of the songs didn’t stand out.', '2021-06-16', 47);

-- The Possessed
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'Terrifying! The exorcism scenes were chilling and intense.', '2019-09-19', 48),
(4, 'A good horror movie with some genuinely scary moments.', '2019-09-21', 48),
(3, 'It had a great premise, but some scenes felt too over-the-top.', '2019-09-23', 48),
(5, 'Incredibly creepy. One of the best exorcism horror films I’ve seen.', '2019-09-25', 48),
(4, 'A solid horror movie, though the pacing could have been better.', '2019-09-27', 48);

-- Celestial Warriors
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A visually stunning fantasy adventure. The characters were amazing!', '2018-04-17', 49),
(4, 'An exciting journey with great visuals and action, but the story felt a bit weak at times.', '2018-04-19', 49),
(3, 'Good fantasy, but lacked depth in the characters and plot.', '2018-04-21', 49),
(5, 'A magical adventure that kept me hooked from start to finish!', '2018-04-23', 49),
(4, 'Beautiful world-building, but could’ve used more character development.', '2018-04-25', 49);

-- The Grand Heist
INSERT INTO [dbo].[Reviews] ([Rate], [Comment], [CreatedAt], [MovieId]) VALUES
(5, 'A perfect mix of action and heist. So much fun to watch!', '2019-06-02', 50),
(4, 'A thrilling heist movie with great twists, but the pacing was a bit uneven.', '2019-06-04', 50),
(3, 'Entertaining, but I felt like it could have been more intense.', '2019-06-06', 50),
(5, 'Amazing action sequences and clever twists. A must-watch for fans of heist films!', '2019-06-08', 50),
(4, 'Great plot and action, though some of the characters felt underdeveloped.', '2019-06-10', 50);
