-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 08, 2024 at 08:33 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `streaming`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `movieName` varchar(255) NOT NULL,
  `movieLink` varchar(255) NOT NULL,
  `movieDescription` text,
  `movieImg` varchar(255) DEFAULT NULL,
  `movieStream` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movieName`, `movieLink`, `movieDescription`, `movieImg`, `movieStream`) VALUES
(1, 'Maman, j’ai encore raté l’avion ! (1992) HD', 'https://movbor.com//fu14m9/b/movbor/109438315', 'Après Paris, c\'est à Miami que la tribu McCallister décide de passer les fêtes de Noël. À l\'aube du jour J, toute la famille est sur le pied de guerre et file a l\'aéroport en prenant bien garde de ne pas oublier Kevin. Mais celui-ci s\'éclipse pour acheter des piles pour son walkman, il ne retrouve plus les siens et s\'embarque par mégarde pour New York...', 'https://www.themoviedb.org/t/p/original/kiTBNrNSLXcAtwIfNnHwi9XZNzZ.jpg', 'https://tomacloud.com/iframe/S8YDaEdVBG'),
(2, 'Maman, j\'ai raté l\'avion ! (1990) HD', 'https://movbor.com//fu14m9/b/movbor/109430930', 'La famille McCallister a décidé de passer les fêtes de Noël à Paris. Seulement Kate et Peter McCallister s\'aperçoivent dans l\'avion qu\'il leur manque le plus jeune de leurs enfants, Kevin, âgé de 9 ans. D\'abord désespéré, Kevin reprend vite les choses en main et s\'organise pour vivre le mieux possible. Quand deux cambrioleurs choisissent sa maison pour commettre leurs méfaits.', 'https://www.themoviedb.org/t/p/original/aP9UrDpKS5i5PCiYKDgJvkRz7ne.jpg', 'https://tomacloud.com/iframe/vRkW2wg5Ji'),
(3, 'Love Actually (2003) HD', 'https://movbor.com//fu14m9/b/movbor/109423545', 'L\'amour est partout, imprévisible, inexplicable, insurmontable. Il frappe quand il veut et souvent, ça fait pas mal de dégâts... Pour le nouveau Premier Ministre britannique, il va prendre la jolie forme d\'une jeune collaboratrice. Pour l\'écrivain au coeur brisé parti se réfugier dans le sud de la France, il surgira d\'un lac. Il s\'éloigne de cette femme qui, installée dans une vie de couple ronronnante, suspecte soudain son mari de songer à une autre. Il se cache derrière les faux-semblants de ce meilleur ami qui aurait bien voulu être autre chose que le témoin du mariage de celle qu\'il aime. Pour ce veuf et son beau-fils, pour cette jeune femme qui adore son collègue, l\'amour est l\'enjeu, le but, mais également la source d\'innombrables complications. À l\'approche de Noël, à Londres, ces vies et ces amours vont se croiser, se frôler et se confronter.', 'https://www.themoviedb.org/t/p/original/rJAML5icaPEkj8CU4wLHjpL4RWd.jpg', 'https://tomacloud.com/iframe/LsaNoOnE0r'),
(4, 'Saltburn (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109401390', 'Oliver Quick étudiant à l\'université d\'Oxford, se retrouve entraîné dans l\'univers du charmant et aristocratique Felix Catton, qui l\'invite à Saltburn, le vaste domaine de sa famille excentrique, pour un été qui restera gravé dans les mémoires.', 'https://www.themoviedb.org/t/p/original/zGTfMwG112BC66mpaveVxoWPOaB.jpg', 'https://tomacloud.com/iframe/EmZhjnrlIy'),
(5, 'Mune, le gardien de la lune (2015) HD', 'https://movbor.com//fu14m9/b/movbor/109416160', 'Dans un monde Fabuleux, Mune, petit faune facétieux, est désigné bien malgré lui gardien de la lune : celui qui apporte la nuit et veille sur le monde des rêves. Mais il enchaîne les catastrophes et donne l’opportunité au gardien des ténèbres de voler le soleil. Avec l’aide de Sohone, le fier gardien du soleil et la fragile Cire, Mune part alors dans une quête extraordinaire qui fera de lui un gardien de légende !', 'https://www.themoviedb.org/t/p/original/lRJvgJRe0ZoYiayejeFxVSmm5D7.jpg', 'https://tomacloud.com/iframe/M6tthASOaN'),
(6, 'Rebel Moon Partie 1 : Enfant de feu (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109408775', 'Menacé par les forces impitoyables du Monde-Mère, un paisible village d\'une lune lointaine place tous ses espoirs de survie entre les mains d\'une mystérieuse étrangère.', 'https://www.themoviedb.org/t/p/original/rkv0HAzhHeZbc70JW224rUy1cMk.jpg', 'https://tomacloud.com/iframe/LpgHtgbLsN'),
(7, 'Maestro (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109379235', 'Cette histoire d\'amour et de courage retrace la relation longue et complexe entre la légende de la musique Leonard Bernstein et Felicia Montealegre Cohn Bernstein.', 'https://www.themoviedb.org/t/p/original/kxj7rMco6RNYsVcNwuGAIlfWu64.jpg', 'https://tomacloud.com/iframe/Z9oDXFxk8E'),
(8, 'The Belgian Wave (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109386620', 'Au début des années 90, le journaliste Marc Varenberg et son caméraman disparaissent dans des circonstances mystérieuses alors qu’ils enquêtent sur la Vague Belge (une série d\'observations d\'Ovni survenus entre 1989 et 1991). Près de 30 ans plus tard, deux webreporters rouvrent l’enquête pour découvrir ce qui s’est réellement passé.', 'https://www.themoviedb.org/t/p/original/4A9lFLIQ6vy0NLrYGsp0jVtVGu7.jpg', 'https://tomacloud.com/iframe/oVaMkQGeBT'),
(9, 'Redouane Bougheraba - On M\'appelle Marseille (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109394005', 'Redouane Bougheraba, le roi de l\'impro, se raconte et dresse un portrait réaliste de sa vie, avec des thèmes universels et d\'actualité comme le mariage, ses voyages, les relations humaines...', 'https://www.themoviedb.org/t/p/original/vUiLO6IWVVB9mwlbmCUIieNMtRY.jpg', 'https://tomacloud.com/iframe/GE2tBHvLHN'),
(10, 'Thanksgiving : La semaine de l\'horreur (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109371850', 'Un an après qu’un Black Friday a viré au chaos, un mystérieux tueur s’inspire de la fête traditionnelle de Thanksgiving et terrorise la ville de Plymouth (Massachussetts), berceau de la célèbre fête. Alors que les habitants sont éliminés les uns après les autres, ces meurtres qui semblaient aléatoires, révèlent un plan plus vaste et sinistre. Les habitants découvriront-ils le tueur et survivront-ils à la fête… ou deviendront-ils les invités de son dîner de Thanksgiving complètement tordu ?', 'https://www.themoviedb.org/t/p/original/40xZvFgDZqdWkKKyUW6zj4pFqd4.jpg', 'https://tomacloud.com/iframe/v9lm11p9RH'),
(11, 'Hunger Games : La ballade du serpent et de l\'oiseau chanteur (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109364465', 'Préquelle de Hunger Games se déroulant 64 ans plus tôt, dans les années qui ont suivi la période des \"Jours sombres\", la première rébellion ratée à Panem… De nombreuses années avant de devenir Président de Panem, le jeune Coriolanus Snow est choisi comme mentor du district 12 lors des nouveaux Hunger Games.', 'https://www.themoviedb.org/t/p/original/A1FnJai5qjvtwYA8GiWYrqFA8Xo.jpg', 'https://tomacloud.com/iframe/mTsb4tiqD8'),
(12, 'Hunger Games - La Révolte, 2ème partie (2015) HD', 'https://movbor.com//fu14m9/b/movbor/102237940', 'Alors que Panem est ravagé par une guerre désormais totale, Katniss et le Président Snow vont s’affronter pour la dernière fois. Katniss et ses plus proches amis – Gale, Finnick, et Peeta – sont envoyés en mission pour le District 13 : ils vont risquer leur vie pour tenter d’assassiner le Président Snow, qui s’est juré de détruire Katniss. Les pièges mortels, les ennemis et les choix déchirants qui attendent Katniss seront des épreuves bien pires que tout ce qu’elle a déjà pu affronter dans l’arène…', 'https://www.themoviedb.org/t/p/original/ojFCU0K7Err8n87VOONrnrCcQxj.jpg', 'https://tomacloud.com/iframe/aGo5uTRjrV'),
(13, 'Hunger Games - La Révolte, 1ère partie (2014) HD', 'https://movbor.com//fu14m9/b/movbor/102230555', 'Katniss Everdeen s’est réfugiée dans le District 13 après avoir détruit à jamais l’arène et les Jeux. Sous le commandement de la Présidente Coin, chef du district, et suivant les conseils de ses amis en qui elle a toute confiance, Katniss déploie ses ailes pour devenir le symbole de la rébellion. Elle va se battre pour sauver Peeta et libérer le pays tout entier, à qui son courage a redonné espoir.', 'https://www.themoviedb.org/t/p/original/4LzjVMUit99buiiuhqW4pe0OhmA.jpg', 'https://tomacloud.com/iframe/c9TLGvbwyw'),
(14, 'Hunger Games : L\'Embrasement (2013) HD', 'https://movbor.com//fu14m9/b/movbor/102223170', 'Après les premiers Hunger Games, Katniss est devenue le symbole de la rébellion. Le peuple de Panem est impatient de la retrouver pour la grande Tournée de la victoire. Mais Katniss va devoir prouver au Capitole et au Président Snow que ses sentiments envers Peeta étaient sincères afin de sauver ceux qu’elle aime…', 'https://www.themoviedb.org/t/p/original/oOHRjh3RsUAKQocOVjhaid3CLm.jpg', 'https://tomacloud.com/iframe/VkQUL84IXL'),
(15, 'Hunger Games (2012) HD', 'https://movbor.com//fu14m9/b/movbor/102215785', 'Dans un proche futur, les États‐Unis sont devenus un gouvernement fédéral dystopique dans lequel chacun des 12 districts doit envoyer un garçon et une fille combattre lors d’un événement annuel télévisé, « Les Hunger Games ». La seule issue à ces jeux pour les « Tributs » est de tuer ou d’être tué. Lorsque la petite sœur de Katniss est tirée au sort pour y participer, celle‐ci décide de prendre sa place.', 'https://www.themoviedb.org/t/p/original/2eQPl7d12djrnMZsBJIqeUmDgkz.jpg', 'https://tomacloud.com/iframe/FJixEzkUH1'),
(16, 'Les Trolls 3 (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109357080', 'Après deux films à se tourner autour pour finalement tomber dans les bras l’un de l’autre, Poppy et Branch sont officiellement en couple (#broppy)! Alors qu’ils n’ont plus de secrets l’un pour l’autre, Poppy fait une découverte incroyable relative au passé de Branch. À l’époque, avec ses quatre frères, Floyd, John Dory, Spruce et Clay, ils formaient le Boys Band le plus en vogue du moment, les BroZone. Alors qu’il n’était qu’un enfant, le groupe s’est séparé, tout comme la famille et depuis Branch n’a jamais revu ses frères.', 'https://www.themoviedb.org/t/p/original/xC6Zc2jpa3dD8IzgXQSzC3rDbc3.jpg', 'https://tomacloud.com/iframe/5h9HcUttRw'),
(17, 'Les Trolls 2 : Tournée mondiale (2020) HD', 'https://movbor.com//fu14m9/b/movbor/109349695', 'Dans une aventure qui les mènera bien au-delà de ce qu’ils ont connu auparavant, Poppy et Branch découvrent qu’il existe en fait six différentes tribus de Troll réparties sur plus de six territoires différents et dévouées à six différents genres de musique : Funk, Country, Techno, Classique, Pop et Rock. Leur but est de s’agrandir et de se faire entendre.', 'https://www.themoviedb.org/t/p/original/cLR8JLldDoOcK8tarUYsHmdEOP0.jpg', 'https://tomacloud.com/iframe/LjSsDtpcDE'),
(18, 'Les Trolls (2016) HD', 'https://movbor.com//fu14m9/b/movbor/109342310', 'Connus pour leurs cheveux fluos et magiques, les Trolls sont des créatures délirantes et joyeuses et surtout les rois de la pop. Mais leur monde d’arcs‐en‐ciel et de cupcakes est changé à jamais lorsque leur leader Poppy doit se lancer dans une mission de sauvetage qui l’entraînera loin de ce paradis.', 'https://www.themoviedb.org/t/p/original/ddKk98obuNGy9CQbQ9LXv0llEZ3.jpg', 'https://tomacloud.com/iframe/VRoCVnEWWW'),
(19, 'La Légende de Kunlun (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109298000', 'Quand le chef de la secte Kunlun meurt subitement, son fils Jiang destiné à lui succéder est victime d’un complot et accusé de son meurtre. Lors de sa fuite, il rencontre Luo Xi, dont le clan est prisonnier d\'une secte depuis la sanglante bataille de la Source Noire. Hier encore ennemis mais déterminés à se venger, ils vont unir leurs forces et leurs pouvoirs, alliant magie et art de la guerre.', 'https://www.themoviedb.org/t/p/original/crCZ72KwDcQKkJNKmAAEco1YNqC.jpg', 'https://tomacloud.com/iframe/gN3PKuvPDb'),
(20, 'I’m Your Man (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109305385', 'Alma, brillante scientifique, se révèle être une parfaite candidate pour se prêter à une expérience : pendant trois semaines, elle doit vivre avec Tom, un robot à l’apparence humaine parfaite, spécialement programmé pour correspondre à sa définition de l’homme idéal. Son existence ne doit servir qu’un seul but : rendre Alma heureuse.', 'https://www.themoviedb.org/t/p/original/7nG3CobUv85RCffJwHS79ewj5Ha.jpg', 'https://tomacloud.com/iframe/dRyBPxu0VG'),
(21, 'Mustapha El Atrassi : Que Du Sale (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109327540', 'Scènes coupées de Communautaire et Game Over.', 'https://www.themoviedb.org/t/p/original/zCLmkEy1TPtlxrdNtd3OBPmi4ob.jpg', 'https://tomacloud.com/iframe/If5gMoN8Mv'),
(22, 'Mustapha El Atrassi : Game Over (2022) HD', 'https://movbor.com//fu14m9/b/movbor/109320155', 'Mustapha El Atrassi arrête le stand-up ! Mais avant cela, il présente son tout dernier spectacle “Game Over\".', 'https://www.themoviedb.org/t/p/original/yPxUlP8bHBDHw8EzIIpep1eUe9.jpg', 'https://tomacloud.com/iframe/6XpblhRzMZ'),
(23, 'Mustapha El Atrassi : Communautaire (2019) HD', 'https://movbor.com//fu14m9/b/movbor/109312770', 'Après 12 Zeniths et 4 Olympia, Mustapha El Atrassi revient avec son nouveau spectacle : \"Communautaire\".', 'https://www.themoviedb.org/t/p/original/rK4PWz2RXbSRweuhPuWH9EUdoLc.jpg', 'https://tomacloud.com/iframe/Jx0dmzbe5H'),
(24, 'Millénium : Ce qui ne me tue pas (2018) HD', 'https://movbor.com//fu14m9/b/movbor/109290615', 'Frans Balder, éminent chercheur suédois en intelligence artificielle fait appel à Lisbeth Salander afin de récupérer un logiciel qu\'il a créé et permettant de prendre le contrôle d\'armes nucléaires. Mais la NSA ainsi qu\'un groupe de terroristes mené par Jan Holster sont également sur la piste du logiciel. Traquée, Lisbeth va faire appel à son ami le journaliste Mikael Blomkvist qu\'elle n\'a pas vu depuis 3 ans.', 'https://www.themoviedb.org/t/p/original/356Pu35i6SGSzgXDXgBLoDcPn7l.jpg', 'https://tomacloud.com/iframe/NnJeWHEMZg'),
(25, 'Millénium : les hommes qui n\'aimaient pas les femmes (2011) HD', 'https://movbor.com//fu14m9/b/movbor/109283230', 'Mikael Blomkvist, brillant journaliste d’investigation, est engagé par un des plus puissants industriels de Suède, Henrik Vanger, pour enquêter sur la disparition de sa nièce, Harriet, survenue des années auparavant. Vanger est convaincu qu’elle a été assassinée par un membre de sa propre famille. Lisbeth Salander, jeune femme rebelle mais enquêtrice exceptionnelle, est chargée de se renseigner sur Blomkvist, ce qui va finalement la conduire à travailler avec lui. Entre la jeune femme perturbée qui se méfie de tout le monde et le journaliste tenace, un lien de confiance fragile va se nouer tandis qu’ils suivent la piste de plusieurs meurtres. Ils se retrouvent bientôt plongés au cœur des secrets et des haines familiales, des scandales financiers et des crimes les plus barbares…', 'https://www.themoviedb.org/t/p/original/wnfC3z6SzlRjQtmXqTsWadM8G4C.jpg', 'https://tomacloud.com/iframe/XoJo5u9rsA'),
(26, 'Millénium 3 : La Reine dans le palais des courants d\'air (2009) HD', 'https://movbor.com//fu14m9/b/movbor/109275845', 'Après avoir échappé de peu à la mort, Lisbeth Salander se retrouve immobilisée à l\'hôpital, dans l\'incapacité d\'agir… De nombreux chefs d\'accusation pèsent toujours sur elle et la font placer en isolement par la police, dans une chambre jouxtant celle de son père, qui la hait et qui n\'est guère en meilleur état qu\'elle… À l\'extérieur, Mikael Blomkvist continue de mener l\'enquête sans pouvoir avoir le moindre contact avec Lisbeth. Il ne tarde pas à mettre à jour certaines activités souterraines menées par les services secrets. Ce qui pourrait déstabiliser les hautes sphères de l\'État mais surtout blanchir Lisbeth une bonne fois pour toutes.', 'https://www.themoviedb.org/t/p/original/6h1UELUpz5vF5uFv77glJdFtc5E.jpg', 'https://tomacloud.com/iframe/vDDpDbyErn'),
(27, 'Millénium 2 : La Fille qui rêvait d\'un bidon d\'essence et d\'une allumette (2009) HD', 'https://movbor.com//fu14m9/b/movbor/109268460', 'Traquée, prise au piège d\'une manipulation manifestement très planifiée… Lisbeth va devoir affronter son passé. Elle pourra compter sur l\'amitié infaillible de Mikael Blomkvist, qui fera tout pour prouver qu\'elle n\'est pas la tueuse en série que les médias et la police dépeignent', 'https://www.themoviedb.org/t/p/original/zFRu3rz6DsMweEY95mfA1yuMh0P.jpg', 'https://tomacloud.com/iframe/aHhBkzZXPJ'),
(28, 'Millénium (2009) HD', 'https://movbor.com//fu14m9/b/movbor/109261075', 'Mikael Blomkvist est journaliste économique dans le magazine Millenium. Condamné pour diffamation, il décide de prendre de la distance avec sa vie et son métier. Mais Henrik Vanger, grande figure de l\'industrie suédoise, fait appel à lui afin d\'enquêter sur une disparition non élucidée, celui d\'Harriet Vanger, nièce du grand homme et disparue à l\'âge de 16 ans. Au cours de ses recherches, Blomkvist se rend compte que la famille Vanger semble cacher bien des haines et des secrets. Dans le cadre de son enquête, le journaliste est amené à rencontrer Lisbeth Salander. La jeune femme de 24 ans possède un don exceptionnel, celui de découvrir des informations introuvables. Tous deux vont être amenés à se croiser dans une enquête qui va révéler beaucoup plus que ce que chacun aurait pu imaginer…', 'https://www.themoviedb.org/t/p/original/vwF4yLGqtZXwd4Zd2MalxPFsT22.jpg', 'https://tomacloud.com/iframe/XV06Tkx3Zm'),
(29, 'Butcher\'s Crossing (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109246305', 'Un chasseur de bison à l\'époque du Far West. Will Andrews a quitté Harvard pour partir à l\'aventure. Il se joint à Miller un mystérieux colon offrant une impressionnante quantité de peaux de bisons dans une vallée isolée. Leur bande devra survivre à un périple dangereux au cours duquel les durs éléments vont mettre leur détermination et leur raison à rudes épreuves.', 'https://www.themoviedb.org/t/p/original/2KdkRsYuzYPlJMLrV39gdjY3WkS.jpg', 'https://tomacloud.com/iframe/ogSKlnk4Ay'),
(30, 'Mission : cadeaux (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109253690', 'Andy, un jeune collégien, découvre le matin de Noël que le Père Noël n’a déposé aucun cadeau chez lui. Comprenant qu’il a dû être inscrit sur la liste des « enfants pas sages », ce qu’il conteste, Andy fait appel à huit autres garnements pour braquer le village du Père Noël, au pôle Nord, afin d’y prendre les cadeaux qu’on leur refuse. En chemin, le groupe se rendra compte que le meilleur moyen de ne plus figurer sur la liste redoutée est de se servir de leurs dons naturels pour faire le bien… plutôt que des bêtises !', 'https://www.themoviedb.org/t/p/original/zh2tkHU7imRBCXmBNl4rkMVwKzm.jpg', 'https://tomacloud.com/iframe/rJQWsG0fxs'),
(31, 'Finestkind (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109224150', 'Finestkind raconte l\'histoire de deux frères élevés dans des mondes différents, qui se retrouvent à l\'âge adulte au cours d\'un été fatidique dans le monde de la pêche commerciale à New Bedford.', 'https://i.imgur.com/0DgLAUU.jpg', 'https://tomacloud.com/iframe/q3EaP44Gtc'),
(32, 'Family Camp (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109231535', 'Lorsque la femme du bourreau de travail Tommy insiste pour qu\'il passe plus de temps avec sa famille, il accepte de s\'inscrire au Family Camp. Ce sur quoi Tommy ne comptait pas, c\'était d\'être obligé de partager une yourte au camp avec la famille Sanders plus grande que nature.', 'https://www.themoviedb.org/t/p/original/uxMX4UqHKliesVpehRu7wDt6Oyk.jpg', 'https://tomacloud.com/iframe/rQaFjM0gEC'),
(33, 'Priscilla (2024) HD', 'https://movbor.com//fu14m9/b/movbor/109216765', 'Lorsque l\'adolescente Priscilla Beaulieu rencontre Elvis Presley, superstar fulgurante du rock and roll, celle-ci découvre lors de moments d’intimité un homme totalement inattendu: un amoureux passionné, un allié dans la solitude, un meilleur ami vulnérable.', 'https://www.themoviedb.org/t/p/original/r2AwxjMHmPiiMO7Kh7GxcJzhrYY.jpg', 'https://tomacloud.com/iframe/GXA2mMjWgy'),
(34, 'Chicken Run : La menace nuggets (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109172455', 'Face aux manigances suspectes de la ferme voisine, une bande de poulets intrépides se fédère pour se protéger d\'une nouvelle et inquiétante menace.', 'https://www.themoviedb.org/t/p/original/ruzbg5sct32VVAtpyUzK4nTiLVb.jpg', 'https://tomacloud.com/iframe/sJmiBTpiF7'),
(35, 'The Family Plan (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109187225', 'Dan Morgan est un homme aux multiples talents : un époux dévoué, un vendeur de voitures célèbre, mais aussi un ancien tueur à gages. Et lorsque son passé le rattrape, il est contraint d\'emmener sa famille, qui ne se doute de rien, dans un voyage hors du commun.', 'https://www.themoviedb.org/t/p/original/jLLtx3nTRSLGPAKl4RoIv1FbEBr.jpg', 'https://tomacloud.com/iframe/pSVFzP5VGg'),
(36, 'Course contre la mort (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109179840', 'Soo-hyeok a purgé une peine de 10 ans de prison ferme et souhaite vivre une vie normale en rompant avec ses anciennes relations mais le destin le rattrape. Son ancien boss engage un tueur et kidnappe la fille de Soo-hyeok. Une poursuite infernale commence alors.', 'https://www.themoviedb.org/t/p/original/8B3KbrUoKJ8dioUFbcZr0DV5RKo.jpg', 'https://tomacloud.com/iframe/Duk2u5kEIl'),
(37, 'The Persian Version (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109209380', 'Leila, une jeune femme de Brooklyn qui peine à trouver ses repères et à épouser les autres cultures, tout en repoussant les étiquettes que la société lui accole. Lorsque sa famille tumultueuse se réunit à New York pour la transplantation cardiaque de son père, Leila dissocie sa vraie vie de sa vie familiale. Mais la révélation de son secret met en lumière les différents parcours d\'elle et de sa mère Shireen. Ponctué d\'un spectre de couleurs vives, de pointes d\'humour bien envoyées et d\'électrisants numéros de danse, « The Persian Version » brosse un portrait fidèle d\'une femme qui défend ses valeurs, au cours d\'une émouvante histoire sur la famille, les racines et l\'indéniable influence de la musique pop.', 'https://www.themoviedb.org/t/p/original/tpcUj1h7lB03Bj5UCHeTEY3XH7S.jpg', 'https://tomacloud.com/iframe/ifp0Wss4yU'),
(38, 'What You Can See From Here (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109201995', 'Dans la région du Westerwald en Allemagne, la jeune Luise et son ami Martin adorent quand la grand-mère de Luise leur raconte des anecdotes sur sa vie lorsqu\'elle était plus jeune. Leur histoire préférée reste incontestablement celle de ses drôles de rêves d\'okapi qui coïncidaient toujours avec la mort soudaine de quelqu\'un du village. Un jour, Selma fait à nouveau l\'un de ses rêves funestes.', 'https://www.themoviedb.org/t/p/original/6HCNw5t9oQSqBxTTw5mKLxn2563.jpg', 'https://tomacloud.com/iframe/kpA1nrSS57'),
(39, 'Double Life (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109194610', 'Une veuve endeuillée apprend par la maîtresse de feu son mari que sa mort n\'était pas un accident. Les deux femmes s\'allient pour découvrir la vérité concernant ce meurtre et l\'homme qu\'elles aimaient.', 'https://www.themoviedb.org/t/p/original/fn0EHiPtbVJ0aH74rRVnWfq6p6h.jpg', 'https://tomacloud.com/iframe/luI4zHcd9H'),
(40, 'Les As de la jungle 2 : Opération tour du monde (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109150300', 'Qui appelle-t-on à la rescousse quand un mystérieux super-vilain recouvre la jungle d’une mousse rose qui explose au contact de l’eau ? Les As de la Jungle ! Moins d’un mois avant la saison des pluies, la course contre la montre est lancée. Du Pôle Nord à l’Extrême-Orient, traversant des montagnes, des déserts et des océans, nos héros vont devoir parcourir le monde à la recherche d’un antidote, loin de leur jungle favorite !', 'https://www.themoviedb.org/t/p/original/ng9e8ncoOmcUmfhxl2MYKUkyYN2.jpg', 'https://tomacloud.com/iframe/AgmUymkYgO'),
(41, 'Les As de la Jungle (2017) HD', 'https://movbor.com//fu14m9/b/movbor/109142915', 'Maurice a tout d’un pingouin… mais le tigre est en lui ! Élevé par une tigresse, ce pingouin loin d’être manchot est devenu un pro du kung‐fu. Avec ses amis, les As de la jungle, Maurice entend dorénavant faire régner l’ordre et la justice dans la jungle, comme sa mère avant lui. Mais Igor, un koala diabolique, entouré de ses babouins mercenaires pas très futés, a pour projet de détruire la jungle… Les As de la jungle, à la rescousse !', 'https://www.themoviedb.org/t/p/original/gU2SBvpsxYGgKTEu2bW6UgSpykb.jpg', 'https://tomacloud.com/iframe/BmwWZDGxQn'),
(42, 'Infiltrator (2016) HD', 'https://movbor.com//fu14m9/b/movbor/109165070', 'L’agent fédéral Bob Mazur a pour mission d’infiltrer le cartel de drogue de Pablo Escobar. Son but : faire tomber 85 barons et une banque internationale. Son plan : s’inventer un passé, une identité, une fiancée. Son risque : le moindre faux pas lui serait fatal.', 'https://www.themoviedb.org/t/p/original/9pcGWoHOOScUUnVeKzTw7Rnljda.jpg', 'https://tomacloud.com/iframe/pKTwA1l2r5'),
(43, 'Intouchables (2011) HD', 'https://movbor.com//fu14m9/b/movbor/109157685', 'À la suite d’un accident de parapente, Philippe, riche aristocrate, engage comme aide à domicile Driss, un jeune de banlieue tout juste sorti de prison. Bref la personne la moins adaptée pour le job. Ensemble ils vont faire cohabiter Vivaldi et Earth Wind and Fire, le verbe et la vanne, les costumes et les bas de survêtement… Deux univers vont se télescoper, s’apprivoiser, pour donner naissance à une amitié aussi dingue, drôle et forte qu’inattendue, une relation unique qui fera des étincelles et qui les rendra… Intouchables.', 'https://www.themoviedb.org/t/p/original/8hZnsW4wGz3zuuwu9eniaoKIJnP.jpg', 'https://tomacloud.com/iframe/JFJj00hF0o'),
(44, 'Détective Conan: le sous-marin noir (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109135530', 'Sur l\'île de Hachijojima, Tokyo, une équipe internationale d’ingénieurs est réunie pour une opération à grande échelle au sein de \"La bouée du Pacifique\", une installation en mer permettant de relier entre elles les caméras de sécurité des polices du monde entier. Pendant ce temps, Conan qui visite l’île avec les Détectives Juniors apprend qu’une employée d’Europol a été assassinée en Allemagne l’Organisation des Hommes en Noir. Inquiet, Conan se faufile dans la bouée du Pacifique et découvre qu\'une femme ingénieur a été kidnappée par l\'Organisation. Un grincement lugubre résonne à travers les fonds marins tandis qu’une ombre noire plane sur Ai Haibara…', 'https://www.themoviedb.org/t/p/original/oJGs8ktl8WiwdjULLGozTN4Um1s.jpg', 'https://tomacloud.com/iframe/GMzX7AN5bE'),
(45, 'Dora et la cité perdue (2019) HD', 'https://movbor.com//fu14m9/b/movbor/109128145', 'Après des années à explorer la jungle avec ses parents, Dora se prépare à vivre l’épreuve la plus difficile de sa vie : l’entrée au lycée ! Son âme d’exploratrice ressurgit quand elle doit voler à la rescousse de ses parents en danger. Accompagnée de son fidèle singe Babouche, de son cousin Diego et de nouveaux amis hauts en couleur, Dora embarque dans une folle aventure qui l’amènera à percer le mystère de la Cité d’or perdue.', 'https://www.themoviedb.org/t/p/original/ycZjydbSh0U737JELs7Xk2tuCq3.jpg', 'https://tomacloud.com/iframe/pbtKAemJYa'),
(46, 'Anatomie d’une chute (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109120760', 'Au cours de la dernière année, Sandra, son mari Samuel et leur fils de 11 ans, Daniel, ont vécu dans une ville isolée des Alpes françaises. Lorsque Samuel est retrouvé mort dans la neige au pied de leur chalet, la police se demande s’il a été assassiné ou s’il s’est suicidé. La mort suspecte de Samuel est alors reconnue comme un meurtre présumé, et Sandra devient le principal suspect. Peu à peu, le procès ne devient pas seulement une enquête sur les circonstances de la mort de Samuel, mais un voyage psychologique troublant dans les profondeurs de la relation conflictuelle entre Sandra et Samuel.', 'https://www.themoviedb.org/t/p/original/zeQN92DDDGRhRvA8PSMR1nY3FrI.jpg', 'https://tomacloud.com/iframe/QWyNoWOoWk'),
(47, 'Visions (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109105990', 'Pilote de ligne confirmée, Estelle mène, entre deux vols long-courriers, une vie parfaite avec Guillaume, son mari aimant et protecteur. Un jour, par hasard, dans un couloir d’aéroport, elle recroise la route d’Ana, photographe avec qui elle a eu une aventure passionnée vingt ans plus tôt. Estelle est alors loin d’imaginer que ces retrouvailles vont l’entraîner dans une spirale cauchemardesque et faire basculer sa vie dans l’irrationnel…', 'https://www.themoviedb.org/t/p/original/9eE05EIusx5OdRvLA76lrAiRXL6.jpg', 'https://tomacloud.com/iframe/Tq0q2Qzjc9'),
(48, 'Alita : Battle Angel (2019) HD', 'https://movbor.com//fu14m9/b/movbor/109098605', 'Au XXVIème siècle, un scientifique sauve Alita, une jeune cyborg inerte abandonnée dans une décharge. Ramenée à la vie, elle doit découvrir le mystère de ses origines et le monde complexe dans lequel elle se trouve, afin de protéger ses nouveaux amis contre les forces sombres lancées à sa poursuite.', 'https://www.themoviedb.org/t/p/original/rV3itKLEALozktTGOCd1EE9vjG6.jpg', 'https://tomacloud.com/iframe/GXv160yrc2'),
(49, 'Les Faussaires de Manhattan (2018) HD', 'https://movbor.com//fu14m9/b/movbor/109113375', 'Ancienne auteure à succès aujourd’hui sans le sou, Lee Israel se découvre par hasard un don exceptionnel : celui d’imiter à la perfection le style de grands romanciers. Avec l’aide de son ami Jack, elle monte une arnaque imparable: rédiger de fausses correspondances entre auteurs célèbres, que Jack revend à prix d’or aux collectionneurs new-yorkais. Grisés par le succès, les deux faussaires ne voient pas que le FBI commence à s’intéresser à eux…', 'https://www.themoviedb.org/t/p/original/90tjdjeNJFRxeLTq10W7tJmE2Aq.jpg', 'https://tomacloud.com/iframe/WWjrPwGUrd'),
(50, 'Le Monde après nous (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109091220', 'Amanda et son mari Clay louent une luxueuse villa pour y passer le week-end avec leurs enfants Archie et Rose. Leurs vacances sont bientôt interrompues lorsque deux inconnus G.H. et sa fille Ruth débarquent chez eux la nuit, annonçant une mystérieuse cyberattaque et cherchant à se réfugier dans cette maison qu\'ils prétendent leur appartenir. Les deux familles affrontent alors une menace qui se rapproche inexorablement, obligeant chacun à reconsidérer sa place dans un monde qui s\'écroule.', 'https://www.themoviedb.org/t/p/original/m8L9D17fnfBIxtL8IPZuX6gzJTu.jpg', 'https://tomacloud.com/iframe/jKgtUEef33'),
(51, 'Cat Person (2023) HD', 'https://movbor.com//fu14m9/b/movbor/109046910', 'Margot, une étudiante universitaire, vit une première rencontre plutôt malaisante avec Robert, un beau gars plus âgé qui aime les chats. Alors que la relation se dégrade et que les signaux d\'alarme s\'accumulent, Margot en vient à croire que Robert est un meurtrier fou qui a l\'intention de la tuer.', 'https://www.themoviedb.org/t/p/original/afzr0QzR3gBGLDRrUyhR5BslATi.jpg', 'https://tomacloud.com/iframe/SMzo5qKgzn');

-- --------------------------------------------------------

--
-- Table structure for table `userCredentials`
--

CREATE TABLE `userCredentials` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `credential` float NOT NULL,
  `response` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userCredentials`
--

INSERT INTO `userCredentials` (`id`, `userId`, `credential`, `response`, `created`) VALUES
(75, 1, 38987, 0, '2023-12-26 01:13:22'),
(76, 2, 96493, 0, '2023-12-26 04:11:45'),
(77, 3, 22289, 0, '2023-12-26 04:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `surname` varchar(25) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `password` longtext,
  `role` int(11) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `description` text,
  `work` varchar(255) DEFAULT NULL,
  `height` bigint(20) DEFAULT NULL,
  `credential` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `email`, `surname`, `name`, `gender`, `birthday`, `password`, `role`, `picture`, `description`, `work`, `height`, `credential`) VALUES
(2, 'matisbevilacquapro@gmail.com', 'Test', 'Test', 'men', '2023-12-01', 'az', 0, 'Test', 'Test', 'Test', 120, 1),
(3, 'matisbevilacqua@gmail.com', 'Test', 'Test', 'men', '0001-02-20', 'az', 0, 'Test', 'Test', 'Test', 120, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userCredentials`
--
ALTER TABLE `userCredentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `userCredentials`
--
ALTER TABLE `userCredentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
