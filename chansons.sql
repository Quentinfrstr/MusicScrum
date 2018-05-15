-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 11 Mai 2018 à 10:59
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `musique`
--

-- --------------------------------------------------------

--
-- Structure de la table `chansons`
--

CREATE TABLE IF NOT EXISTS `chansons` (
  `id_Chanson` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) COLLATE utf8_bin NOT NULL,
  `auteur` varchar(100) COLLATE utf8_bin NOT NULL,
  `paroles` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_Chanson`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=63 ;

--
-- Contenu de la table `chansons`
--

INSERT INTO `chansons` (`id_Chanson`, `titre`, `auteur`, `paroles`) VALUES
(1, 'Papaoutai', 'Stromae', 'Où t''es, papaoutai?\r\nOù t''es\r\nOù t''es, papaoutai?\r\nOù t''es'),
(2, 'Mistral gagnant', 'Renaud', 'A m''asseoir sur un banc cinq minutes avec toi\r\nEt regarder les gens tant qu''y en a\r\nTe parler du bon temps qu''est mort ou qui r''viendra\r\nEn serrant dans ma main tes p''tits doigts'),
(3, 'Les lacs du Connemara', 'Michel Sardou', 'Terre brûlée au vent \r\nDes landes de pierre, \r\nAutour des lacs, \r\nC''est pour les vivants \r\nUn peu d''enfer, \r\nLe Connemara. '),
(4, 'La Bohème', 'Charles Aznavour', 'La bohème, la bohème\r\nÇa voulait dire on est heureux\r\nLa bohème, la bohème\r\nNous ne mangions qu''un jour sur deux'),
(5, 'Wesh Alors', 'Jul', 'Wesh alors, wesh alors\r\nWesh alors, wesh alors\r\nWesh alors\r\nSors ta beuh, ta plaquette\r\nJ''suis dans l''game en claquettes\r\nDans l''carré VIP en survêt''\r\nViens pas me prendre la tête'),
(6, 'Tchikita', 'Jul', 'Elle a l''regard qui tue Tchikita\r\nCheveux longs comme Nikita\r\nSi elle me quitte pas, j''la quitte pas\r\nTchikita, Tchikita'),
(7, 'Basique', 'Orelsan', 'Basique, simple, simple, basique\r\nBasique, simple, simple, basique\r\nVous n''avez pas les bases, vous n''avez pas les bases\r\nVous n''avez pas les bases, vous n''avez pas les bases'),
(8, 'Les Sardines', 'Patrick Sébastien', 'Ha ! Qu''est-ce qu''on est serré, au fond de cette boite, \r\nChantent les sardines, chantent les sardines, \r\nHa ! Qu''est-ce qu''on est serré, au fond de cette boite, \r\nChantent les sardines entre l''huile et les aromates. (x2) '),
(9, 'Allumer le feu', 'Johnny Hallyday', 'Allumer le feu \r\nAllumer le feu \r\nEt faire danser les diables et les dieux \r\nAllumer le feu '),
(10, 'Il en faut peu pour être heureux', 'Disney', 'Il en faut peu pour être heureux \r\nVraiment très peu pour être heureux \r\nIl faut se satisfaire du nécessaire \r\nUn peu d''eau fraîche et de verdure \r\nQue nous prodigue la nature \r\nQuelques rayons de miel et de soleil '),
(11, 'Libérée délivrée', 'Disney', 'Libérée, Délivrée \r\nJe ne mentirai plus jamais \r\nLibérée, Délivrée \r\nC''est décidé, je m''en vais '),
(12, 'Dommage', 'Bigflo & Oli', 'Ah il aurait du y aller, il aurait du le faire, crois-moi\r\nOn a tous dit "ah c''est dommage, ah c''est dommage, c''est p''t''être la dernière fois"'),
(13, 'Réseaux', 'Niska', 'Posé, j''suis sous Jack dans mon bendo \r\nJ''fais repérage de femmes sur les réseaux \r\nJ''ai vu ses lolos \r\nElle m''a pas followback quand je l''ai follow'),
(14, 'Femme libérée', 'Cookie Dlinger', 'Ne la laisse pas tomber \r\nElle est si fragile  \r\nÊtre une femme libérée tu sais c''est pas si facile \r\nNe la laisse pas tomber \r\nElle est si fragile \r\nÊtre une femme libérée tu sais c''est pas si facile '),
(15, 'Magic in the Air', 'Magic System', 'Feel the magic in the air\r\nAllez, allez, allez\r\nLevez les mains en l''air\r\nAllez, allez, allez'),
(16, 'Le lundi au soleil', 'Claude Francois', 'Le lundi au soleil \r\nC''est une chose qu''on n''aura jamais \r\nChaque fois c''est pareil \r\nC''est quand on est derrière les carreaux \r\nQuand on travaille que le ciel est beau \r\nQu''il doit faire beau sur les routes \r\nLe lundi au soleil '),
(17, 'Bonjour', 'Vald', 'Il a pas dit bonjour\r\nDu coup, il s''est fait niquer sa mère\r\nC''t''a dire que l''mec arrivait\r\nTout l''monde a dit bonjour\r\nMais lui\r\nIl a pas dit bonjour'),
(18, 'Sur ma route', 'Black M', 'Sur ma route, oui\r\nIl y a eu du move, oui\r\nDe l''aventure dans l''movie\r\nUne vie de roots\r\nSur ma route, oui\r\nJe n''compte plus les soucis\r\nDe quoi devenir fou, oui\r\nUne vie de roots'),
(19, 'Bella', 'Maître Gims', 'Elle répondait au nom de "Bella"\r\nLes gens du coin ne voulaient pas la cher-lâ\r\nElle faisait trembler tous les villages\r\nLes gens me disaient, "Méfie-toi de cette fille-là"'),
(20, 'A l''heure où je me couche', 'Casseurs Flowters', 'Un jour, on est venus au monde\r\nDepuis, on attend que le monde vienne à nous\r\nTant mieux si la route est longue\r\nOn pourra faire un peu plus de détours\r\nL''avenir appartient à ceux qui s''lèvent à l''heure où j''me couche\r\nL''avenir appartient à ceux qui s''lèvent à l''heure où j''me couche'),
(21, 'Toi plus moi', 'Grégoire', 'Oh toi plus moi, plus tous ceux qui le veulent, \r\nPlus lui plus elle plus tous ceux qui sont seuls \r\nAllez venez et entrez dans la danse \r\nAllez venez c''est notre jour de chance '),
(22, 'Ca m''énerve', 'Helmut Fritz', 'Ca m''éneeeeerve \r\nToutes celles qui portent la frange à la Kate Moss \r\nCa m''éneeeeerve \r\nLe rouge à lèvres c''est fini maintenant c''est le gloss '),
(23, 'Alors on danse', 'Stromae', 'Alors on danse\r\nAlors on danse\r\nAlors on danse\r\nAlors on danse\r\nAlors on danse'),
(24, 'Ma direction', 'Sexion d''assaut', 'C''est ma direction!\r\nJ''ai pété les plombs, sans abandonner ni baisser les bras\r\nPlus d''nouvelles, batterie faible, malédiction\r\nDorénavant, je vais de l''avant, c''est ma direction\r\nMa direction'),
(25, 'On Verra', 'Nekfeu', 'On verra bien ce que l''avenir nous réservera \r\nOn verra bien, vas-y, viens, on n''y pense pas '),
(26, 'La tribu de Dana', 'Manau', 'Dans la vallée oh oh de Dana lalilala. \r\nDans la vallée oh oh j''ai pu entendre les échos. \r\nDans la vallée oh oh de Dana lalilala. '),
(27, 'Tchoin', 'Kaaris', 'La gow là c''est p''têtre une fille bien \r\nMais on préfère les tchoins tchoins tchoins \r\nLa gow là c''est p''têtre une fille bien \r\nMais on préfère les tchoins tchoins tchoins'),
(28, 'Balader', 'Sexion d''assaut', 'Donc je vais me balader\r\nAllez me balader (yeah)\r\nBalader\r\nAllez me balader (yeah)\r\nJe vais me balader aux Champs Élysées'),
(29, 'Macarena', 'Damso', 'Oh là là\r\nMon cœur danse la macarena, la la la la la la la la la la\r\nOh là là\r\nMon cœur danse la macarena, la la la la la la la la la la'),
(30, 'Champs Elysées', 'Joe Dassin', 'Aux Champs-Elysées, aux Champs-Elysées \r\nAu soleil, sous la pluie, à midi ou à minuit \r\nIl y a tout ce que vous voulez aux Champs-Elysées'),
(31, 'Santiano', 'Hugues Aufray', 'C''est un fameux trois-mâts, fin comme un oiseau\r\n(Hisse et ho, Santiano)\r\nDix-huits noeuds, quatre cents tonneaux\r\nJe suis fier d''y être matelot'),
(32, 'Je veux', 'Zaz', 'Je veux d''l''amour, d''la joie, de la bonne humeur\r\nCe n''est pas votre argent qui f''ra mon bonheur\r\nMoi j''veux crever la main sur le cœur, papalapapapala\r\nAllons ensemble, découvrir ma liberté\r\nOubliez donc tous vos clichés, bienvenue dans ma réalité'),
(33, 'Debout les gars', 'Hugues Aufray', 'Debout les gars, réveillez-vous\r\nIl va falloir en mettre un coup\r\nDebout les gars, réveillez-vous\r\nOn va au bout du monde'),
(34, 'Je l''aime à mourir', 'Francis Cabrel', 'Elle a dû faire toutes les guerres\r\nPour être si forte aujourd''hui\r\nElle a dû faire toutes les guerres\r\nDe la vie, et l''amour aussi'),
(35, 'La jument de Michao', 'Nolwenn Leroy', 'C''est dans dix ans je m''en irai\r\nJ''entends le loup et le renard chanter\r\nJ''entends le loup, le renard et la belette\r\nJ''entends le loup et le renard chanter\r\nC''est dans neuf ans je m''en irai\r\nLa jument de Michao a passé dans le pré\r\nLa jument de Michao et son petit poulain\r\nA passé dans le pré et mangé tout le foin'),
(36, 'Le lion est mort ce soir', 'Pow woW', 'Dans la jungle, terrible jungle\r\nLe lion est mort ce soir\r\nEt les hommes tranquilles s''endorment\r\nLe lion est mort ce soir'),
(37, 'Tob Album', 'Mister V', 'Nique sa mère si j''finis pas dans le top album\r\nY''a que du commercial dans le top album\r\nMa musique est trop bien pour le top album\r\nMais bon c''est relou si j''suis pas top album'),
(38, 'Prendre un enfant', 'Yves Duteil', 'Prendre un enfant par la main \r\nEt lui chanter des refrains \r\nPour qu''il s''endorme à la tombée du jour, \r\nPrendre un enfant par l''amour. '),
(39, 'Siffler sur la colline', 'Joe Dassins', 'Elle m''a dit:\r\nElle m''a dit d''aller siffler là-haut sur la colinne,\r\nDe l''attendre avec un petit bouquet d''églantines.\r\nJ''ai cueuilli des fleurs et j''ai sifflé tant que j''ai pu, j''ai attendu attendu elle n''est jamais venu!\r\nZaî zaî zaî zaî! Zaî zaî zaî zaî! Zaî zaî zaî! Zaî zaî zaî zaî!'),
(40, 'Sur le pont d''Avignon', '?', 'Sur le pont d’Avignon, \r\nL’on y danse, l’on y danse, \r\nSur le pont d’Avignon \r\nL’on y danse tout en rond. \r\nLes belles dames font comme ça \r\nEt puis encore comme ça. \r\nSur le pont d’Avignon '),
(41, 'Marie', 'Johnny Hallyday', 'Oh, Marie, si tu savais\r\nTout le mal que l''on me fait\r\nOh, Marie, si je pouvais\r\nDans tes bras nus me reposer'),
(42, 'Garçon', 'Koxie', 'Tu sais que garçon, si t''enlèves la cédille ça fait garcon et gare aux cons ma fille, gare aux cons. \r\nGare aux cons, gare aux cons qui perdent leur cédille. \r\nGarçon si t''enlèves la cédille ça fait garcon et gare aux cons ma fille, gare aux cons. '),
(43, 'Les démons de minuit', 'Images', 'Ils m''entraînent au bout de la nuit \r\nLes démons de minuit \r\nM''entraînent jusqu''à l''insomnie \r\nLes fantômes de l''ennui '),
(44, 'Ma Philosophie', 'Amel Bent', 'Viser la Lune\r\nÇa me fait pas peur\r\nMême à l''usure\r\nJ''y crois encore et en coeur\r\nDes sacrifices\r\nS''il le faut j''en ferai\r\nJ''en ai déjà fait\r\nMais toujours le poing levé'),
(45, 'Andalouse', 'Kendji Girac', 'Toi toi ma belle Andalouse, aussi belle que jalouse \r\nQuand tu danses le temps s''arrête, je perds le nord, je perds la tête \r\nToi ma belle Espagnole, quand tu bouges tes épaules \r\nJe n''vois plus le monde autour, c''est peut-être ça l''amour.'),
(46, 'Les yeux de la mama', 'Kendji Girac', 'Oh mon Dieu, laissez-les-moi \r\nLes beaux yeux de la Mama \r\nEnlevez-moi même tout le reste \r\nMais pas la douceur de ses gestes \r\nElle m’a porté avant le monde \r\nElle me porte encore chaque seconde \r\nElle m’emportera avec elle \r\nJe lui serai toujours fidèle'),
(47, 'Requiem', 'Alma', 'Embrasse-moi, dis-moi que tu m''aimes \r\nFais-moi sourire au beau milieu d''un requiem \r\nEmbrasse-moi, dis-moi que tu m''aimes \r\nFais-moi danser jusqu''à ce que le temps nous reprenne \r\nCe qu''il a donné \r\nUn an, deux ans, cent ans de bonheur \r\nPuis la vie te cueille comme une fleur \r\nFais-moi marrer j''en ai besoin \r\nEn attendant que sonne l''heure \r\nUn an, deux ans, cent ans à deux \r\nEt puis un jour on est tout seul'),
(48, 'On Ecrit Sur Les Murs', 'Demis Roussos', 'On écrit sur les murs le nom de ceux qu''on aime\r\nDes messages pour les jours à venir\r\nOn écrit sur les murs à l''encre de nos veines\r\nOn dessine tout ce que l''on voudrait dire\r\nOn écrit sur les murs la force de nos rêves\r\nNos espoirs en forme de graffiti\r\nOn écrit sur les murs pour que l''amour se lève\r\nUn beau jour sur le monde endormi'),
(49, 'Bazardée', 'KeBlack', 'A-ah barzardé, ah elle est bazardé\r\nA-ah barzardé, ah elle est bazardé\r\nA-ah bazardé, eh elle est bazardé\r\nA-ah bazardé, eh elle est bazardé'),
(50, 'Kalash', 'Mwaka Moon', 'Un peu d''Amsterdam dans la bouche (yaw yaw yaw yaw yaw)\r\nUne bouffée d''oxygène dans la kush (yaw yaw yaw)\r\nDans le vide je respire à peine, le succès m''a donné des ailes\r\nLa même bitch qui me tournait le dos m''a en photo dans l''appareil\r\nBientôt riche\r\nQuand Mwaka Moon aura fait mouche'),
(51, 'Sapés comme jamais', 'Maître Gims', 'Sapés comme jamais (jamais)\r\nSapés comme jamais (jamais)\r\nSapés comme jamais (jamais)\r\nSapés comme jamais\r\nLoulou'' et ''Boutin (bando)\r\nLoulou'' et ''Boutin (''Boutin na ''Boutin)\r\nCoco na Chanel (Coco)\r\nCoco na Chanel (Coco Chanel)'),
(52, 'Envole-moi', 'Jean-Jacques Goldman', 'Envole-moi\r\nEnvole-moi\r\nEnvole-moi \r\nLoin de cette fatalité qui colle à  ma peau \r\nEnvole-moi\r\nEnvole-moi\r\nRemplis ma tête d''autres horizons, d''autres mots \r\nEnvole-moi '),
(53, 'Générique Pokemon', 'Pokemon', 'Pokémon\r\nAttrapez-les tous \r\nC''est notre histoire \r\nEnsemble pour la victoire \r\nPokémon \r\nRien ne nous arrêtera\r\nNotre amitié triomphera \r\nPokémon attrapez-les tous \r\nMême à notre âge\r\nUn voyage d''apprentissage \r\nÇa demande du courage \r\nPokémon !\r\nAttrapez-les tous \r\nAttrapez-les tous '),
(54, 'Marly-Gomont', 'Kamini', 'J''viens pas d''la cité,\r\nMais le beat est bon,\r\nJ''viens pas d''Panam,\r\nMais d''Marly Gaumont\r\n\r\nY''a pas d''bitume là bas,\r\nC''est qu''des pâtures,\r\nmais c''là n''empêche que j''ai croisé pas mal d''ordures.'),
(55, 'Kyo', 'Dernière danse', 'Je veux juste une dernière danse\r\nAvant l''ombre et l''indifférence\r\nUn vertige puis le silence\r\nJe veux juste une dernière danse'),
(56, 'Dernière Danse', 'Indila', 'Je remue le ciel le jour, la nuit\r\nJe danse avec le vent la pluie\r\nUn peu d''amour un brin de miel\r\nEt je danse, danse, danse, danse, danse, danse, danse\r\nEt dans le bruit, je cours et j''ai peur\r\nEst-ce mon tour?\r\nVient la douleur\r\nDans tout Paris, je m''abandonne\r\nEt je m''envole, vole, vole, vole, vole, vole'),
(57, 'Indila', 'Tourner Dans Le Vide', 'Tourner dans le vide, vide \r\nTourner dans le vide, vide \r\nTourner dans le vide, il me fait tourner \r\nDans le vide, vide, vide \r\nTourner, tourner dans le vide \r\nTourner dans le vide, il me fait tourner'),
(58, 'Elle Me Dit', 'Mika', 'Pourquoi tu gâches ta vie\r\nPourquoi tu gâches ta vie\r\nPourquoi tu gâches ta vie\r\nDanse danse danse, elle me dit\r\nPourquoi tu gâches ta vie\r\nPourquoi tu gâches ta vie\r\nPourquoi tu gâches ta vie\r\nDanse danse danse'),
(59, 'Carmen', 'Stromae', 'Prends garde à toi\r\nSi tu t’aimes\r\nGarde à moi\r\nSi je m’aime\r\nGarde à nous, garde à eux, garde à vous\r\nEt puis chacun pour soi\r\nEt c’est comme ça qu’on s’aime, s’aime, s’aime, s’aime\r\nComme ça, consomme, somme, somme, somme, somme'),
(60, 'Bigflo & Oli', 'Pour un pote', 'J''pourrais sortir le katana, pour un pote\r\nDormir avec des piranhas, pour un pote\r\nOuvrir un bar dans l''Sahara, pour un pote\r\nLui dire ça va si ça va pas, pour un pote\r\nPrendre le premier avion pour Rio, pour un pote\r\nLui garder un rein dans le frigo, pour un pote\r\nJ''pourrais faire l''tour de la Terre, mentir à sa mère\r\nJ''pourrais, j''pourrais, j''pourrais, click click brah'),
(61, 'OrelSan', 'La pluie', 'Toujours autant d''pluie chez moi \r\nToujours autant d''pluie chez moi \r\nMais il fait quand même beau, il fait beau \r\nIl fait beau, il fait beau \r\nChez moi, il fait beau, il fait beau \r\nIl fait beau, il fait beau \r\nChez moi, il fait beau'),
(62, 'A Tout Le Monde', 'Megadeth', 'A tous le monde\r\nA tous les amis\r\nJe vous aime\r\nJe dois partir');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
