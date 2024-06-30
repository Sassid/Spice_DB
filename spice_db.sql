-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 30 juin 2024 à 22:28
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `spice_db`
--
CREATE DATABASE IF NOT EXISTS `spice_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `spice_db`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin01', '987654');

-- --------------------------------------------------------

--
-- Structure de la table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(100) DEFAULT NULL,
  `release_year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `release_year`) VALUES
(1, 'Spice', '1996'),
(2, 'Spiceworld', '1997'),
(3, 'Forever', '2000');

-- --------------------------------------------------------

--
-- Structure de la table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `age_when_joined` int(11) DEFAULT NULL,
  `age_now` int(11) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `personal_quote` text DEFAULT NULL,
  `fun_fact` text DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `artist`
--

INSERT INTO `artist` (`artist_id`, `firstname`, `lastname`, `age_when_joined`, `age_now`, `nickname`, `description`, `personal_quote`, `fun_fact`, `picture_url`) VALUES
(1, 'Melanie', 'Brown', 20, 49, 'Scary Spice', 'Known for her bold and fearless personality, Melanie Brown brought an edgy and wild energy to the group. She often wore leopard print and had a distinctive, powerful singing voice.', 'I\'ve always approached things with a hungry attitude.', 'Melanie Brown is a mother of three and has been a judge on the TV show \"America\'s Got Talent.\"', '../assets/img/cards/mel_b.png'),
(2, 'Geri', 'Halliwell', 22, 51, 'Ginger Spice', 'Known for her vibrant personality and fiery red hair, Geri Halliwell often wore bold and patriotic outfits, including the iconic Union Jack dress.', 'Life is about taking risks, being bold and daring to be different.', 'Geri Halliwell is an author of children\'s books and has served as a judge on talent shows like \"Australia\'s Got Talent.\"', '../assets/img/cards/geri.png'),
(3, 'Emma', 'Bunton', 18, 48, 'Baby Spice', 'Known for her sweet and innocent demeanor, Emma Bunton often wore pigtails and baby doll dresses, embodying a youthful, playful spirit.', 'Be yourself and believe in what you do.', 'Emma Bunton has a successful career as a radio presenter and has appeared on several TV shows.', '../assets/img/cards/emma.png'),
(4, 'Melanie', 'Chisholm', 20, 50, 'Sporty Spice', 'Known for her athletic style and impressive vocal range, Melanie Chisholm often wore tracksuits and showcased a sporty, tomboy image.', 'It\'s about being true to yourself, whatever makes you feel good.', 'Melanie Chisholm has a black belt in karate and has released several solo albums post-Spice Girls.', '../assets/img/cards/mel_c.png'),
(5, 'Victoria', 'Adams', 20, 50, 'Posh Spice', 'Known for her sophisticated and glamorous style, Victoria (now) Beckham often wore high-fashion outfits and little black dresses, embodying a posh and elegant persona.', 'I love fashion and that\'s how I express myself.', 'Victoria Beckham has a highly successful fashion line and is married to retired soccer star David Beckham.', '../assets/img/cards/victoria.png');

-- --------------------------------------------------------

--
-- Structure de la table `song`
--

CREATE TABLE `song` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(100) DEFAULT NULL,
  `duration_seconds` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `lyrics` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `song`
--

INSERT INTO `song` (`song_id`, `song_name`, `duration_seconds`, `album_id`, `artist_id`, `lyrics`) VALUES
(1, 'Wannabe', 173, 1, 1, 'Ha ha ha ha ha\nYo, I\'ll tell you what I want, what I really, really want\nSo tell me what you want, what you really, really want\nI\'ll tell you what I want, what I really, really want\nSo tell me what you want, what you really, really want\nI wanna, (ha) I wanna, (ha) I wanna, (ha) I wanna, (ha)\nI wanna really, really, really wanna zigazig ah\nIf you want my future, forget my past\nIf you wanna get with me, better make it fast\nNow don\'t go wasting my precious time\nGet your act together we could be just fine\nI\'ll tell you what I want, what I really, really want\nSo tell me what you want, what you really, really want\nI wanna, (ha) I wanna, (ha) I wanna, (ha) I wanna, (ha)\nI wanna really, really, really wanna zigazig ah\nIf you wanna be my lover, you gotta get with my friends\n(Gotta get with my friends)\nMake it last forever, friendship never ends\nIf you wanna be my lover, you have got to give\nTaking is too easy, but that\'s the way it is\nOh, what do you think about that?\nNow you know how I feel\nSay you can handle my love, are you for real?\n(Are you for real?)\nI won\'t be hasty, I\'ll give you a try\nIf you really bug me then I\'ll say goodbye\nYo, I\'ll tell you what I want, what I really, really want\nSo tell me what you want, what you really, really want\nI wanna, (ha) I wanna, (ha) I wanna, (ha) I wanna, (ha)\nI wanna really, really, really wanna zigazig ah\nIf you wanna be my lover, you gotta get with my friends\n(Gotta get with my friends)\nMake it last forever, friendship never ends\nIf you wanna be my lover, you have got to give\n(You\'ve got to give)\nTaking is too easy, but that\'s the way it is\nSo, here\'s a story from A to Z\nYou wanna get with me, you gotta listen carefully\nWe got Em in the place who likes it in your face\nYou got G like MC who likes it on a\nEasy V doesn\'t come for free, she\'s a real lady\nAnd as for me, ha you\'ll see\nSlam your body down and wind it all around\nSlam your body down and wind it all around\nIf you wanna be my lover, you gotta get with my friends\n(Gotta get with my friends)\nMake it last forever, friendship never ends\nIf you wanna be my lover, you have got to give\n(You\'ve got to give)\nTaking is too easy, but that\'s the way it is\nIf you wanna be my lover\nYou gotta, you gotta, you gotta, you gotta, you gotta\nSlam, slam, slam, slam (make it last forever)\nSlam your body down and wind it all around\nSlam your body down and wind it all around\nHa, ha, ha, ha, ha\nSlam your body down and wind it all around\nSlam your body down and zigazig ah\nIf you wanna be my lover'),
(2, 'Say You\'ll Be There', 236, 1, 1, 'Oh, say you\'ll be there\nI\'m giving you everything\nAll that joy can bring\nThis I swear, ow\nLast time that we had this conversation\nI decided we should be friends, yeah\nBut now, we\'re going \'round in circles\nTell me will this déjà vu never end? No\nAnd now you tell me that you\'re falling in love\nWell, I never ever thought that would be, hey\nThis time, you gotta take it easy\nThrowing far too much emotions at me\nBut any fool can see they\'re falling\nI gotta make you understand\nI\'m giving you everything\nAll that joy can bring\nThis I swear (I\'ll give you everything)\nAnd all that I want from you\nIs a promise you will be there\nSay you will be there, ow\nSay you will be there\nAh, won\'t you sing it with me?\nIf you put two and two together\nYou will see what our friendship is for, oh\nIf you can\'t work this equation\nThen I guess I\'ll have to show you the door\nThere is no need to say you love me\nIt would be better left unsaid\nI\'m (I\'m) giving you everything (I\'ll give you everything)\nAll that joy can bring\nThis I swear (yes, I swear)\nAnd (and) all that I want from you (all I want from you)\nIs a promise you\'ll be there (is a promise you)\nYeah, I want you\nAny fool can see they\'re falling\nI gotta make you understand\nI\'ll give you everything, on this I swear\nJust promise you\'ll always be there\nI\'m giving you everything (I\'m giving you everything)\nAll that joy can bring (all that joy can bring)\nThis I swear (yes, I swear)\nAnd all that I want from you (all that I want from you)\nIs a promise you\nWill be there (yeah) (I want you)\nI\'m giving you everything\nAll that joy can bring\nThis I swear\nAnd all that I want from you\nIs a promise you\nWill be there\nI\'m giving you everything\nAll that joy can bring\nThis I swear\nAnd all that I want from you\nIs a promise you\nWill be there\nI\'m giving you everything'),
(3, '2 Become 1', 241, 1, 1, 'Candlelight and soul forever\nA dream of you and me together\nSay you believe it, say you believe it\nFree your mind of doubt and danger\nBe for real, don\'t be a stranger\nWe can achieve it, we can achieve it\nCome a little bit closer baby\nGet it on, get it on\n\'Cause tonight is the night when two become one\nI need some love like I\'ve never needed love before (wanna make love to ya\', baby)\nI had a little love, now I\'m back for more (wanna make love to ya\', baby)\nSet your spirit free\nIt\'s the only way to be\nSilly games that you were playing\nEmpty words we both were saying\nLet\'s work it out boy, let\'s work it out boy\nAny deal that we endeavor\nBoys and girls feel good together\nTake it or leave it, take it or leave it\nAre you as good as I remember, baby?\nGet it on, get it on\n\'Cause tonight is the night when two become one\nI need some love like I\'ve never needed love before (wanna make love to ya\', baby)\nI had a little love, now I\'m back for more (wanna make love to ya\', baby)\nSet your spirit free\nIt\'s the only way to be\nBe a little bit wiser baby\nPut it on, put it on\n\'Cause tonight is the night when two become one\nI need some love like I\'ve never needed love before (wanna make love to ya\', baby)\nI had a little love, now I\'m back for more (wanna make love to ya\', baby)\nI need some love like I\'ve never needed love before (wanna make love to ya\', baby)\nI had a little love, now I\'m back for more (wanna make love to ya\', baby)\nSet your spirit free\nIt\'s the only way to be\nIt\'s the only way to be\nIt\'s the only way to be'),
(4, 'Love Thing', 218, 1, 1, 'You know I don\'t wanna know,\nDon\'t wanna know about that love thing\nGive me what I\'m needing\nYou know what I\'m dreaming of\nDon\'t wanna know about love thing\nBeen broken hearted before (oh)\nBut that\'s the last time it happens to me yeah\nI keep on giving still you\'re asking for more\nToo much emotion baby, why can\'t you see\nI\'m not afraid of your love\n(I\'m not afraid of your love)\nWhy can\'t you see I\'ve had my share of that\nYou\'re what I want boy\nYou know you got boy\nYou gotta want me\nIt\'s just what I need\nI\'m not that easy as a matter of a fact\nThere\'s no room for lovin\'\nStop that push and shovin\' yeah\nDon\'t wanna know about that love thing\nGive me what I\'m needing\nYou know what I\'m dreaming of\nDon\'t wanna know about that love thing\nNow don\'t go wasting my time\n(Don\'t go wasting my time)\nYou\'re not the only thing I\'ve got on my mind\nMy friends are with me when you ain\'t been around\nYour precious words and promises ain\'t bringin\' me down\nI\'ve got some living to do\n(I\'ve got some living to do)\nDon\'t assume I\'m gonna be with you\nYour what I want boy\nYou know you got boy\nYou gotta want me\nIt\'s just what I need\nI\'m not that easy as a matter of a fact\nThere\'s no room for lovin\'\nStop that push and shovin\' yeah\nDon\'t wanna know about that love thing\nGive me what I\'m needing\nYou know what I\'m dreaming of\nDon\'t wanna know about that love thing\nStop pushing\nYou\'re rushing (you\'re losing my lovin\')\nI hope it (I see it)\nJust play it (you feel it)\nGotta be bold (bold and oh so strong)\nGet with this and you got it goin\' on\nOn and on with the girls named Spice\nYou wanna get with us then you\'d better think twice\nGod help the mister (yeah God help the mister)\nThat comes between me and my sisters\nI\'m not afraid of your love\n(I\'m not afraid of your love)\nWhy can\'t you see I\'ve had my share of that\nYou\'re what I want boy\nYou know you got boy\nYou gotta want me\nIt\'s just what I need\nI\'m not that easy as a matter of a fact\nThere\'s no room for lovin\'\nStop that push and shovin\' yeah\nDon\'t wanna know about that love thing\nGive me what I\'m needing\nYou know what I\'m dreaming of\nDon\'t wanna know about that love thing\nThere\'s no room for lovin\'\nStop that push and shovin\' yeah\nDon\'t wanna know about that love thing\nGive me what I\'m needing\nYou know what I\'m dreaming of\nDon\'t wanna know about that love thing\nThere\'s no room for lovin\'\nStop that push and shovin\' yeah\nDon\'t wanna know about that love thing\nGive me what I\'m needing\nYou know what I\'m dreaming of'),
(5, 'Last Time Lover', 251, 1, 1, 'Listen up I gotta tell ya\nAbout the ins and outs and goings on\nI wouldn\'t tell just anybody (oh)\nAbout the fox that I\'ve been chasing (chasing)\nHe\'s resistant, not persistent\nIt didn\'t stop me from homing in\n\'Cause I\'m choosy not a floozy\nI get my hit and then I run with it\nLast time lover (lover)\nDo you think I\'m really cool and sexy?\nAnd I know you wanna get with me\nLast time lover (lover)\nDo you wanna be my last time, baby?\nCould it be your first time maybe?\nWe got up and down to it (oh, yeah)\nLike the dirty bass in the music\nI got my major chords strummin\'\nTook some time and then we\'re really buzzin\'\nFirst bite wet my appetite (mm-hmm)\nSecond helping\'s always better\nStarted gettin\' burnin\' hot\nI found my pride, I\'m not easy\nSlowed it down I said stop (I said stop)\nLast time lover (lover)\nDo you think I\'m really cool and sexy?\nAnd I know you wanna get with me\nLast time lover (lover)\nDo you wanna be my last time, baby?\nCould it be your first time maybe?\nLast time lover (treat me right)\nLovin\' under cover (all night)\nLast time lover (makes me feel good)\nLovin\' under cover (like you should)\nLast time lover\nLast time lover (treat me right)\nLovin\' under cover (all night)\nCool sexy, ever ready\nSomeone fine, always steady\nGentle hands, dirty mind\nUse your head and don\'t be blind\nWords of love they don\'t wash with me\nWhat\'s the rush no urgency you see\nCrazy boy, potential lover\nFirst and last lover brother, there ain\'t no other\nCrazy, sweety, cool but racy\nSteady, ready, go, yes!\nLast time lover (lover)\nDo you think I\'m really cool and sexy?\nAnd I know you wanna get with me\nLast time lover (lover)\nDo you wanna be my last time, baby?\nCould it be your first time maybe?\nLast time lover (lover)\nDo you think I\'m really cool and sexy?\nAnd I know you wanna get with me\nLast time lover (lover)\nDo you wanna be my last time, baby?\nCould it be your first time maybe?\nLast time lover (treat me right)\nLovin\' under cover (all night)\nDo you think I\'m really cool and sexy?\nAnd I know you wanna get with me\nLast time lover (makes me feel good)\nLovin\' under cover (like you should)\nDo you wanna be my last time, baby?\nCould it be your first time maybe?\nLast time lover (treat me right)\nLovin\' under cover (all night)\nDo you think I\'m really cool and sexy?\nAnd I know you wanna get with me'),
(6, 'Mama', 300, 1, 1, 'She used to be my only enemy and never let to me be free\nCatching me in places that I knew I shouldn\'t be\nEvery other day, I crossed the line, I didn\'t mean to be so bad\nI never thought you would become the friend I never had\nBack then, I didn\'t know why\nWhy you were misunderstood\nSo now, I see through your eyes\nAll that you did was love\nMama, I love you\nMama, I care\nMama, I love you\nMama, my friend (you\'re my friend)\nI didn\'t want to hear it then, but I\'m not ashamed to say it now\nEvery little thing you said and did was right for me\nI had a lot of time to think about, about the way I used to be\nNever had a sense of my responsibility\nBack then, I didn\'t know why\nWhy you were misunderstood\nSo now, I see through your eyes\nAll that you did was love\nMama, I love you\nMama, I care\nMama, I love you\nMama, my friend (you\'re my friend)\nYou\'re my friend\nBut now, I\'m sure I know why (I know why)\nWhy you were misunderstood\nSo now, I see through your eyes\nAll I can give you is love (all I can give you is love)\nMama, I love you\nMama, I care\nMama, I love you\nMama, my friend\nMama, I love you\nMama, I care\nMama, I love you\nMama, my friend\nOh, oh-oh (you\'re my friend)\nMama (you\'re my friend)\nWhoa, oh-oh\nMama, my love\nOh, oh-oh, Mama, I love you (me loving you, you loving me)\nMama, I care (a love that\'s true, and guaranteed)\nWhoa, oh-oh, Mama, I love you (me loving you, me loving you)\n(You loving me, you loving me)\nMama, my friend (a love that\'s true, a love that\'s true)\n(And guaranteed, so true)\nMama, I love you (me loving you, me loving you)\n(You loving me, you loving me)\nMama, I care (a love that\'s true, a love that\'s true)\n(And guaranteed, so true)\nMama, I love you (me loving you, me loving you)\n(You loving me, you loving me)\nMama, I care (a love that\'s true, a love that\'s true)\n(And guaranteed, so true)\nMama, I love you (me loving you, me loving you)\n(You loving me, you loving me)\nMama, I care (a love that\'s true, a love that\'s true), oh, oh, oh\n(And guaranteed, so true)\nMama, I love you (me loving you, me loving you)\n(You loving me, you loving me)\nMama, I care (a love that\'s true, a love that\'s true)\n(It\'s so true)'),
(7, 'Who Do You Think You Are', 240, 1, 1, 'The race is on to get out of the bottom\nThe top is high so your roots are forgotten\nGiving is good as long as you\'re getting\nWhat\'s driving you it\'s ambition and betting\nI said who do you think you are\nOh, oh (do you think you are, I said)\nOoh some kind of superstar (oh, oh, oh)\nYou have got to swing it, shake it, move it, make it\nWho do you think you are\nTrust it, use it, prove it, groove it\nShow me how good you are\nSwing it, shake it, move it, make it\nWho do you think you are\nTrust it, use it, prove it, groove it\nShow how good you are\nYou\'re swelling out in the wrong direction\nYou\'ve got the bug, superstar, you\'ve been bitten\nYour trumpet\'s blowing for far too long\nClimbing the snake of the ladder, but you\'re wrong\nI said who do you think you are (oh, oh)\n(Do you think you are, I said)\n(Oh) some kind of superstar (oh, oh, oh)\nYou have got to swing it, shake it, move it, make it\nWho do you think you are\nTrust it, use it, prove it, groove it\nShow me how good you are\nSwing it, shake it, move it, make it\nWho do you think you are\nTrust it, use it, prove it, groove it\nShow how good you are\nYou have got to reach on up, never lose your soul\nYou have got to reach on up, never lose control\nI said who do you think you are (oh, oh)\n(Do you think you are, I said)\n(Oh) some kind of superstar (oh, oh, oh)\nYou have got to swing it, shake it, move it, make it\nWho do you think you are?\nTrust it, use it, prove it, groove it\nShow me how good you are\nSwing it, shake it, move it, make it\nWho do you think you are\nTrust it, use it, prove it, groove it\nShow me how good you are\nSwing it, shake it, move it, make it\nWho do you think you are?\nTrust it, use it, prove it, groove it\nShow me how good you are\nSwing it, shake it, move it, make it\nWho do you think you are\nTrust it, use it, prove it, groove it\nShow me how good you are\nSwing it, shake it, move it, make it\nWho do you think you are\nTrust it, use it, prove it, groove it\nShow me how good you are\nSwing it, shake it, move it, make it\nWho do you think you are\nTrust it, use it, prove it, groove it\nShow me how good you are'),
(8, 'Something Kinda Funny', 223, 1, 1, 'Oh yeah\nOh yeah\nWe\'ve got something kinda funny goin\' on (we\'ve got it, yeah)\nWe\'ve got something kinda funny goin\' on\nWherever you\'re going, high or low\nRemember to sure enjoy the show\nSo climb aboard my journey deep inside\nBetter late than dead on time\nOoh, it\'s you I know I have got to feed, yeah, yeah\nOoh, don\'t take from me more than you really need\nMore than you really need\nWe\'ve got something kinda funny goin\' on (we\'ve got it)\nWe\'ve got something kinda funny goin\' on (we\'ve got it, oh)\nHappiness is just a state of your mind\nKeep searching, who knows what you may find\nRules are for fools, and fool\'s paradise is hard to find\nPlay my game or get left behind\nOoh, it\'s you I know that I have got to feed, yeah, yeah\nOoh, take from me what you feel that you need\nYou feel that you need\nWe\'ve got something kinda funny goin\' on (we\'ve got it)\nWe\'ve got something kinda funny goin\' on (we\'ve got it, ooh)\nYou\'ve got it, you\'ve got it, hey, hey\nYou\'ve got it, you\'ve got it, hey, ey, ey\nYou\'ve got it, you\'ve got it, hey, ey, ey\nHey, hey, ey, ey, ey, ey\nFeelin\' kinda funny (ey)\nFeelin\' kinda queezy I ain\'t that easy (hey, hey, ey, ey, ey, ey)\nWe\'ve got something kinda funny goin\' on (we\'ve got it, we\'ve got it, ooh)\nSomething kinda funny\nWe\'ve got something kinda funny goin\' on\nOoh, yeah, ooh, yeah (we\'ve got it, we\'ve got it, ooh)\nWe\'ve got something kinda funny goin\' on (something kinda funny)\n(We\'ve got it, we\'ve got it)\nWe\'ve got something kinda funny goin\' on (ooh, ooh, yeah)\n(We\'ve got it, we\'ve got it oh) there\'s something kinda funny\nWe\'ve got something kinda funny goin\' on (we\'ve got it, we\'ve got it, ooh)\nThere\'s something kinda funny\nWe\'ve got something kinda funny goin\' on (ooh yeah)'),
(9, 'Naked', 266, 1, 1, 'Naivety and childhood left behind, deprived of the goodness of mankind\nPast encounters have made her strong, strong enough to carry on and on\nUndress you with her eyes, uncover the truth from the lies\nStrip you down, no need to care, lights are low exposed and bare\nNaked\nNothing but a smile upon her face\nNaked\nShe wants to play seek and hide, no one to hide behind\nNaked\nThis child has fallen from grace\nNaked\nDon\'t be afraid to stare, she is only naked\nShe knows exactly what to do with men like you\nInside out in her mind there\'s no doubt where you\'re coming from\nMystery will turn you on\nUndress you with her eyes, uncover the truth from the lies\nStrip you down, no need to care, lights are low exposed and bare\nNaked\nNothing but a smile upon her face\nNaked\nShe wants to play seek and hide no one to hide behind\nNaked\nThis child has fallen from grace\nNaked\nDon\'t be afraid to stare, she is only naked (naked)\nHello? It\'s me\nI thought you\'d understand\nWell maybe I should have kept my mouth shut\nI keep seeing such a pretty picture\nI\'d rather be hated than pitied\nMaybe I should have left it to your imagination\nI just want to be me\nThis angel\'s dirty face is sore, holding on to what she had before\nNot sharing secrets with any old fool, now she\'s gonna keep her cool\nShe wants to get naked\nShe wants to get naked\nNaked\nNothing but a smile upon her face\nNaked\nShe wants to play seek and hide, no one to hide behind\nNaked\nThis child has fallen from grace\nNaked\nDon\'t be afraid to stare, she is only naked\nNaked\nNothing but a smile upon her face\nNaked\nShe wants to play seek and hide, no one to hide behind\nNaked\nThis child has fallen from grace\nNaked\nDon\'t be afraid to stare, she is only naked\nNaked\nNothing but a smile upon her face\nNaked\nShe wants to play seek and hide, no one to hide behind\nNaked\nThis child has fallen from grace\nNaked'),
(10, 'If U Can\'t Dance', 229, 1, 1, 'If you can\'t dance, if you can\'t dance\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance to this, you can\'t do nothing for me baby\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance to this, you can\'t do nothing for me baby\nNow we got the flavor, the bad behavior\nThe rhythm, the melody, the juice for you to savor\nRockin\' and vibin\' somebody is jivin\'\nYou need to take a tip, sort it out, get a grip\nWhenever I go out, whenever it may be\nThere never is a Keanu but the dweeb lookin\' at me\nBut then even if I did score, he\'s a looser in the dance floor\nTake a deep breath count one, two, three\nEven when his eyes met mine\nHis slamming moves were out of time\nCan\'t you just feel the groove?\nWhy don\'t you move?\nIt\'s easy, can\'t you see?\nTake my hands and dance with me\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance to this, you can\'t do nothing for me baby\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance to this, you can\'t do nothing for me baby\nHey macho, te ví el otro día, me dio mucha, mucha alegría\nEscucha la música, Ay madre mía!\nHey chico, tu no tienes nada\nQue susto, que sueco, que polla, que tieso\nOh, no me toques, ay que pero, feo\nVenga, venga, marcha salida, toma esa música\nMe cantas deprisa, cuidado, cuidado, hey chico\nQue loco, toma mi ritmo, me voy contigo\nHey macho te quiero, quiero un hombre, necesito si\nPero no tú, un hombre, hey macho, hey macho\nSi no bailas esto no puedes nada conmigo\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance to this, you can\'t do nothing for me baby\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance to this, you can\'t do nothing for me baby\nYou can\'t do nothing for me baby\nOh-whoa-whoa-whoa\nNothing baby\nOh-whoa-whoa-whoa\nThe rhythm\nYou can\'t do nothing for me baby\nEven when his eyes met mine (oh-whoa-whoa-whoa)\nHis slamming boots were out of time\nCan\'t you just feel the groove?\nWhy don\'t you move? (Oh-whoa-whoa-whoa)\nIt\'s easy can\'t you see?\nTake my hands and dance with me\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance to this, you can\'t do nothing for me baby\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance to this, you can\'t do nothing for me baby\nCan\'t do nothing for me baby (if you can\'t dance, if you can\'t dance)\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance to this, you can\'t do nothing for me baby\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance to this, you can\'t do nothing for me baby\nIf you can\'t dance, if you can\'t dance (you can\'t do nothing for me baby)\nIf you can\'t dance, if you can\'t dance\nIf you can\'t dance to this, you can\'t do nothing for me baby'),
(11, 'Spice Up Your Life', 175, 2, 1, ''),
(12, 'Stop', 204, 2, 1, ''),
(13, 'Too Much', 271, 2, 1, ''),
(14, 'Saturday Night Divas', 266, 2, 1, ''),
(15, 'Never Give Up on the Good Times', 270, 2, 1, ''),
(16, 'Move Over', 173, 2, 1, ''),
(17, 'Do It', 241, 2, 1, ''),
(18, 'Denying', 227, 2, 1, ''),
(19, 'Viva Forever', 309, 2, 1, ''),
(20, 'The Lady Is a Vamp', 228, 2, 1, ''),
(21, 'Holler', 255, 3, 1, ''),
(22, 'Tell Me Why', 254, 3, 1, ''),
(23, 'Let Love Lead the Way', 251, 3, 1, ''),
(24, 'Right Back at Ya', 235, 3, 1, ''),
(25, 'Get Down with Me', 220, 3, 1, ''),
(26, 'Wasting My Time', 254, 3, 1, ''),
(27, 'Weekend Love', 257, 3, 1, ''),
(28, 'Time Goes By', 251, 3, 1, ''),
(29, 'If You Wanna Have Some Fun', 261, 3, 1, ''),
(30, 'Oxygen', 238, 3, 1, ''),
(31, 'Goodbye', 275, 3, 1, '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index pour la table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Index pour la table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Index pour la table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
