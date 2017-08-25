-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 25, 2017 at 12:31 AM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ma3_spekken`
--

-- --------------------------------------------------------

--
-- Table structure for table `ma3_spekken_blogs`
--

CREATE TABLE `ma3_spekken_blogs` (
  `id` int(11) NOT NULL,
  `blog_date` date NOT NULL,
  `blog_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `blog_text` text COLLATE utf8_unicode_ci NOT NULL,
  `blog_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ma3_spekken_blogs`
--

INSERT INTO `ma3_spekken_blogs` (`id`, `blog_date`, `blog_title`, `blog_text`, `blog_image`) VALUES
(1, '2016-12-30', 'Voorstelling toverdrank', 'Vandaag onze laatste spekkenvoorstelling van dit jaar: Joris en de geheimzinnige toverdrank van Theater De Kreet. Een bewerking naar het gelijknamige boek van Roald Dahl die dit jaar honderd zou zijn geworden en duidelijk nog niets van zijn aantrekkingskracht is verloren want de voorstelling was vooraf al uitverkocht.\r\nDe setting is uitermate sober en op het theater verschijnt slechts één man, Marc Reynaerts. De voorstelling blijft het originele verhaal trouw maar laat heel veel ruimte voor de persoonlijke fantasie van het publiek. De acteur speelt, neen wordt, verteller, Joris en oma, vader en moeder.\r\n\r\nHet publiek, groot en klein, smult en geniet met volle teugen. De opstelling met twee frames waarin diverse tekeningen worden getoond, die vaak nog ‘aanpasbaar’ blijken is geniaal in zijn eenvoud. Het brouwen van Joris’ toverdrankje zorgt voor algemene hilariteit, de rookwolk voor de portie ‘magie’ en het drankje blijkt te werken \r\nKortom, een heerlijke voorstelling die voor ons de perfecte afsluiter vormde van ons weekje Spekken.\r\n', 'blog1.png'),
(2, '2016-12-28', 'Voorstelling De supersongslurper', 'Tweede voorstelling voor ons kinderjurylid tijdens deze editie van Spekken, een muzikale deze keer. Twee professoren van de Allez Chantez Université, Joep en Elke, komen hun bijzondere machine voorstellen waarmee ze allerlei liedjes verzamelen en bewaren. Momenteel zijn ze op zoek naar een mooi stukje samenzang want ‘samenzingers’ zijn steeds minder te vinden.\r\nWat volgt is een gezamenlijke zangsessie inclusief opwarmoefeningen. Het eindresultaat wordt opgenomen door de SuperSongSlurper (en is nadien nog te beluisteren op de website van Allez Chantez).\r\n\r\nDe kinderjury heeft natuurlijk al heel wat voorstellingen gezien en legt de lat daardoor behoorlijk hoog maar ik heb mij de voorbije jaren meestal heel goed kunnen vinden in hun mening. De zesjarigen in de zaal hebben echter de hele voorstelling uit volle borst meegezongen en reageerden super enthousiast. Voor hen was deze voorstelling duidelijk wel een schot in de roos. De begeleidende volwassenen wil ik trouwens bij deze waarschuwen: ook u wordt rechtstreeks aangesproken om mee te zingen.\r\n', 'blog2.png'),
(3, '2015-12-27', 'Oma mag ik mijn pop terug?', 'Tweede dag van de tweede week van het Spekkenfestival. Vandaag een Nederlandse voorstelling op het programma met een toch wel ernstig thema: over ouder worden en vergeten.\r\nHet verhaal is eenvoudig: Fien komt elk weekend langs bij haar oma. Naarmate de tijd verstrijkt, wordt oma ouder en vergeetachtiger. Ze verhuist naar een home waar nog meer vergeetachtige mensen zitten. Uiteindelijk weet oma zelfs niet meer dat Fien haar kleindochter is en gaat ze ze steeds meer in het verleden leven en wordt ze terug een beetje kind tot ze zelfs dat vergeet.\r\nDrie acteurs, twee mannen en een vrouw, spelen afwisselend met grote poppen de rollen van oma, Fien en enkele andere bewoners van het home. Ze spelen alle drie met alle poppen wat een extra dimensie aan het stuk geeft en niet storend werkt (al past de ene speler soms net dat tikkeltje beter in de rol van een bepaalde pop / bij een bepaald personage). Ook de kraaien worden heel origineel in beeld gebracht (gemaakt van zwarte handschoenen) en dragen een bepaalde symboliek met zich mee die toch voldoende duidelijk blijkt te zijn voor het jonge publiek: telkens een kraai met een lint gaat vliegen, vergeet oma een stukje meer.\r\n\r\nOndanks het vrij zware thema zit er ongelooflijk veel humor in het stuk. Er wordt heel wat afgelachen en bepaalde situaties zijn – zeker voor de volwassenen – vaak heel herkenbaar, soms ook confronterend en ontroerend. De voorstelling bevat immers naast de nodige humor ook heel veel (ingetogen) emotie die zeker bij de volwassenen een gevoelige snaar kon raken.', 'blog3.png');

-- --------------------------------------------------------

--
-- Table structure for table `ma3_spekken_events`
--

CREATE TABLE `ma3_spekken_events` (
  `id` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `location_id` int(11) NOT NULL,
  `performer_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `start_age` tinyint(4) NOT NULL,
  `end_age` tinyint(4) NOT NULL,
  `description` text NOT NULL,
  `event_img` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ma3_spekken_events`
--

INSERT INTO `ma3_spekken_events` (`id`, `start`, `location_id`, `performer_id`, `title`, `start_age`, `end_age`, `description`, `event_img`) VALUES
(3, '2018-04-12 14:00:00', 1, 1, '’t Is tijd Klein Konijn', 4, 8, 'Klein Konijn droomt van verre reizen met zijn eigen raket. Ver weg naar nieuwe werelden, verre planeten, manen en sterren. Vlieg raket, vlieg. Maar Klein Konijn ’t is tijd voor school. ‘tis tijd voor speelplein. ‘tis tijd om te eten. ’ t Is tijd om te slapen. ‘tis elke dag opnieuw tijd voor zoveel. Nee Klein Konijn er is geen tijd om je raket te bouwen. Tot op een dag Klein Konijn de wijze tijdskoekoek ontmoet. ‘tis tijd Klein Konijn is een bijzonder aaibaar verhaal over tijd, geen tijd, maar vooral veel creativiteit.', 'event3_1, event3_2'),
(4, '2018-04-13 10:30:00', 2, 2, 'Dames en Dekens', 1, 4, 'Judith de Klerk maakt sinds 2007 voorstellingen voor jonge kinderen. Voor haar nieuwste voorstelling ‘dames&dekens’ heeft zij zich special gericht op de belevingswereld van kinderen vanaf 12 maanden (tot 4 jaar).\nElk jong kind raakt overweldigd door de geluiden en beelden om zich heen. De ervaring van wat hij hoort en ziet is van grote invloed op zijn onmiddellijke gedragingen en uiteindelijk ook op zijn innerlijke (on-)rust.\nJudith presenteert met ‘dames & dekens’ een voorstelling waarbij geen verhaal of anekdote wordt gepresenteerd. Het geheel van klanken, beelden en bewegingen toont een meer sensitief-muzikale compositie. Op deze wijze stelt Judith de kinderen in staat om hun focus op sensitieve wijze op het gebeurde te richten, de voorstelling aandachtig te aanschouwen en zo tot rust te komen.\nJudith wil met haar voorstellingen de verbeelding van de kinderen vergroten. Vaak hoort ze opmerkingen van ouders en leerkrachten die verbaasd zijn dat ze de kinderen nog nooit zo lang geconcentreerd hebben zien kijken. Geniet ervan!', 'event4_1, event4_2'),
(5, '2018-04-12 14:00:00', 1, 3, 'Circus PomPom', 4, 12, 'Op verzoek komt Circustheater Pompom terug naar Spekken!\r\nCircus Pompom doorbreekt het glazen plafond want haar vrouwelijke circusdirecteur staat voor allround clownerie met een jarenlange ervaring.\r\nVoor elke leeftijd zijn de voorstellingen spectaculair, zeer komisch, en vol magische momenten.\r\nNiets ontbreekt uit het circusrepertoire: grote tovertrucks, hilarische clownsacts, jongleren, diabolo, figuurballonnen, en natuurlijk ook de nodige interactie met een enthousiast publiek.', 'event5_1, event5_2'),
(6, '2018-04-20 11:00:00', 3, 1, 'Kim het zwarte kuikentje', 2, 6, 'Te midden van vele gele kuikentjes wordt een zwart kuikentje geboren.\r\nHet kuikentje is er onmiddellijk van overtuigd dat hij uit een ander ‘nest’ komt dan de rest, en hij wil de boer niet als papa zoals de andere kuikens .\r\nHij gaat op zoek naar zijn ware ‘zwarte’ ouders. Helaas zijn dat niet de honden, de poezen, de varkens… Hoort hij wel ergens bij ?\r\nBij de sluwe vos misschien, die zit immers lekkerbekkend gereed om het dolblije kuikentje te ontmoeten.\r\nKan Kim wel een gezinnetje vinden ? Een verhaal met onverwachte wendingen , een verrassend einde, grappige situaties…veel muziek en weinig woorden…', 'event6_1'),
(7, '2017-12-27 11:00:00', 4, 4, 'Twijfelmooi', 4, 10, 'Avant-premiière van de nieuwste voorstelling van Theater I-luna. Theater I Luna is een Gents theatergezelschap dat reeds tweemaal in de prijzen vil van de Spekken kinderjury! Deze voorstelling sis met live-muziek!\r\n\r\n’s Zondags moet Robin een mooie jurk aan. Maar Robin houdt niet van jurken, lange haren of roze pony’s. Ze wil liefst als stoere koorddanseres op de affiche van een circus staan. Of als goochelaar. Of als de baas van het circus. Of gewoon als zichzelf, net zoals de helden aan haar muur. Robin twijfelt. Zullen ze haar wel mooi vinden zo zonder jurk, lange haren en roze pony’s? Dromend oefent ze haar handstand in de houtkrullen van Kip en Konijn. Maar dan staat er ineens een echt circus in haar kamer…\r\n\r\nhttp://www.theater-i-luna.be/', 'event7_1'),
(8, '2017-12-27 14:00:00', 3, 5, 'Tyka', 4, 9, 'Een woordeloze, muzikale en beeldende voorstelling over samenspelen, plagen gemis, verlangen en plezier. Over drie meisjes, een pop en grijze koppen in een huis van katoen.\r\n\r\nTwee spelende meisjes, een muzikante en een huis van katoen. De ene speelt met een pop. Tyka heet die pop. Tyka is een vrolijke pop die houdt van gewone vrolijke dingen. De andere speelt met koppen. Grijze koppen. Wannneer ze zo’n kop opzet wordt ze een pestkop! Tyka en het meisje worden dat plagen moe en ze besluiten om op reis te vertrekken. Al snel merkt het andere meisje dat samenspelen toch zoveel leuker is. Komen Tyka en het meisje nog wel terug?\r\n\r\nhttps://www.facebook.com/theatertyka/', 'event8_1, event8_2'),
(9, '2017-12-27 14:30:00', 1, 6, 'Patje, de kikkerprins', 7, 12, 'Voormalig Spekken kinderjurywinnaar Tweelicht & Zoon (met de voorstelling ‘Alleendje’) is dit jaar opnieuw van de partij met hun spiksplinternieuwste productie!\r\n\r\n\r\nBij papa Patrick en zijn dochter Patricia is alles van goud. Ook de bal die ze krijgt. Wanneer ze ermee wil gaan buitenspelen, blijkt dat ze nooit naar buiten mag van haar vader. Hij is bang voor de ‘buitenwoners’. Maar dochterlief ontsnapt toch, maakt kennis met een kikker, smasht overmoedig haar bal in de vijver in en overtuigt Patje, de kiiker, om hem voor haar op te duikelen. Hij doet het, maar stelt drie voorwaarden: hij mag bij haar op bezoek komen voor lekker  eten, lekker slapen en een kuis kusje. Dat zijn de drie voorwaarden waarop hij terug onttoverd kan worden tot mens. Wat volgt is een spannend, grappig en – wie weet – romantisch avontuur. Niet te missen!\r\n\r\nhttp://www.xlp.be/index.php/artiesten-54/jeugdtheater/70-tweelicht-a-zoon', 'event9_1,event9_2,event9_3'),
(10, '2017-12-28 11:00:00', 1, 7, 'De Kluizenaar', 2, 6, '‘Kluizenaar’ wordt omschreven als de ‘ontdekking van dit seizoen’ en kreeg tereht een 5-sterren-recensie van de pers in Nederland: “vakmanschap, een heerlijk theatraal kleinood om helemaal in op te gaan.”\r\n\r\nEr staat een houten kubus op het podium. Een kubus met verrassingen. Deurtjes gaan open en dicht, lampjes aan en uit. Is het een huis? Zit er iets in? Wat of wie zit erin? ‘Kluizenaar’(een mooi geleende term van Anie M. G. Scmidt) is een beeldende voorstelling over een mini-huis. De zonderlinge bewonder zegt dat hij niet thuis is, maar we horen en zien hem wel. Spannende, originele en geestige voorstelling over alleen zijn en thuis komen.\r\n\r\nhttp://www.xlp.be/index.php/artiesten-54/jeugdtheater/352-simone-de-jong', 'event10_1, event10_2'),
(11, '2017-12-27 15:15:00', 4, 8, 'Guizing', 4, 10, 'Een schitterende en ontroerende voorstelling die door de internationale pers terecht enthousiast werd onthaald. Theater Oz was reeds eerder te gast op Spekken en werd fel gesmaakt.\r\n\r\nEr was eens een klein meisje met een broos en kwetsbaar stemmetje dat héél graag zingt. Maar omdat ze steeds moet opboksen tegen ‘té’ (té veel lawaai, té luid, té veel woorden, té hard…) verliest ze haar zelfvertrouwen. Ze sluit zich op in een bubbel van stilte. Eindelijk rust! Niets te horen, tot …?`Wie of wat is dat? Uit ritmes onstaat dans, spel beweging èn … zang! Je gelooft je ogen en vooral je oren niet. Het prachtig opgebouwde ‘Guizing’ laat niemand onberoerd!\r\n\r\nhttp://www.xlp.be/index.php/artiesten-54/jeugdtheater/287-theater-oz\r\nhttp://vimeo.com/33393053 ', 'event11_1, event11_2'),
(12, '2017-12-28 11:00:00', 3, 9, 'Ik ben een held', 5, 9, 'De pers: De verfrissende fantasie gekoppeld aan fijne, relativerende humor maakt van ‘Ik ben een held’ zonder meer hoogstaand theater (GVA)\r\n\r\nOver een monster zonder kop, een vis met scherpe tanden, een geheim dat geheim is én een spook onder het bed. Vier straffe en grappige verhalen over een bijzondere vader-kind relatie waarin het kind altijd slimmer en moediger is dan zijn vader. Gekleurd met vertedering, deugnieterij en onverbloemde gruwel. Dit alles voortgeduwd door ritmische jazzmuziek zoals in een stomme film.\r\n\r\nhttp://www.annassteen.com/', 'event12_1'),
(13, '2017-12-29 14:00:00', 2, 10, 'Broemmm', 2, 6, 'Ellen Smets is een vaste gaste op Spekken, ze wordt dan ook telkens heel enthousiast beoordeeld door de kinderjury voor het interactieve en vooral grappige theater dat ze brengt.\r\n\r\nZip wil vertrekken met haar autootje Broem. Ze wacht op haar vriend Deus maar die komt maar niet opdagen. Uiteindelijk besluit Zip toch te vertrekken, maar Broem start niet en krijgt rare kuren. Niet alles verloopt dus zoals verwacht… Jullie gaan toch ook mee op reis? ‘Broemmm’, de allernieuwste voorstelling van Ellen Smets is een feest voor de kinderen, een visueel spektakel vol humor en avontuur. Kinderen voelen zich onmiddellijk betrokken en beleven sem met Broem en haar baasje Zip de spannendste avonturen.\r\n\r\nhttp://www.xlp.be/index.php/artiesten-54/jeugdtheater/316-ellen-smets-theater\r\nhttp://www.ellensmetstheater.nl/home.html', 'event13_1, event13_2, event13_3'),
(14, '2017-12-29 15:00:00', 1, 11, 'Waarschijnlijk zullen we het nooit weten', 7, 99, 'De winnaars van Spekken kinderjury van vorig jaar ( categorie 7+). Enkele van hun trefwoorden om dit stuk te omschrijven: “Grappig, hilarisch, goede acteurs, mooi spektakel met weinig materiaal, super, fantastisch…\r\n\r\nEen toneelstuk voor een boom, een spin en een onzichtbare. (en ook voor een violist) Ze waren er bij. Ze hebben alles gezien. En ze gaan het u vertellen. Het verhaal van de kapitein en de violist. De Boom: “ De kapitein was triestig, elke dag. Om hoe het hem vergaan is. Om zijn boot, die vergaan is. (tegen De Spin) Nu moet jij even boot zijn.” De Spin: “ Een kapitein is een kapitein. Een kapitein vertrekt. Vaart. Meert aan. Blijft even. En vertrekt. Vaart. Meert aan. Blijft even. En vertrekt.” Ieder zijn eigen waarheid. Zoveel ogen, zoveel verhalen. Ieder zijn eigen manier. Maar vooral, wie heeft er nu gelijk?\r\n\r\n\r\nhttps://www.facebook.com/Compagnie-Brulschaap-548267368537219/', 'event14_1, event14_2, event14_3'),
(15, '2017-12-29 15:00:00', 3, 12, 'De Bank', 5, 10, 'Een grappige voorstelling over onthaasten, stress, ontdekken en genieten.\r\n\r\nEen rustig plekje op het platteland, ver weg van de stad. Waar Karel op een bankje zit, luisterend naar geritsel in het struikgewas, turend over groene weiden. Allemaal beestjes. Een andere bank, stijf, deftig, in de stad. Een bank aan de bank. Waar heren in een strak pak zaken doen. Karel in kostuum, wat op z’n ongemak. Auto’s, bussen trams, hindernissen en muizenissen. Allemaal mensen. Weg van de stad? Weg van elkaar?\r\n\r\nhttps://www.facebook.com/Compagnie-Brulschaap-548267368537219/', 'event15_1, event15_2, event15_3'),
(16, '2017-12-30 14:00:00', 5, 13, 'In de verte', 2, 6, '‘In de verte’ werd dit seizoen geselecteerd voor het Theaterfestival. Een referentie die kan tellen\r\n\r\nWat is de verte? En hoe kom je daar? We verzamelen al onze moed en stappen de grote wijde wereld in op zoek naar het onbekende. Geïnspireerd door de verhalen van Toon Tellegen maken Malou en Judith deze beeldende, interactieve en muzikale voorstelling over weggaan en weer thuis komen. En ook over het avontuur daar tussenin! Een fantasierijke voorstelling over verlangen naar een plek waar je niet bent. Verlangen is de brandstof voor fantasie. En wie kan fantaseren, die kan bij de verte komen. En of dat gelukt is !!!', 'event16_1, event16_2, event16_3'),
(17, '2017-12-30 14:00:00', 1, 14, 'Joep', 2, 6, 'Een vrolijke, muzikale voorstelling met poppen, over luisteren, stotteren, verliefde wolken en uitgesproken dieren.\r\n\r\nJoep! Gaat over een lammetje. Op ee ochtend wordt Joep wakker met een vreemd gevoel. Zodra hij weet waarom hij moet huilen, lachten en brommen tegelijk, wil hij dit met iedereen delen. Dat lijkt makkelijker dan het is. Want Joep stottert. Soms wat mer en soms wat minder. Vol goede moed bezoekt hij zijn vrienden om het grote nieuws te verspreiden. “Ik bè-bè-bè-bèehn…” Maar Joep krijgt niet de kans om zijn zin af te maken: “Jij bent van van plan om een wereldreis te maken. Wat leuk!” En zo gaat het maar door. Voordat Joep zijn zin heeft afgemaakt, vullen anderen deze aan met de meest wonderlijke aannames. Tenslotte huppelt Joep naar het weiland naast hem. Daar staa Dirk, zijn nieuwe buurschaap. Zou hij het hem kunnen vertellen?', 'event17_1, event17_2, event17_3'),
(18, '2018-01-03 14:30:00', 6, 15, 'Sneeuwwitje wat ben je mooi', 4, 8, 'Een poëtische raamvertelling in een kleurrijk decor, waarin een vader voor zijn dochter het bekende verhaal van Sneeuwwitje naspeelt. Kolderiek en bij vlagen serieus verwijst dit oude sprookje naar onze eigen tijd.\r\n\r\nWas mama mooi? ‘Mama was de mooiste van de hele wereld.’ ‘ Dan wil ik een verhaaltje over de mooiste van de hele wereld.’ Papa vertelt het verhaal én hij speelt alle rollen zelf. Een fantastisch avontuur over Sneeuwwitje: het prinsesje met de gitzwarte haren, de vuurrode lippen en het sneeuwwitte huidje. Die door haar jaloerse stiefmoeder slecht wordt behandeld… ‘Papa, ga jij ook trouwen?’ ‘Zou je dat willen dan?’ ‘Alleen als ze heel erg lief is. Ze hoeft helemaal niet mooi te zijn.’ ‘Ik zal erop letten. Maar jij blijft mijn eigen lieve prinses. Voor altijd.’', 'event18_1, event18_2'),
(19, '2018-01-03 11:00:00', 1, 16, 'Carottenpot', 5, 9, 'Een speelse en interactieve voorstelling! Heel belangrijk is dat de kinderen hun leuktste paar sokken meebrengen!\r\n\r\nGelukkig zijn, hoe doe je dat?! Al jarenlang zoekt de professor in zijn huisje diep in het WortelWoud uit hoe dat werkt, zo gelukkig zijn. Niet gemakkelijk, met het monster dat in het bos leeft! En dan plots, staat daar ook nog eens een meisje dat niet eens kan kiezen of ze nu oranje of paarse sokken wilt dragen, of ze nu schatkaartversnipperaar of drakenneuskeutelverzamelaar wordt. IeneMiene Carrottenpot nog aan toe! Kom mee op deze zoektocht en we beloven dat je geluksmeter tot de sterren zal reiken!', 'event19_1, event19_2, event19_3'),
(20, '2018-01-03 14:00:00', 7, 17, 'Vleugels', 8, 12, 'Première voor Gent en Vlaanderen. Compagnie De Fietswolven hebben reeds 15 jaar ervaring in figurentheater, maar dit si hun eerste theatervoorstelling, voor fijnproevers!\r\n\r\nEen meisje op school. De meester dicteert zijn sommen. Vleugels is het fantastische verhaal van elk kind op de schoolbanken: Een sprookje over het ontsnappen aan tijd en ruimte. Een waar gebeurd verhaal over imaginaire vriendschappen. De leerkracht treft een lege klas. Het meisje is gevlogen… Vleugels zijn ook de herinneringen van ons, volwassen kinderen… nu we vaststellen dat we zelf een soort schoolmeester zijn geworden die de klok en het rekenen als hoogste goed zien.\r\n\r\nhttps://www.youtube.com/watch?v=ilhcpIVplqs\r\nhttps://www.facebook.com/cie.fietswolven/', 'event20_1, event20_2'),
(21, '2018-01-04 11:00:00', 6, 18, 'Bloeiende woestijn', 2, 6, 'Een verrassende voorstelling om mee te maken. De kinderen woren heel actief betrokken in dit dierensprookje… en dat in een unieke locatie\r\n\r\nWaar is de woestijn? Daar? Nee, daar! O ja! Maar, hola! De woestijn is weg. Het is een oerwoud, met grote dieren. Vlug! Kom in de tent, daar ben je veilig. Bloeiende woestijn is een muzikaal bewegingsverhaal waarin de woestijn verandert in een oerwoud. ', 'event21_1, event21_2'),
(22, '2018-01-04 15:15:00', 7, 19, 'Fijn Stof', 8, 99, '‘Fijn stof’ si een erg theatrale, absurd humoristische circustheatervoorstelling waarin twee artiesten hun creativiteit botvieren.\r\n\r\nEen voorstelling over lichtheid en zweven, jongleren en acrobatiek en illusies met gebruik van live-muziek en samples en natuurlijk mag er ook gelachen worden. Acrobaat Tonny Muldere en jongleur/koorddanser Marco Bonisimo zijn twee doorgewinterde artiesten. In ‘Fijn stof’ krijg je als publiek het “één en één is drie-effect”. Door het eigenzinnig karakter en de mix van vele stijlen is de voorstelling uniek en niet echt met iets anders te vergelijken.  \r\n\r\nhttp://www.duodiesel.nl/\r\nhttp://www.xlp.be/index.php/artiesten-54/theater/372-duo-diesel-nl\r\nhttps://www.youtube.com/watch?v=Ql2JBOLkM0w', 'event22_1, event22_2'),
(23, '2018-01-05 15:15:00', 1, 4, 'Drakenjacht', 4, 10, 'Winnende voorstelling van de kinderjury Spekken 2015: “lieve draak en ridders” “toverkast is een toffe kast” “dingen uit de staart:leuk” waren enkele van de bevindingen van onze jury! 5 sterren waard!\r\n\r\nTwee broers kunnen niet wachten om ridder te worden. Maar daar hebben ze één ding voor nodig: een échte draak. Zo eentje die onder het bed zit. Eentje die brult en vuur spuwt en vliegt. De draak die bij hen woont is echter niet helemaal wat ze verwacht hadden. Een voorstelling over hoe een beetje anders zijn niet erg is.\r\n\r\nhttp://www.theater-i-luna.be/ ', 'event23_1'),
(24, '2018-01-05 11:00:00', 3, 20, 'Kraak', 4, 10, 'Theatergroep Wie Walvis maakt humoristisch muziektheater voor kinderen die zich groot voelen en volwassenen die weer even klein willen zijn. De stijl tuimelt van slapstick naar momenten vol ontroering, van grote verhalen naar kleine geheimpjes en vna intieme liedjes naar spectaculaire solo’s.\r\n\r\n‘Hoor je dat? Dat zijn mijn botten die kraken. Daarom noemen ze me de oude Kraak. Van binnen ben ik nog steeds een jongetje. Vind je dat moeilijk te geloven? Ht liefst zou ik net als jij in bomen klimmen, de juffrouw pesten en limonade drinken. Maar mijn rimpels verraden me. Ik ben een hele oude eenzame Kraak.” Sins zijn vrouwtje er niet meer is vult Kraak zijn dagen met staren naar de regen en praten met zijn koekoeksklok. Soms vergeet hij even dat ze er niet meer is en zet hij thee voor twee of bakt een extra pannenkoekje voor haar. Van verdriet begint hij ook nog eens meer te kraken. Maar dan wordt er onverwachts op de deur van zijn huisje geklopt.\r\n\r\nhttps://www.wiewalvis.nl/', 'event24_1, event24_2, event24_3'),
(25, '2018-01-05 11:00:00', 1, 21, 'Brr', 4, 9, 'TG Graasland maakt voorstellingen waarbij het toneelbeeld je in een andere wereld zet, waar tekst zoveel mogelijk wordt gemeden en enkel gebruikt wordtr wanneer er puntjes op de i staan.\r\n\r\nEen humoristisch verhaal vol nieuwsgierige pinguïns, koude neuzen en sneeuw… heel veel sneeuw. Een Eskimo, helemaal alleen op de poolcirkel. Zijn iglo als een koud huis vol warmte. De ijspegels laten iedere dag een weemoedig deuntje horen, maar zowel dat lied als de kou deren hem niet. Hij heeft het goed zo. Totdat hij bij het ijsvissen een verkleumde man naar boven hengelt. Dit zet hun beide werelden op z’n kop. \r\n\r\nhttp://www.tggraasland.nl/\r\nhttps://www.facebook.com/tgGraasland', 'event25_1, event25_2, event25_3, event25_4'),
(26, '2018-01-05 15:15:00', 7, 22, 'Het geheim van de liefde', 4, 9, 'De Locals maken muzikale theatervoorstellingen voor een jong publiek. Theater dat gaat over de wereld en haar mensen, over onze diversiteit en onze eenheid. Een Locals voorstelling sluit naadloos aan op de belevingswereld van de doelgroep en zit vol liedjes, humor en vertelkunst.\r\n\r\nIjsbrand is een genial wetenschapper. Hij houdt van dingen die je zeker kunt weten. Hij doet onderzoek naar het meest onmeetbare verschijnsel: De Liefde. Samen met zijn assistente Victoria werkt hij aan een liefdesdrank, die de wereld mooier moet gaan maken. Voor de feestelijke onthulling van het drankje is muzikant Thijs ingehuurd. Wanneer de passionele muziek van Thijs de steriele onderzoeksruimte in komt stromen, worden de verhoudingen flink op scherp gezet. De liefdesdrank wordt ingezet voor eigen geluk en dan… lijkt alles wat vast stond plots weer los. De jeugdtheatervoorstelling ‘Het Geheim van de Liefde’ gaat over passie voor onderzoek en onzoek naar passie. Over overvolle hoofden en fladderende buiken. Met zwoele muziek, veel humor en verwarrende feiten. \r\n\r\nhttp://tglocals.com/\r\nhttps://www.youtube.com/watch?v=0P1d5gf_1qA\r\nhttps://www.instagram.com/theatergroep_locals/', 'event26_1, event26_2, event26_3'),
(27, '2018-01-06 15:15:00', 7, 23, 'Hand Up', 4, 9, 'We vallen niet graag in herhaling, maar voor Lejo maken we graag een uitzondering. Zijn voorstellingen zijn dan ook zo uniek wat we iedere keer terug zwichten om hem in ons menu op te nemen.\r\n\r\nMet blote handen en huiten ogen creëert Lejo een unieke, frisse vorm van poppentheater. ‘ Hands up!! Is een vrolijke, woordloze voorstelling met veel muziek . Vanuit een grote blauwe poppenkast vertonen de poppen hun kunsten. Een stoere hond, 2 tapdansers, een koe met een eetprobleem, een heel kinderkoor inclusief dirigent en vele anderen passeren de revue. Het publiek (jong en oud) vergeet al snel dat naar twee handen zit te kijken. \r\n\r\nOnder de naam ‘Lejo’ maakt Leo Petersen als sinds 1995 voorstellinge  en filmpjes met zijn poppen. Wat begon als een studieproject groeide uit tot een act waarmee hij de hele wereld over rist. In Nederland en Vlaanderen is Lejo vooral bekend door de filmpjes die hij maakte voor Sesamstraat. \r\n\r\nhttps://www.youtube.com/watch?v=ukfB194QEHo\r\nhttp://www.lejo.nl/', 'event27_1, event27_2, event27_3, event27_4'),
(28, '2018-01-06 15:00:00', 1, 24, 'De put zonder echo', 6, 12, 'Naar een tekst van Devid Van Hende. Traject Jonge Makers is een initiatief waar jonge theatermakers hun kans krijgen een eerste podiumervaring te beleven, mits intensieve coaching en met verrassend resultaat.\r\n\r\nIn een overwoekerde tuin vinden Viktor en Fleur een oude put. Maar als eze er iets in roepen, horen ze geen echo. Is de put dan zo diep dat er geen enkel geluid terugkaatst? Durven ze op onderzoek uitgaan? Een spannende en grappige voorstelling over tijd, durf en vriendschap. En over wat nu echt belnagrijk is in het leven. \r\n\r\nhttp://despooiberg.be/\r\nhttps://www.youtube.com/watch?v=ZPDN7Hk8evg', 'event28_1'),
(29, '2018-01-06 15:00:00', 3, 25, 'Jeanine', 5, 10, 'We eindigen deze mooie Spekken editie met één van de winnaars van de Spekken kinderjury vorig jaar. Hun reacties: “steengoede acteur”, “verhaal super”, “spannend”…\r\n\r\nEen stevig verhaal over een gewone vrouw die het gewoon beu is om gewoon te zijn. Maar als je het nu eenmaal gewoon bent om gewoon te zijn, dan blijkt het niet zo gemakkelijk te zijn opeens ongewoon te worden. Tenzij… tenzij je ongewone kinderen krijgt. Als er dan toch één gewoon kind bij is, dan blijkt die al snel de kop van jut te zijn. De inspiratie voor dit stevige verhaal vonden we bij ‘éénoogje, tweeoogje, drieoogje’ van de broers Grimm. De wonderlijke klanken komen uit de viool van Annemie Van Daele en de gitaar van Peter Verberckmoes. \r\n\r\ntheaterhutsepot.be', 'event29_1, event29_2');

-- --------------------------------------------------------

--
-- Table structure for table `ma3_spekken_events_tags`
--

CREATE TABLE `ma3_spekken_events_tags` (
  `event_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ma3_spekken_events_tags`
--

INSERT INTO `ma3_spekken_events_tags` (`event_id`, `tag_id`) VALUES
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(21, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(5, 2),
(7, 2),
(9, 2),
(11, 2),
(14, 2),
(15, 2),
(19, 2),
(20, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(3, 3),
(8, 3),
(17, 3),
(18, 3),
(20, 3),
(27, 3),
(4, 4),
(12, 4),
(16, 4),
(17, 4),
(25, 4),
(4, 5),
(13, 5),
(16, 5),
(17, 5),
(21, 5),
(5, 6),
(22, 6),
(11, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ma3_spekken_locations`
--

CREATE TABLE `ma3_spekken_locations` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ma3_spekken_locations`
--

INSERT INTO `ma3_spekken_locations` (`id`, `name`) VALUES
(1, 'Tinnepot – Becketzaal'),
(2, 'Tinnepot – Balkon'),
(3, 'Tinnepot – Bouffonzaal'),
(4, 'Tinnepot – Biljartzaal'),
(5, 'Tinnepot – Binnenhof'),
(6, 'Gravensteen (Winterwonderkasteel)'),
(7, 'Tinnenpot - Bonbonnière');

-- --------------------------------------------------------

--
-- Table structure for table `ma3_spekken_performers`
--

CREATE TABLE `ma3_spekken_performers` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ma3_spekken_performers`
--

INSERT INTO `ma3_spekken_performers` (`id`, `name`) VALUES
(1, 'Figurentheater Vinders & Co'),
(2, 'Judith de Klerk'),
(3, 'Circustheater Pompom'),
(4, 'Theater I-Luna'),
(5, 'Theater Tyka'),
(6, 'Tweelicht & Zoon'),
(7, 'Simone De Jong (NL)'),
(8, 'Theater Oz (WAL-BXL)'),
(9, 'Anna’s steen'),
(10, 'Ellen Smets (NL)'),
(11, 'Cie Brulschaap'),
(12, 'Studio Gekko'),
(13, 'Malou & Judith (NL)'),
(14, 'Theater Gnaffel (NL)'),
(15, 'Arthur Geesing (NL)'),
(16, 'AntARTica (NL)'),
(17, 'Compagnie de Fietswolven'),
(18, 'Jeugdtheatergroep Rood'),
(19, 'Duo Diesel'),
(20, 'Wie Walvis (NL)'),
(21, 'TG Graasland (NL)'),
(22, 'TG Locals (NL)'),
(23, 'Lejo (NL)'),
(24, 'De Spooiberg'),
(25, 'Theater Hutsepot');

-- --------------------------------------------------------

--
-- Table structure for table `ma3_spekken_tags`
--

CREATE TABLE `ma3_spekken_tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ma3_spekken_tags`
--

INSERT INTO `ma3_spekken_tags` (`id`, `tag`) VALUES
(6, 'circus'),
(7, 'danstheater'),
(3, 'figurentheater'),
(2, 'jeugdtheater'),
(1, 'kindertheater'),
(5, 'kleutertheater'),
(4, 'muziektheater');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ma3_spekken_blogs`
--
ALTER TABLE `ma3_spekken_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ma3_spekken_events`
--
ALTER TABLE `ma3_spekken_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `performer_id` (`performer_id`) USING BTREE,
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ma3_spekken_events_tags`
--
ALTER TABLE `ma3_spekken_events_tags`
  ADD PRIMARY KEY (`event_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `ma3_spekken_locations`
--
ALTER TABLE `ma3_spekken_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ma3_spekken_performers`
--
ALTER TABLE `ma3_spekken_performers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ma3_spekken_tags`
--
ALTER TABLE `ma3_spekken_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`tag`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ma3_spekken_blogs`
--
ALTER TABLE `ma3_spekken_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ma3_spekken_events`
--
ALTER TABLE `ma3_spekken_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `ma3_spekken_locations`
--
ALTER TABLE `ma3_spekken_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ma3_spekken_performers`
--
ALTER TABLE `ma3_spekken_performers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `ma3_spekken_tags`
--
ALTER TABLE `ma3_spekken_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ma3_spekken_events`
--
ALTER TABLE `ma3_spekken_events`
  ADD CONSTRAINT `ma3_spekken_events_ibfk_1` FOREIGN KEY (`performer_id`) REFERENCES `ma3_spekken_performers` (`id`),
  ADD CONSTRAINT `ma3_spekken_events_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ma3_spekken_locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ma3_spekken_events_tags`
--
ALTER TABLE `ma3_spekken_events_tags`
  ADD CONSTRAINT `ma3_spekken_events_tags_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `ma3_spekken_events` (`id`),
  ADD CONSTRAINT `ma3_spekken_events_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `ma3_spekken_tags` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
