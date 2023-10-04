-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2023 at 02:32 AM
-- Server version: 5.7.40-log
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_admin_session`
--

CREATE TABLE `ci_admin_session` (
  `session_token` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(18) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_admin_session`
--

INSERT INTO `ci_admin_session` (`session_token`, `user_id`, `ip_address`, `c_date`) VALUES
('cgo9lu3u3hhrbv23hvridofv09qsn5d2', 35, '::1', '2023-07-06 11:07:30'),
('rd1r8ilvvvho54ouc0uaif0n698f2gqh', 2, '43.241.146.175', '2023-07-14 08:26:40'),
('ru33vkuvnuqq1kb00h06pgm3osau02rl', 1, '43.250.156.111', '2023-07-05 10:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0060lr5j3955o30j1htpdcok7cddjjlh', '143.110.222.166', 1690467793, ''),
('00dqclbrinuni5ae2ojo7ui0qp6bfhu7', '165.227.47.218', 1689475395, ''),
('019ltbhegd59170aoeh1fapanun738ik', '45.79.181.251', 1690014751, ''),
('01aelv83lv4jipnh178qe3qln1du5a63', '54.37.79.75', 1689487743, ''),
('040777aqf2tqbuvhsmn4j6js9o171guc', '143.110.222.166', 1690416751, ''),
('04ouqctiluhga6420v8r2v49h8836djn', '143.110.222.166', 1689221501, ''),
('04pc69vev9l2ff1gp4f2bu9jdbsg6tbn', '143.110.222.166', 1690506453, ''),
('04qia8g0t8t07opg6mhjofi8tr9ugi8o', '213.109.202.66', 1690249809, ''),
('053ta5cin0fnqdk0afagsrp87f6qohvm', '185.180.143.81', 1690494489, ''),
('07i8i01oj41d9ieu8egaamme6qcj41an', '65.49.1.80', 1690433089, ''),
('07plq70h9ppjraqgnltpdp6il8noae1i', '143.110.222.166', 1690049371, ''),
('09a1j1ntb2te5rbjqq7k3thr2b4d0qkh', '143.110.222.166', 1690531695, ''),
('0a7kti6s6et7opia1ppe3mu029hfgs8s', '103.149.192.61', 1689243222, ''),
('0ad10h4geri6ph7ain9opalsf346t5aa', '154.209.125.124', 1690665736, ''),
('0b02j28fuaq6844e56n6vmcre9pdvdd7', '51.79.29.48', 1689333709, ''),
('0bj5d8a3bfan5htjidpq5ulim8vjs9j4', '143.110.222.166', 1689837061, ''),
('0crggv5atlgd8fg6m6bhoel8944q6o3b', '143.110.222.166', 1689988813, ''),
('0dulg2qd96noc4amus2v7p4blqp2gjrb', '3.93.191.45', 1690884043, ''),
('0eu8sekeadqcbku6v9go3f7q2aj1v2iq', '51.79.29.48', 1689268446, ''),
('0he2fngp2jvr3rqh5himpo4vc4hm163p', '167.248.133.127', 1690305355, ''),
('0hse7upbhtvk4god6neam0kua57dvju8', '1.83.125.205', 1690358868, ''),
('0iosfl5spqo36fiqmbm12133rkf7qut8', '185.180.143.8', 1690591401, ''),
('0kqpim4gb76lbhetubrd3oircr9b1nlt', '143.110.222.166', 1690470959, ''),
('0l13r2hl5uhnvn2rqeg38maqk21a55np', '43.241.146.244', 1689323473, ''),
('0lsv54cu2pqov7bre8f1m70rduivl0uo', '185.180.143.80', 1690692317, ''),
('0n6ogme51ada1u1qm2q25r5jo73dst2q', '51.79.29.48', 1689329228, ''),
('0nsgv3bcgbm9pj4ug1qloeg7f5rlhie3', '143.110.222.166', 1690795737, ''),
('0o9bug25jgpa86dg73fvhmmlgp6cb5kq', '66.45.244.250', 1689656911, ''),
('0odnsl601g3m5agtid1e0r10eh998b7a', '143.110.222.166', 1689775352, ''),
('0oolpr0r19fqpmdvf8lidack7acaqv7g', '147.78.103.218', 1690708212, ''),
('0osdnfq7i8rr5726lj6pl7loas6tfpvp', '194.59.31.158', 1690523304, ''),
('0pa53ahqtq24pqe5a1d79diqdl8evmof', '143.110.222.166', 1689916534, ''),
('0q4sq9glbo94toushs7lehoar61ohteq', '143.110.222.166', 1689232168, ''),
('0qvkm3pe62jgsmt9tv6jf5bguvetqpr0', '54.37.79.75', 1690060705, ''),
('0rgdu3cdjqgfi4p9sr8r4avfakpsj6ej', '79.3.134.175', 1689601977, ''),
('0rl21n5nl6tiv2ls1h69vvv3nfbqo1ll', '172.105.128.13', 1690187995, ''),
('0t9e7adle1udnc7imikibnebf599gtoe', '141.147.39.208', 1689940190, ''),
('0teqggjj647bqck0f2i1njrmvg3jlq8e', '61.147.21.51', 1689565478, ''),
('0tgqjjvje4kentp8qoibkic564hntdeg', '143.110.222.166', 1689505074, ''),
('0u3l5jvc91gqmftbcdlcm6in9j47hcuc', '35.233.62.116', 1690746730, ''),
('0uku5pgn0bv5lt10jk61ni4oidekcu81', '122.179.202.137', 1689397232, ''),
('0urhjiugccmvv06231scpdq94mcl0eo4', '143.110.222.166', 1690722763, ''),
('0v5riai7in3gbpqh9i9o2gnnmhagdmpb', '92.118.39.40', 1690523882, ''),
('0v693avdma8irq7k5f1rnk0std39m6kc', '103.73.182.249', 1690448941, ''),
('0vb6cua9elmol61g3kb0ditgfgiv2o7h', '91.224.92.16', 1689360916, ''),
('1052n68qhs58l9vjdfg10bjf4phncugs', '43.241.146.244', 1689257565, ''),
('10q3h9mbj8b8fgm7lr0fg92te0b1am0o', '20.109.89.179', 1689263807, ''),
('11mt9f5md18b7n5n9cto3bmkt2ra8eur', '141.98.11.207', 1689188979, ''),
('11rjcm1aue1tp7a104e8usc5demp1a0c', '143.110.222.166', 1690189264, ''),
('122m3ni8s2mncqlemk2io5ha379gcp38', '34.140.248.32', 1690661228, ''),
('13a47craijmvut9vb6g37qd8ou2tmjt4', '152.136.166.133', 1689532722, ''),
('146pnkfcmvf17qsd424uqch5hr4n5ucd', '143.110.222.166', 1690783418, ''),
('14cvgurpjdbsqhabrl5pdg9b8hosrh4p', '87.236.176.186', 1689296705, ''),
('14hvtj7f7pf6pthmnusqu1mio6ctmsdn', '184.105.247.252', 1690285911, ''),
('14psaffb627le119eqmnm7p3fdehuoo9', '143.110.222.166', 1690811920, ''),
('1503ahf8puqb2j08pq2d57j016v6gsse', '143.110.222.166', 1690815771, ''),
('1607o3p2bq6nbr2142ootejj8spv2a4e', '91.224.92.16', 1689306308, ''),
('168fbjggqn4piogs8r247q6qhm6giv5c', '213.109.202.66', 1690096630, ''),
('18bn6o1ocpt4ctpm8rkobim7v2vop0el', '94.102.61.10', 1690280779, ''),
('19dd45sdve7kashokqho22f0v74mlgk1', '143.110.222.166', 1689351031, ''),
('1cllsa1ds9k19c78lptfl01sc7n68bfg', '103.30.201.130', 1690323406, ''),
('1ctrhvva0ignduu10922226k8nojsqh8', '143.110.222.166', 1689627501, ''),
('1cu9a2oen5he5and2jn4tjkrrtmvuf9q', '143.110.222.166', 1690827655, ''),
('1d7tg6tg3snr808pcaae3s3iojicimge', '54.37.79.75', 1689473444, ''),
('1dneluqomslhi7v62osf5d19tfg0od27', '143.110.222.166', 1690353286, ''),
('1ds0s9jvfof852aj14l9fdhsbg5eg3k9', '143.110.222.166', 1690914112, ''),
('1e9m4r1gj1ajksp0vsgdrkbdu9fli4nk', '51.79.29.48', 1690582602, ''),
('1f3e9885oeaqj4q1tkjd4unr4tl9h25k', '20.211.161.6', 1689489061, ''),
('1fk811u90n1k3il3jqopn083f4l20rnn', '143.110.222.166', 1690888256, ''),
('1g236og2g9ms6f1ngjmsbft8rn5ha6q0', '143.110.222.166', 1690750806, ''),
('1h1sd1ht4u8gnsvnj7gnukcrr9e4f5cf', '54.37.79.75', 1690713617, ''),
('1hnfqer143gf9qvigdrd3rm2cuf7r6ge', '167.94.138.126', 1689742431, ''),
('1iaqoi86g30n50n8hg2dq7il9v3vg04j', '20.111.40.106', 1690293525, ''),
('1k2fcovofvje65q1f7lup313f533c53o', '51.79.29.48', 1689603246, ''),
('1ko0v59es8m4e9gddaan3ts88jhom12c', '143.244.50.173', 1690390017, ''),
('1kr9oec0ca9jeg3n4fe7qnlaald35ifa', '143.110.222.166', 1689682330, ''),
('1lbjal5cvta5arvdn6i1hm95mnrrfd3l', '54.37.79.75', 1689505191, ''),
('1lh3gaib917s7pfdr9gf0dq8lia3ff5k', '143.110.222.166', 1689944679, ''),
('1livh7mr7ikanadta9bbuncirm9deq94', '143.110.222.166', 1690727143, ''),
('1n77t1br54s6alesuog3oukj48ttaou0', '146.190.41.214', 1690213617, ''),
('1nd5lbng32tjm1bbr44m8hkf8ocju9nd', '143.110.222.166', 1690336657, ''),
('1npmp3h6phakhnopbgebj221r38t11am', '3.10.203.197', 1690275271, ''),
('1o3dvkl7rum0bgrkfhtoj6f66gtesv5d', '143.110.222.166', 1690060615, ''),
('1o3uuf06cd8p3k1caukk3r0gkdlb29md', '143.110.222.166', 1690081451, ''),
('1oa3fpjq4p2hcso01os0gd6camrs2hvd', '159.223.55.198', 1690188886, ''),
('1omkje6uhra82gr8vfp8f326tptm6mbl', '83.97.73.87', 1690647912, ''),
('1p8mn232peqcbid9o2hf9au0v01bbh45', '54.37.79.75', 1690380929, ''),
('1pfmf4tskiffcft65b70r4t71pdapmqq', '141.98.11.207', 1689517209, ''),
('1pmu7sr8t2ij6868dtkro338tavu0862', '43.241.146.244', 1689323407, ''),
('1pqo33gjoc9ohgg2g1vde4uncfu8c5rn', '149.18.84.41', 1689614497, ''),
('1rrcvtvt7lc9f1lgnim6jl1ensih9on7', '143.110.222.166', 1689455315, ''),
('1rsstdeg3gtv9ufurmttaccikcidi3bn', '59.178.64.216', 1690467615, ''),
('1segcugnlau2teb6g5tt7jj664cdda73', '31.220.1.83', 1689599178, ''),
('1slbas04ubcjc0bqk6fsgmdokecbmp2o', '43.252.18.151', 1689702678, ''),
('1t4hocfdi0m20b040qrduek1o9q7mrue', '146.255.247.38', 1690389970, ''),
('1tv61oupipet8pi41m55dqunagqc8bjl', '51.79.19.53', 1689515607, ''),
('2093e9d8i4g8lfs8nik0o2job55olh1c', '54.37.79.75', 1690037335, ''),
('217s9gl220b130ik1ov1acj00h60gi34', '141.98.11.207', 1689250769, ''),
('21n1dfjo9to1fhsjlhtuikf43sa6ra8m', '141.98.11.207', 1689947769, ''),
('21p3349k4nkck2dkclkg7he8456kg46o', '43.241.146.195', 1689608461, ''),
('2239jqstcp3evhtc5st231vmjnubm433', '51.79.29.48', 1690590689, ''),
('22527sordic2cqhs81knpc7oesm6i9u3', '34.78.249.41', 1689332439, ''),
('23899tp1i4v9krict778kdbs8vppe1uq', '184.105.247.194', 1690190679, ''),
('245456hsim3qtd4acp6p4ok2d85s8q9a', '20.55.53.144', 1689732358, ''),
('273i655offupf3la34tr8rds25hmri4p', '128.14.226.202', 1689270012, ''),
('27qnmlho8u861bh7d3ui6f4ikcdp0ou5', '54.37.79.75', 1690841613, ''),
('28khj06l0ovjvhhtf5are37nsuei61mp', '3.80.31.127', 1689358332, ''),
('292lniib2ufjp8h92uu60h664hhv4bks', '31.7.60.114', 1690266172, ''),
('2a2ln65qvd9upu7gamvt6lrheeosu5k6', '54.37.79.75', 1690832938, ''),
('2a2q9vps0kei091b9bmr2hocrm16u4fe', '154.209.125.78', 1689224866, ''),
('2b6alospv4ak7337nfhi16q0nk80854p', '152.32.175.174', 1689930350, ''),
('2bhgnod67dmeuqmn2h0h37uqre0s593r', '143.110.222.166', 1690063931, ''),
('2bkgqdkpb9euei4g4ldr55tc4cbhgadd', '62.33.36.99', 1690850928, ''),
('2dlgdt5k72htnhv8v66lddlji107rkmn', '64.62.197.206', 1690078721, ''),
('2dtd2gm9mho4nvielvi1d6dmfkgbul3n', '159.223.63.21', 1690155820, ''),
('2evsul069ei4cbkh064p85ae1s23kvfn', '159.223.55.198', 1690235461, ''),
('2f8ar5uh6uogaem04rj41ig6jq0qj9eb', '20.111.62.30', 1690300010, ''),
('2fa6alh884qnh4vbu7789r33005f8905', '94.102.61.10', 1690147945, ''),
('2fbeljp6uu6sct9fd9if8s4g4tchupqd', '51.79.29.48', 1689717546, ''),
('2hef3ugiaea2oarvqph979sjo6g026vd', '143.110.222.166', 1690496733, ''),
('2i8ktjh52g3up4bu2qhd3ippakhtdr2h', '143.110.222.166', 1689980305, ''),
('2iakc7sh7hc2h31rg4v6vobgshajsqe3', '162.216.150.129', 1689557920, ''),
('2j03srjlhlqhebitem2bl5au8067pk4k', '54.37.79.75', 1690382502, ''),
('2lsagupd57pbaknl2miiq86puqslsh9t', '69.162.243.124', 1690347496, ''),
('2n89u6hafg6gcrbqp4cva8mrhincpue9', '54.37.79.75', 1689510082, ''),
('2n9fb5jnap13kqa5tl11j134nes0b0g6', '117.242.255.146', 1689749240, ''),
('2p8h65rm6077naipm61f19elb4phi0eu', '51.79.29.48', 1690143676, ''),
('2pdl1dcueuch5e5a0mi65mfa82e72s3p', '54.37.79.75', 1690312829, ''),
('2psehik3r6ncklsh44q03mk1auvj7v8e', '159.223.55.198', 1690524790, ''),
('2qbs0gmfoaicqhcdlqot6qbl9e6vv7ua', '54.37.79.75', 1690052157, ''),
('2rjb3go8iibpgnk4tuac9j8ok03evhje', '143.110.222.166', 1689862733, ''),
('2rnell8aqb0u07lndiqgfurg1r8quad7', '192.241.237.44', 1689597727, ''),
('2rpg5lgfrt8v7lbq6kepun024h3mtot1', '143.110.222.166', 1690275694, ''),
('2s691joaia1vek86mergqgechbsfolp2', '162.142.125.223', 1689584916, ''),
('2siva7gt9vv8offk3rv5cli92uuqpdb5', '141.98.11.207', 1690057972, ''),
('2t00nmkehiust79bd7qbej0pr9ob1uf6', '45.83.64.117', 1689462724, ''),
('2tar6mnc0r05l3iu84ev2vdsqtt8usvn', '161.35.190.246', 1690564717, ''),
('2tc313pol1l16550k5l92rj526aeu36s', '143.110.222.166', 1690693531, ''),
('2tch6m3h7555akihr4s47oo04v44849i', '141.98.11.207', 1689567362, ''),
('2timoqeu06jhn9vtkkcm7hcbc4eis7br', '92.118.39.40', 1690666317, ''),
('2tjkptcenge4r1683gsf56u1pp8pr26v', '191.101.174.82', 1690464833, ''),
('2usgk4888803t1cqidboghdl558vf2bl', '51.79.29.48', 1689619517, ''),
('2v06qfn4s7162bapnjch91inkdvs9jlh', '178.79.130.30', 1689318160, ''),
('2vbh9grqn9qpb5vdj5sa5acsoft4m7rn', '69.164.217.74', 1690620510, ''),
('2vbp8mnnbctbvdlfujn4oe0c38cb356r', '20.234.37.63', 1690295743, ''),
('2vmlo5viklcmkn6hgjemgd8o4ume9ehr', '54.37.79.75', 1690684958, ''),
('2vn6olusv6u60fj838o1asmhqi5rlcec', '143.244.50.173', 1690385021, ''),
('2vtdruhr55f14v84mvejo5afqi0kkee9', '143.110.222.166', 1689462595, ''),
('32c3dbq615ujg713e2mphn7iauehdvkp', '143.110.222.166', 1689851075, ''),
('32gj3ii3jel01acen8apg492jq8r97nc', '118.126.124.10', 1689454623, ''),
('32s2c2ugt474fm3oek1bhpfpd61j2p27', '20.111.40.106', 1690344775, ''),
('333dr5ibjha1tk1q9qdk9rjtu9j8ldhl', '92.118.39.40', 1689712761, ''),
('33fus41seg28tauedgoff5i6c3feu5d6', '162.216.150.247', 1689257351, ''),
('33n2mbu15jlushgh6qmm7vcv8oe1bovq', '45.156.128.12', 1690909508, ''),
('33p0po3875nbh8e41467ov561259c57t', '143.110.222.166', 1690020743, ''),
('33thdca4558rprkfhgb7vum0fjqi65k2', '92.118.39.40', 1690755489, ''),
('34i612s8ctf2211r33rc71t5gd58rbop', '43.241.146.244', 1689323151, ''),
('34l6evsnp1m5l60hvkionhia6rvuumhv', '43.231.233.219', 1690121605, ''),
('352l0mf893v3l3t4jkr5pfnquqi5n8fj', '186.113.253.174', 1689461739, ''),
('35ar5gv2b13bafsk1u0e2e81reuo1h6v', '54.37.79.75', 1690815157, ''),
('35foddafg0fo8clkvmbuk65e8q7pnb37', '167.172.89.248', 1689725293, ''),
('37jqmid2mo9cf5kbg14t18mav3n5pngh', '202.73.34.226', 1690529076, ''),
('388i7shn6ch78mbfvo4h7spsq561udai', '143.110.222.166', 1689193100, ''),
('38i7rrq55p690n3fpk0dh96192ndtlor', '139.59.212.107', 1690075237, ''),
('38ktoshemkd3gcabrtgj1uabq352foer', '143.110.222.166', 1689379916, ''),
('38svpctcdv4jap3mgb457mljoej8k5o6', '154.209.125.124', 1690749681, ''),
('39a17vrc8l29i14ui35pd2f3rpgkdkhs', '54.37.79.75', 1690050560, ''),
('3b5t1ecg9ljst63rebm7p3bc02oote97', '85.239.33.6', 1690367455, ''),
('3bt33egc4rtsc32mm3j7guoka2g11c99', '187.102.220.30', 1690249128, ''),
('3cvp7968ukrvem2e64frf16ceu12rgt2', '170.64.179.243', 1690567229, ''),
('3dhvgngtk5ec0gjp7avbhrrhahhduf8h', '51.79.29.48', 1690118271, ''),
('3edkp39gotr7scf37891gf927tero3sl', '144.126.233.92', 1690178501, ''),
('3eg5dki12lfosbnhvfv1boq4522j19qa', '51.79.29.48', 1690794017, ''),
('3eh7f1qe0pjb32lapadunn2q1smrk914', '83.97.73.87', 1690635753, ''),
('3ek7t7u3cs9dgbqjavc2aakc4al59ajo', '143.110.222.166', 1689519472, ''),
('3fhh4gh1b1a7vu04flgql86nnhep27af', '54.37.79.75', 1689527821, ''),
('3fhh85lh9t3bakpvp94nln7njimkb4pq', '192.241.230.53', 1689212500, ''),
('3fqsg5r0qiv3vcctca3mqj402j02q2m1', '45.156.128.32', 1690637489, ''),
('3g2mito8277bcgmuta1ac23c0aus4j36', '191.101.174.80', 1690464881, ''),
('3h8igcsnng5o125aurbb1m9qaqhkspds', '164.92.117.229', 1689719580, ''),
('3hegdvp4eip6u7ip8me6676th27s9u1u', '52.162.218.19', 1690791247, ''),
('3icucat96o8kk3bhr08k8avdn2ru8lc6', '66.240.236.116', 1690234374, ''),
('3k1slnju7ul9qhuot5f4q1t68dl38rmi', '143.110.222.166', 1689243423, ''),
('3kf93bhe8jusbfvm90r86joocmo1q3om', '31.7.60.114', 1689823858, ''),
('3kk4fu3fket3tqbhjcg6siol2s11cup2', '143.110.222.166', 1689308595, ''),
('3llbq7220tl7hlouoc7apkst332mnrp5', '51.79.29.48', 1689785722, ''),
('3mr04pmf7h44ckius1chuupsmh8mgslb', '54.37.79.75', 1690395953, ''),
('3ockvlc6caahn7qtqhjasm0jmavq9911', '154.209.125.124', 1690884345, ''),
('3omqijev4btk6q0cri2vgkp7f22brar2', '54.37.79.75', 1690677311, ''),
('3p9175gpqaej51l8bvjmro2a7q1ofloc', '213.109.202.66', 1689838812, ''),
('3phejrvfmsp59ncpkjiq15u649cns9jk', '143.110.222.166', 1689974331, ''),
('3pimfmbcg7r84qssk31fmq04mddk650r', '59.182.2.210', 1689331805, ''),
('3q3akla7quvmjc24t6ua63un997v9mj3', '143.110.222.166', 1690650943, ''),
('3q66sen96enea5us7otv6bgdg2au7s91', '52.141.92.47', 1690352724, ''),
('3qm85vnlofkcuf9be6qldlc2hkgkidqs', '143.110.222.166', 1689742715, ''),
('3qofta4nhet4to9vv6dm3219q19473r5', '83.97.73.87', 1690759694, ''),
('3r06li9drohpbnl9hc4m84mc49pdnkj2', '143.110.222.166', 1690243692, ''),
('3rko409cv58u6db01ub0664lnjj60vhu', '2.57.122.233', 1690873051, ''),
('3roq2o4htoi4h299m7ignm6uvp1o9uch', '45.148.120.113', 1689784984, ''),
('3sulam2qjqthtmt2295klj44391l6vfu', '66.240.192.82', 1689220416, ''),
('3t9hgd3fbf3ki3qlj4iiu06jpd82dvjh', '143.110.222.166', 1690896308, ''),
('3tiq595dgdachiueloaagl6c7q72knn7', '143.110.222.166', 1689213429, ''),
('3tk83ufeelg8cp3trd8phuslrun7bdk7', '174.138.61.44', 1690614991, ''),
('3u5lniqs0qo4t445rgng9l8s8o46ffgc', '143.110.222.166', 1689264036, ''),
('3uhobnfmvj5i5crhvskpvd7uhkug22ca', '69.162.243.124', 1689293013, ''),
('3ujd4eccv6kt2co66vcoebfholeb6jh7', '143.110.222.166', 1689977608, ''),
('40nmdpipvlr4circnnbf6tqbb9om3bto', '118.126.124.10', 1689709465, ''),
('41t7755fqks1aeshvb05koje6qgtai28', '194.50.14.224', 1690765767, ''),
('43p3ntk6vhc9640t11a86n9tom4caq8f', '143.110.222.166', 1689606334, ''),
('451tunqhbqglal030v7ef122fhkhe8fq', '51.79.29.48', 1690243124, ''),
('45peg29gclt1iubgbj6e6c249p54jhu6', '54.37.79.75', 1690834677, ''),
('45tfm38aeujkqn0hgahu3ogvs8ss7fcj', '146.190.38.179', 1690182891, ''),
('467eloobav8i5mpn598etmmqmeagaii1', '213.109.202.66', 1690517928, ''),
('46t469l93pd4au1qscbeibmjn695ko0e', '143.110.222.166', 1689923373, ''),
('47sbsiqpo16evr84sq1mmnh5n9qmeo28', '31.7.60.114', 1689794036, ''),
('48ucqo5bk6otrlc3afqjms9sermvphi1', '143.110.222.166', 1690718790, ''),
('490mk7qkq60pksi4qeqi61brls4m2pbe', '151.106.34.161', 1690389595, ''),
('49h5tfbchoj822epmd02gnp2fm8odq3k', '51.79.29.48', 1690337243, ''),
('4a15k524n6tjio7pmd7bdmq0uiju2a7p', '185.233.19.162', 1690530328, ''),
('4autvr9usdohf20rihd1vhdmnl26vmej', '20.234.37.63', 1690690853, ''),
('4be0ug04fg4e4r732ricc6eea6q6bt2v', '51.79.29.48', 1689571748, ''),
('4bvbm1hd08aou8p968kg1a04degga9eu', '54.37.79.75', 1689490364, ''),
('4diaq34mlie2g25c880g9g466hofnb6h', '92.118.39.40', 1689768554, ''),
('4dsp8si9qm7titcrvovkl1858b4qt2fl', '143.110.222.166', 1690802272, ''),
('4eburrj3e0e7dmbmmoo98eq3rhimsfp7', '31.220.1.83', 1690024887, ''),
('4f7d7emmc15pc2f1mrlv7gur6ndis9kf', '54.198.231.209', 1689340333, ''),
('4gmi7j1reqrsua1hnla1f0bqocl9tlae', '2.57.122.233', 1690427804, ''),
('4hnkpfu7jfp9hu1bkk2t7odhk332s464', '167.248.133.34', 1689422391, ''),
('4i6fuq7d8dvhssi78kr07nv2p3hhqiff', '184.105.139.70', 1689489645, ''),
('4i6j3afsakh43m1ec26u53i6nd1d8g9p', '51.79.29.48', 1689622167, ''),
('4ibv8iiti43oibd9hggj888d3pjam5kl', '167.99.13.19', 1689469191, ''),
('4ju02fvrs1vs790sjeeq6ec3htam1ql2', '143.110.222.166', 1690315910, ''),
('4lo841l9deq960il4cs9634rji36j8k3', '185.233.19.84', 1689328396, ''),
('4m7l1e36eqedelb92f61a30us2pqo6pd', '143.110.222.166', 1690272967, ''),
('4n4l0rnj4vdvqv1g8sloo2ig26qnn20i', '20.117.181.251', 1690453181, ''),
('4o11ra6mo2kf32fpoa5a1t5rfj90kllj', '143.110.222.166', 1689269016, ''),
('4oiom3hf9jul8go390n2g4e4bovsmpca', '54.37.79.75', 1689510872, ''),
('4onp46v4gegssh2cgbbm8f6oekrr6g75', '51.79.29.48', 1690125135, ''),
('4ovgvfsj6d706m7eikhbbu9s73b50vg1', '143.110.222.166', 1689815394, ''),
('4p1niveig2i91sjitd4srg3e623g6r09', '52.159.85.240', 1689444286, ''),
('4p9s5pap0e7bcnn8dveilant52gbkm40', '45.43.33.218', 1689323750, ''),
('4reds023jsh9jd7dfvr1u005fgqhff25', '192.241.237.37', 1689291938, ''),
('4remob66at3mdeaehq5s1rotlnkgpalg', '141.98.11.207', 1689278935, ''),
('4rkg9ir59hgl6klhc6l912ttvam2h3rm', '143.110.222.166', 1689707692, ''),
('4rphoqgllcbfemrfghn3d9mgrb1jk8ov', '172.104.11.34', 1689942995, ''),
('4rtrauon7ri9klq1o49h0f0g3usnas72', '143.110.222.166', 1690567384, ''),
('4soc42t4jkd2siibcu297qd9tsf4rf1v', '185.142.236.40', 1690802049, ''),
('4t7b7e4lcv3qebmuh2mnmlpoud3r7fg5', '143.110.222.166', 1690668275, ''),
('4u001edguvb9llrlb23lbggo7sqm2qf2', '51.79.29.48', 1689439008, ''),
('4u0usra1ppide7rjj4eaki028di31qp1', '143.110.222.166', 1690614792, ''),
('4veh6rkn0e2tob9davnidm0l7nkp3udr', '186.152.173.74', 1690434107, ''),
('4vv4ll9p1smdo87n0h2u5tdqcvsevcf2', '51.79.29.48', 1689582101, ''),
('504or5sj96vn62k860vlbrtsmsodfsoo', '143.110.222.166', 1690124903, ''),
('509iq5jjruim5ruapvumfb7hku7m0fdv', '143.110.222.166', 1690199842, ''),
('50nllepe4i6ii8d845id6r0rjrqhoq7k', '51.79.29.48', 1690758503, ''),
('50s9ktd8tbu8co7fh1ondjvhdorf0a77', '143.110.222.166', 1690534841, ''),
('513voflt5fc69c604n66pcfqul0lcnms', '185.180.143.48', 1690630180, ''),
('51jk1gk8r6nnv5qkhn564o8nuvt30sn5', '20.111.62.30', 1690337307, ''),
('5272n978bvi4v003q8kvl85clbs4t5rm', '185.180.143.137', 1690490586, ''),
('533bp16j49373k02jqi5df8g6naurt1j', '92.118.39.40', 1689812781, ''),
('53lkejcksmtbq55epquomml91qtml4s6', '103.110.33.235', 1690666605, ''),
('5494m07asfr8511jghrsb4onjqfrtrid', '51.79.29.48', 1689275837, ''),
('54dvl71vm0c11aor090mvoi2q129o9lj', '54.37.79.75', 1689539705, ''),
('54rtkh0rrm6nsq5cu8at3d31r9llh4cs', '51.79.29.48', 1689599546, ''),
('54t6kiienquv8lf0bbq2o6hft45qpra5', '65.49.1.28', 1690364770, ''),
('55ua2p001sgqegb435un4gtu0h7dc6n3', '176.100.43.132', 1689967582, ''),
('58fkfjdoljrblfgcrk4qbltllpf5tf69', '143.110.222.166', 1689714757, ''),
('5ac7l0k5h8jgfml79atn0b7mf88t0i01', '83.97.73.87', 1690748580, ''),
('5ankgp8mh7d2s1icolsmo1vcf1ho6rv5', '168.90.163.39', 1690043007, ''),
('5c4laeptlk37u9d28tp4kh0ajq6klu55', '143.110.222.166', 1690322494, ''),
('5ce7rnv96e7r2593857njgkhd74qvu89', '164.92.232.89', 1690217759, ''),
('5cr8l3drirk00d24grlsohvc16k8o4re', '51.79.29.48', 1689694870, ''),
('5d7a1gg2pkkrceekqkf8cggb8mb52oa4', '141.98.11.207', 1689816771, ''),
('5diabq1bf128pcdgsqovcao8fdoukv30', '143.110.222.166', 1690402172, ''),
('5dl34pmhnsi4tusmf9miolo4vgd44h6v', '87.120.88.141', 1690314752, ''),
('5dlldb4k79eo72itn87jbob4sadtoblj', '20.117.181.251', 1690453182, ''),
('5dlmnte9eg4jd2j4arbbuuh4a9iv16cn', '51.79.29.48', 1690654566, ''),
('5dv4upvrbqlln5rbrb1cvskpsm2gidi1', '122.185.216.14', 1689595862, ''),
('5f7arpvbf4vsc6h1nvmd9bcm5rp40vgu', '162.142.125.226', 1690538705, ''),
('5flbej63om4tdtcpi135j3ak0gek803e', '92.118.39.40', 1690138218, ''),
('5hobfa4het3og56c42qp7lhp5lo5m2k8', '51.79.29.48', 1690361359, ''),
('5i2gscpqsf83avskab70074qunt20m94', '143.110.222.166', 1690582015, ''),
('5ivuelpp8o6v9a2aadvidqobg5dfi8hi', '143.110.222.166', 1689631169, ''),
('5jlp12b42fqggsb6judjv99gjmq22npm', '176.104.104.194', 1689881443, ''),
('5ki6ctkfu1s6irasb82rehe776nhkl58', '143.110.222.166', 1689873372, ''),
('5lo5cc60esueo8o19iv6h6ja7pth9bub', '43.241.146.244', 1689321629, ''),
('5mbtijiencnracns1hqhruscbad98832', '143.110.222.166', 1689491465, ''),
('5p2eo9u1p9m1kkb5tmvoeel3dvb1jk8n', '64.62.197.113', 1690700539, ''),
('5p7quqbj1nuc9559v44cuik5g9s5buct', '43.241.146.244', 1689258457, ''),
('5petdkv6529r2qva90nbqrqcn83qn779', '143.110.222.166', 1690268300, ''),
('5pib7g4a83f995abvl7s88e9abttgpjp', '143.110.222.166', 1689854375, ''),
('5q6nte6097jgma1q40nnt6e8f3g2rqal', '143.110.222.166', 1690196489, ''),
('5r310msd7g0n2gnikrvmf7djbh7jcp62', '59.98.155.148', 1689561426, ''),
('5r9svmcjmhse5ghe8rfq1hfboa2v6me1', '213.109.202.66', 1690252892, ''),
('5rtopgv5f8o56788r6km20ksub21pnim', '159.223.55.198', 1690423719, ''),
('5sfjeoniv34c43vkcmlbam04dv8ek06o', '51.79.29.48', 1689561421, ''),
('5sgp0u5k6orragfhh9bbt50rv70g120a', '51.79.29.48', 1690577727, ''),
('5t4s7b9ad2sjrvtq430h0kliajhope5d', '45.148.120.113', 1689784986, ''),
('5vf578077hoe1logp2el7sf3j0cm6kon', '34.76.96.55', 1690832473, ''),
('6245ku0map53tqnonp2jf69ekcm0o495', '34.77.127.183', 1689247211, ''),
('63jilg4in4p6h0f64mn0p5q5bndvqq32', '185.180.143.13', 1689630218, ''),
('6461id9l42gr946nc5tup13k06j0qjfd', '172.176.215.130', 1690106129, ''),
('64d77p18t4lo37miaroj984jvskpk37c', '162.216.150.3', 1690464119, ''),
('64gu5bb3cq8eebvf9iq8587ipflspbmf', '143.110.222.166', 1690870318, ''),
('64h7j6r6cchpjf5qqn54tli7r59etaov', '54.37.79.75', 1689413265, ''),
('64li91htik1t1e6niiklj2jj8r1bg9mh', '213.5.130.61', 1690720948, ''),
('64mnlckuev4kb95k486gmm7mn73h1jel', '142.93.111.36', 1689252642, ''),
('65vjr9si3dupsleigc2698lo0l5otmk4', '54.37.79.75', 1690823436, ''),
('663bk4bd7f7ja0v6b0mbc4pf7f6ler24', '143.110.222.166', 1689930189, ''),
('66u5pko3id9j62bddo8ohe0upgpcr6ih', '213.109.202.66', 1690529066, ''),
('67blats9ouj98ftkc1hk10466p3f0nvi', '83.97.73.87', 1690879087, ''),
('67ch578oa401a8mltdb5t5emdu3q8bce', '20.111.40.106', 1690642022, ''),
('690vdqqdb0msifgm6pmbj1dtl15u3u75', '64.227.134.107', 1689834308, ''),
('69i4657eb09soscgl87m278uqrkrdg0o', '15.206.235.52', 1689229879, ''),
('69lgdpcnl3r8u3sij5ffa459tv3lu6jq', '141.98.11.207', 1689394683, ''),
('69rhgt3djdkpjdf1niqjc5du30kht8t1', '143.110.222.166', 1689833687, ''),
('6be5lne629ngcgnp9refa2b1s29fo46v', '167.94.138.126', 1690846088, ''),
('6biskb6udvdsr1uppvi1e2vtbtsrre35', '43.241.146.244', 1689323238, ''),
('6e4t7v8b4r3rv9h1ajev7h86n9mdkp5b', '76.109.21.120', 1689497742, ''),
('6edtfpf3t4pvec5to2htak6g4l9sgl06', '143.110.222.166', 1690819664, ''),
('6eeqh26s49nbo1qqtje2gkt26ajtv677', '167.94.145.55', 1690562721, ''),
('6eif9f1po3m6oqi7ikrcc9hqqlvhei5d', '105.224.41.212', 1690462984, ''),
('6inv012h05kebi7r2ccfa7cggjrc7ers', '51.79.29.48', 1689352795, ''),
('6jfcdcie0rjha9l8i9uadbufchhf9eot', '143.110.222.166', 1689844645, ''),
('6jm686o3tll747qchon0i5j18nknd58j', '141.98.11.207', 1690316140, ''),
('6jodolln8rj50eb7fgp1l7ooid1b08gs', '51.79.29.48', 1690348904, ''),
('6jr3d82mu9nn0b8n3slgbhql8uel6qad', '143.110.222.166', 1690791806, ''),
('6k517hncfh8r1oggs3upbgi60ofpl4ak', '143.110.222.166', 1690253874, ''),
('6knvc17iuqsadvunjit6u7f122ese1n8', '35.178.213.137', 1689300146, ''),
('6l4caglngh6ec6cinn3i4ddmgnh3a8l9', '51.79.29.48', 1689888483, ''),
('6o7hms2mjan360ekame505vl7c65bsu1', '54.37.79.75', 1690064931, ''),
('6oft0ec14f8av2e4rsoc4l205003k4ce', '52.141.92.47', 1689663622, ''),
('6oivtkeftse66jtam5h32glqf6n9jugo', '51.79.29.48', 1690370031, ''),
('6op12ergmftqja2c5baaa39gdb9o9nq6', '167.94.146.57', 1690271012, ''),
('6oturkcs9eab92go04meuse322uma2ou', '118.126.124.10', 1689972097, ''),
('6q8a7qk5s5i8m155mq2t50nnnnuo60sn', '167.99.79.103', 1690867057, ''),
('6qtjf6vov2p30m8qjt793jeoic2ud4pr', '51.79.29.48', 1690192601, ''),
('6rqgink6k5sdb5a3o9tof96uhh620kct', '54.37.79.75', 1689411337, ''),
('6sqen0dktb7661joe8h6ganmpvrhqq5r', '167.94.145.55', 1690562722, ''),
('6tnhvbcj328vt2vlctsd19r2i1hfdqri', '101.36.102.160', 1689653452, ''),
('6vkpchr12uks2iamil6s2t08si5dl3bs', '170.106.176.49', 1690499485, ''),
('6vu24e1i81qnsbesmn1pkqpilkdk2v6s', '45.155.126.211', 1690310036, ''),
('70sib7dn78nhikk1geni0sv2klij2cc5', '143.110.222.166', 1689811738, ''),
('70v8t43lvle5tm1m5kpkl1qm0m4op8je', '143.110.222.166', 1690798213, ''),
('71b1ap58qpq8flaq0bfsrn1jnihr9f1o', '143.110.222.166', 1689638719, ''),
('721eh2lcf09clmq8vj5rl0oppl2tp445', '192.155.90.118', 1689260526, ''),
('74b5sbt3e84j3ip2qea61ps4ickqb0lj', '195.170.172.128', 1689522091, ''),
('76mf3vhar2nov1tlk6bvtjn00d2ebmco', '107.170.226.47', 1689884432, ''),
('77cijav7fcf7a0ivg6at3tuc57uhctra', '141.98.11.207', 1690403905, ''),
('782b2u24dnb94dgmn8dseq0m2kl42o9v', '143.110.222.166', 1690474985, ''),
('7a609jlipu776rjpu4ohmu9ldvdn8c1e', '20.111.40.106', 1690502308, ''),
('7apoehm3qiqf7v8ea1u29lpbqg1mlv6a', '167.94.138.33', 1690491284, ''),
('7bnq2pkni48kppr20h98ugnnia981s76', '90.206.121.28', 1689545592, ''),
('7dankvjsclp1udgki5c33kcbmegl2ln3', '45.61.162.61', 1690606756, ''),
('7erajhnnqbik0ba1jbms2btkrjl1np9p', '43.241.146.244', 1689323299, ''),
('7f21uuo6pcj1u61hr46digr5tjn3qu5u', '167.248.133.34', 1689422390, ''),
('7fg34h6f7j0kq4k0cfo42ese40p0scdr', '51.79.29.48', 1690159088, ''),
('7g5ejnnbo9pjiqgu4hv39n02t45ri2ss', '167.94.138.126', 1689742432, ''),
('7i72e77l2vlpj5iija50hu7c44ef60om', '54.37.79.75', 1690715149, ''),
('7kembucaklgjelns9qc5829f2uc111di', '143.110.222.166', 1689909523, ''),
('7kh62j01so5co5kphmlf51ngaeioae2f', '34.145.246.146', 1689583144, ''),
('7l97mertsn3c2ii6ih04vjbkdlv4o12o', '103.110.33.235', 1689536867, ''),
('7mhe1ir3fd0h7qnfplfnc84f2bdbskrp', '143.110.222.166', 1690031778, ''),
('7mt9ibetsmflh9ic6k7krqa0gtsn8pgs', '45.133.193.41', 1689205653, ''),
('7n69bhkooj4f8hlpttgaq7kim7fnqhuj', '143.110.222.166', 1690013812, ''),
('7nesrfk8gh4khrmurcdr42a88gstpvmu', '54.37.79.75', 1690687373, ''),
('7nqvgnk1utcpjnv2hknsogcba063ngpq', '195.170.172.128', 1689522087, ''),
('7oo7op5thcp0h03uvn6t6emknip948kb', '170.64.171.157', 1690464666, ''),
('7pudoublc3u4co0ss7lrcqheiccs6tkv', '191.101.174.82', 1690464888, ''),
('7ql2lkj60jps6mr6tpdefo9e23t5iua3', '162.216.149.25', 1689815166, ''),
('7rh1c5fbjiprqjk1j5l6nrhsljhu36p7', '185.180.143.50', 1689713812, ''),
('7rncjq4d6lan9g3ar7srnemni5ipp93b', '103.69.219.250', 1689657958, ''),
('7sgumvf3c8b0sp1i0dr5e7cak3pel3h6', '170.64.169.22', 1690033267, ''),
('7skkqclnhmj1ccqq2cjooglakl4ltiih', '143.110.222.166', 1690574208, ''),
('7tia9dnkvmk2a891qt5i1ua353d9opbu', '143.110.222.166', 1689546060, ''),
('7tkb2ps8hd3s6shk5a3ciug34fiqir15', '143.110.222.166', 1689333004, ''),
('7tl066mq66nv81a242m6eb2d4mivb05h', '92.118.39.40', 1690571259, ''),
('7u33b5cg1p6jltq0epgs2ch0d586grc6', '128.14.134.170', 1690575757, ''),
('7ukmca4nkfulh0sn9395ps1t0oh5sbj3', '143.110.222.166', 1690142535, ''),
('7uou6grs016io9h9jm1p79rectjuhiav', '92.118.39.40', 1690311951, ''),
('8095eqjk4q2pb64u72s9c380gdnpa5t2', '51.79.29.48', 1690800026, ''),
('81hcvk3qbegd1qdcdt932pnjptbbhqcl', '143.110.222.166', 1690232246, ''),
('81kpb0572cfe8gg0agcs53ie291356no', '213.109.202.66', 1689531382, ''),
('832rn4alsjd9hf877e6aevbbpj1h1nfb', '103.171.189.46', 1689613865, ''),
('83sc0f8hh78k7pamola1v0chaeapqen5', '51.79.29.48', 1690557433, ''),
('84lq1cb10uc19k3dg20hbt8numh38kmo', '143.110.222.166', 1689603455, ''),
('88262cbdmg473ibqffacomngff8m1cju', '143.110.222.166', 1690907414, ''),
('88cd2bc1kec3br4cjh0med7qkir3v17i', '143.110.222.166', 1689825762, ''),
('89di5vcfbq6grslfbr1c3tr83ac3pkhc', '143.110.222.166', 1690578075, ''),
('8aafd88jalr28gf2gf0jqr9f4i09fpg3', '43.241.146.244', 1689323232, ''),
('8bdp1an8c47r0k3gk9ej9go7atfijcfg', '143.110.222.166', 1690074695, ''),
('8bkfej7918fegmjid8c9uimm1ogohls3', '176.107.23.166', 1689334655, ''),
('8btdc0tdur3f0bnla2t7et5l3l3c4k44', '20.208.136.64', 1689565462, ''),
('8d4ndipthe7bfithj4i7r4fq5r9q5m8s', '15.206.235.52', 1689179267, ''),
('8do0ctcdt2v30sfi49l5odg55qavm3a9', '195.181.37.161', 1689452669, ''),
('8egghviafs8mbg76jqhl7c7edst0f7dn', '146.19.215.41', 1689767680, ''),
('8f0adfqi11l0j8v7e1bfhuodo8d2k1a8', '143.110.222.166', 1689459548, ''),
('8gd7ppjok46cao26ci6potj6tvv6h86p', '54.37.79.75', 1690831044, ''),
('8gvpbrbhloru8kkkpq735445q40j6atj', '143.110.222.166', 1690622241, ''),
('8h8e0v3lhgp3hv23qu20sfcf0pfrop9m', '51.79.29.48', 1689253518, ''),
('8hchn6u3sklputjfk08k462e3hlr0pli', '143.110.222.166', 1689443793, ''),
('8i0rlb7cs2teqgjc2oqv23a9rk3fb0k3', '191.101.174.80', 1690464834, ''),
('8imnr8geves6p3kvg2qa7ehu93vndvv1', '154.209.125.124', 1690179541, ''),
('8j77b3i1l7j3gh24n7m2djlifin10vql', '66.240.236.109', 1690827233, ''),
('8lc65tcv8n3jfimk02ua8h52s4movpu5', '104.248.172.61', 1689729510, ''),
('8ldk88gg33ri8jdb803tb508vs6suaht', '143.110.222.166', 1690027510, ''),
('8loe5b35kdiboiln5pn10bj0j6ms5okt', '45.61.162.61', 1690717529, ''),
('8lt0did9ndt83rvp6gsduufll34ct81e', '143.110.222.166', 1690334143, ''),
('8mdn3oau1fnb70ojdjh442tp41ki8a7g', '143.110.222.166', 1689646065, ''),
('8me558klrrkbdkd1rjmk8pijrnhb34c7', '20.234.37.63', 1690366192, ''),
('8naplep32ngncf1tnk5ic50rqoojlcb2', '51.79.29.48', 1690911365, ''),
('8pno6n0vdkur25ma5iqtqk9vg0phbvit', '193.35.18.89', 1690872710, ''),
('8r9e6juugkua7if0a9sa0l4to2rspm9a', '143.110.222.166', 1689271460, ''),
('8rc08s8n1ded8eo90e9bsepvulie4mtk', '51.79.29.48', 1690183373, ''),
('8sihqgk2o8jcb3kb0gnp7ttavpq8jfdv', '117.210.223.103', 1689993187, ''),
('8sjfmv8na26flcca0o40is58n9lttk39', '143.110.222.166', 1689581158, ''),
('8slqfhv51ebktb0kerit9k2a3h7vuliq', '143.110.222.166', 1689660433, ''),
('8u5o7ao66j5noemf70a24bv3b5514dhm', '117.196.124.49', 1689849391, ''),
('8u6fl4qfd4449v2lheumk2j0duqevqte', '89.216.21.37', 1690842431, ''),
('8udl6kmrealotch95rg2uckl6308thq6', '143.110.222.166', 1689299962, ''),
('8uommr9q6s9kesdqs133b3m03pm01qfm', '54.37.79.75', 1690692940, ''),
('8vtnh6netn5vajsg99kp5i46ioummusp', '20.199.88.218', 1690507695, ''),
('90mbh51do8upv8kc43ugo1tj0sgj6vbn', '143.110.222.166', 1690654647, ''),
('90pjj5cgeuurdbt0jlagv8u1unqn25g2', '162.216.149.191', 1689414500, ''),
('90pklli92lr74l0c4h9jsof3mcr0vegn', '143.110.222.166', 1690367567, ''),
('90tv99eanegrp9rfi8p73fjb2c34poh0', '2.57.122.71', 1689431736, ''),
('9252gbu17o7vltop24c5sl80f78hs6qc', '91.224.92.16', 1689323453, ''),
('9391k3mnsvdifkv1g4ucfn6ibn334iap', '51.79.29.48', 1689278031, ''),
('93mp2j68bk1o4tsajuth623cfs5u4adt', '20.111.40.106', 1690349429, ''),
('94nni6gtn3miof0p5991pg587tuq85kt', '35.203.210.79', 1689318604, ''),
('94rr3vn7g4avp0778f6ad7lvouho7s2h', '94.102.61.10', 1689532156, ''),
('959tf1fj5ksese5s8v1va91485ltbsm1', '103.187.191.215', 1690536146, ''),
('9668lk22urab7qqi02uefc30pq973lqu', '54.37.79.75', 1690056257, ''),
('96mo0cgv9255vglct5e9242eec2nr54c', '143.110.222.166', 1690599988, ''),
('97h532vbc86qc5420vods9l2ms6dgj44', '143.110.222.166', 1690909471, ''),
('97lsojpmkjsp1d7j05322b2imfsjqpqj', '94.131.117.98', 1690746690, ''),
('98ps19lttn0r6lkvmlerkvgecdnvu7fe', '45.83.66.199', 1690450312, ''),
('99aip846hcfn58qd3v3b0bpp6ilp78n6', '143.110.222.166', 1690185493, ''),
('99cemf0058vgtn7sbbj8bu88d5us9uhm', '80.94.93.181', 1690597882, ''),
('99ia5dkrahg8a8v61vu8e525jo6bgpe8', '213.109.202.66', 1689542446, ''),
('9ammtiqju7kefl6l7o82q0k9pt0ag1pr', '141.98.11.60', 1690809964, ''),
('9aphu9jmifi3dv1j9snosji2nutjvso7', '61.147.15.65', 1689565509, ''),
('9atuhh1e5rulvqfh5uspkm84s7qfr1ep', '23.251.102.74', 1689358675, ''),
('9bl0hsn3qogebsothibnua9ovl80isma', '43.241.146.244', 1689323147, ''),
('9cekq7lr44jk7rqtsfu1sqbvf01286k3', '118.126.124.10', 1689709464, ''),
('9d99qpu0d0tvb3om8pr9mvmb2odafcag', '143.110.222.166', 1690848657, ''),
('9eqid3ndnfqa4rthgikdcpjh069flrfm', '103.110.33.235', 1690483417, ''),
('9f8p4mfh3tp0im1llv874r9goap128co', '143.110.222.166', 1689408703, ''),
('9fbhd295l8the2l5dnn5hd8b5j8ard45', '103.228.74.173', 1690429271, ''),
('9g8grs5l26it8hqkkabsnstfkgv08jcl', '51.79.29.48', 1690802873, ''),
('9gbdnjvshu39ghhbduoa7lql03dg2hrv', '143.110.222.166', 1689721164, ''),
('9h35g3rkpleljtfpkf2sju597ir064h3', '51.79.29.48', 1689328393, ''),
('9hcha7ces6l4p10hpm5k5l19l5jp4q5k', '143.110.222.166', 1689364691, ''),
('9i8gktcqvd0dhp0tk6l45g34gfa6gogd', '188.136.171.212', 1690798001, ''),
('9ivdqj184u4dfsb6gvg1ud1h29jfdour', '54.37.79.75', 1689531004, ''),
('9kqi7v8u570eeea6pbdh1jt5ra7hbtu2', '143.110.222.166', 1690009824, ''),
('9lkfb8buhcgftnf35bgg6cqbb8v6np7i', '162.216.150.83', 1689677259, ''),
('9lqpckioigsdarbvd8u2tf6lq989pt94', '34.159.133.163', 1690792740, ''),
('9m9ru20g23kvgv7semscrelgf881oed2', '43.241.146.244', 1689324351, 0x61646d696e5f64657461696c737c4f3a383a22737464436c617373223a31373a7b733a383a2261646d696e5f6964223b733a313a2232223b733a343a226e616d65223b733a333a224a4149223b733a383a22656d61696c5f6964223b733a303a22223b733a31303a226c6f67696e5f6e616d65223b733a333a226a6169223b733a31343a226c6f67696e5f70617373776f7264223b733a32343a22437669496d68666839706a573868416f343541786e513d3d223b733a31323a227478745f70617373776f7264223b733a363a22393837363534223b733a31353a2270726f66696c655f70696374757265223b4e3b733a393a22666f72676f745f6964223b733a303a22223b733a31303a22756e697175655f6b6579223b733a31323a22333933383337333633353334223b733a31333a226d6f6469666965645f64617465223b733a31393a22323032332d30372d31342030383a30313a3435223b733a383a2269735f61646d696e223b733a313a2230223b733a393a226d6f62696c655f6e6f223b733a303a22223b733a393a22757365725f73616c74223b733a33323a223363626132303933373066633636653532376538373231343661666365633063223b733a373a22757365725f6976223b733a33323a223762316662343431613432663564316236363361643639353632336164333163223b733a363a22737461747573223b733a313a2231223b733a373a22726f6c655f6964223b733a313a2232223b733a363a22635f64617465223b733a31393a22323032332d30372d31342030383a30313a3435223b7d70616765737c733a3731333a225b7b22706167655f6964223a2233222c22706167655f6e616d65223a224163636f756e74204d6173746572222c22706167655f75726c223a226163636f756e74222c226d645f69636f6e223a227573657273222c22616374696f6e5f6e616d65223a226163636f756e74222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2232222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2234222c22706167655f6e616d65223a225472616e73616374696f6e222c22706167655f75726c223a227472616e73616374696f6e222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227472616e73616374696f6e222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2232222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2235222c22706167655f6e616d65223a225061727479204c6564676572222c22706167655f75726c223a227472616e73616374696f6e5c2f7265706f7274222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227265706f7274222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2232222c227375625f70616765223a5b5d7d5d223b73657373696f6e5f6b65797c733a33323a22396d39727532306732336b7667763773656d736372656c67663838316f656432223b),
('9mhkc3l04v8sueft72m1410lbogolcvd', '184.105.139.67', 1690510708, ''),
('9mnl4371l5040hgcei20u846hej8c8no', '45.136.153.217', 1690441913, ''),
('9njpcgadmf1mjrs7mtt11ej1hlfachl6', '51.79.29.48', 1690565219, ''),
('9nkgtjdkh9vm4t5c525hrnnfjpj00ht1', '159.223.63.11', 1690178177, ''),
('9ntqivsqjcg6uopp3h6hb88re58t7rhg', '54.37.79.75', 1689407465, ''),
('9o7ltro7ofhiesf25fp5ifumshch1e4b', '143.110.222.166', 1689339769, ''),
('9qk0nduc9jvdb35uc04rsvbtn66jrbk4', '143.110.222.166', 1690631913, ''),
('9qtp209ugb82asi66ls0h39gnkimqi72', '143.110.222.166', 1690167758, ''),
('9rq07o97jpn7k5vqravc2scvse64nt32', '45.128.232.83', 1690821887, ''),
('9rqlhja1nt0khjnhgvoa2ej6k29tvilb', '174.138.61.44', 1689934646, ''),
('9s10phq4i5sbr1q1kk8lh78thk9o7ojd', '141.98.11.207', 1689362239, ''),
('9sdb7gbfoq7isf75qt7ag8oa5b00bgom', '143.110.222.166', 1689595359, ''),
('9t9ecshept1j2jr011slttq0l51484ri', '143.110.222.166', 1690480715, ''),
('9tis9n02ahrabnrnsqdsrjugv691fvil', '54.37.79.75', 1690472045, ''),
('9v4q33a57mmitk2gdl14lv3r6qpktoqh', '54.37.79.75', 1690330308, ''),
('9vmnf76bll88lnei548h1vs08e3vbrqc', '51.79.29.48', 1689366691, ''),
('9vudedclt7u2rmhd0go383ca2jon3vsb', '74.201.28.62', 1689965892, ''),
('a02drpp55h54i6s6qhp5iamaa9v5pe4l', '118.126.124.10', 1689891352, ''),
('a1lhr5e4p682phetfejedpgag3jjut1n', '92.118.39.40', 1689943072, ''),
('a1n4ovof9309b3rdgntv48p4bb7m9ujt', '1.202.112.221', 1689937529, ''),
('a2ud9fksigu3oqcl29b7d8g1fv4upali', '45.128.232.65', 1690674679, ''),
('a392a5ho0jl57rnhm7bcf9p83ntkdbuc', '143.110.222.166', 1689465925, ''),
('a3m0jgtb692jruu173uolaju4cnktle8', '128.1.248.42', 1689653820, ''),
('a3mpr0m5s5glc9anq24m19gvp7c8s9gc', '143.110.222.166', 1690363047, ''),
('a3rolttofo1pj6dhns6ohq497pabtgdq', '159.223.55.198', 1690309047, ''),
('a41k5bjifa1sja1f4shnhbvn2el69g3d', '143.110.222.166', 1690438586, ''),
('a6dns03qua2prb4m0l9dbisf9jd6qs28', '61.147.15.67', 1689565444, ''),
('a6neee2ch6a9g6b3avl558kri82s38dh', '51.79.29.48', 1689350467, ''),
('a7lsqhh5q2m3mgbmjh06t601lptlicmt', '54.37.79.75', 1690046051, ''),
('a8118p5uc9m6idb3nmog01s05mpkglhf', '58.211.23.183', 1689566227, ''),
('a86mm4904i5p019237antsj096vqcm4m', '128.14.209.162', 1689986738, ''),
('a86sk94r0s3i36hahgdq96g7r35af5vd', '91.224.92.16', 1689251854, ''),
('a8cvmg9bol5mblj3bva3n91bjo8q8bsh', '143.110.222.166', 1689772340, ''),
('a8emj18geo32osrhus7dma3ih10jbmf3', '143.110.222.166', 1690518327, ''),
('a8jrnk8nebu449444fl1nvn3hfhp0aee', '91.224.92.16', 1689475424, ''),
('a8vbdpn4r4b2io9phgti5hmpclg0r3oq', '92.118.39.40', 1689754278, ''),
('a90af3qg3bskicbikekr1elilpiiufbi', '118.126.124.10', 1689634555, ''),
('a9half0b99p5v63128rsm40d2nb2744p', '35.203.210.229', 1689224795, ''),
('aa06618kf7ieu2c7j8kinv1vud89uhbh', '143.110.222.166', 1689969375, ''),
('aae11cbjbbj2auk2nt7lef2nquvfbn78', '185.180.143.72', 1689812782, ''),
('aalo9pc6vb5ou7od7amska2n6divos0d', '213.109.202.66', 1689216165, ''),
('ad4ihb2qp14cufdrlgoopfsbeai8v7q5', '143.110.222.166', 1689473303, ''),
('ad8hop84dc6sqn78jbrs2ggv8l4fve9d', '91.224.92.16', 1689947516, ''),
('adlfomj0imj743tnqp6a5k8fqfv0nssk', '43.241.146.244', 1689323413, ''),
('adnootre25rtpkf8k8i3ehjlasdcqas5', '51.79.29.48', 1689377503, ''),
('afd5nq3idr7gn83t61f66b6csefmau6j', '43.241.146.244', 1689323220, ''),
('afe1lurek82fsqpt92pocrkm74gn0i1q', '143.110.222.166', 1689426642, ''),
('ag4de1dvm312lfgg1fvk5edu8nh42146', '159.223.55.198', 1690435468, ''),
('ag96q9bj929osmd36nfutbbrgpvff39a', '59.182.2.210', 1689331805, ''),
('agiu5m0gq59r9mq87abcgquna06ob4it', '103.138.233.246', 1689931369, ''),
('aj901lll8icqdulc2ssk0it071nl1uun', '185.181.102.18', 1690745189, ''),
('aj9vlvc1paioahgv1asmkd9qi867n10q', '74.207.245.153', 1690114308, ''),
('aje0064qhh6tu18qnnnlv3j7kr5cfrst', '83.97.73.87', 1690865974, ''),
('ajvknk1ie5m6o3tbamotuj9a6lslqvpu', '143.110.222.166', 1689692294, ''),
('ak0vqdmons8p15jhbecl087kmb5erlns', '143.110.222.166', 1690503685, ''),
('akm4fgllcp2qeoclahnv43onh718pap9', '51.79.29.48', 1689596858, ''),
('al8rdi17pfg2usloo9g1gb92c349nnsh', '213.109.202.66', 1690379543, ''),
('aliml0bksgemqsedqjf8pcj2facvji72', '185.153.179.42', 1690226437, ''),
('alq07kpd7iagnf26oo8h5vjq55baaufb', '65.49.1.32', 1690882245, ''),
('alttfndkgt7h6rsmc7o46aqcao11tksv', '54.37.79.75', 1690302154, ''),
('amlqfet3knc8b45sgn7563uc1862r8l1', '31.220.1.83', 1689683740, ''),
('amupu1pfj38cf8ebe2mhjc15a2qoh309', '143.110.222.166', 1690390620, ''),
('an67lqg4p8qoism7ih3b3ijo27pfk9cn', '213.109.202.66', 1690520051, ''),
('aogqhodpu0vigfvn00rvsfc4qcl9g7h3', '143.110.222.166', 1689343111, ''),
('aooqj2su2kmiojoffuobihgco9orie88', '103.187.198.185', 1690368197, ''),
('aop0062bmejqiggbdljeiu9fvidigs93', '143.110.222.166', 1690039156, ''),
('aovf0r2u6f6vat8ini39r047gu6rss53', '206.189.79.182', 1690544979, ''),
('ap9ih7g9boob35rjbt3pfmlh5ne4lrpp', '143.110.222.166', 1689416224, ''),
('apuv3o42t67213elsdt869ri1nee0gjm', '51.79.29.48', 1689357830, ''),
('aq106i7mkrbedkuoj17tlp3d4cbocesc', '192.241.205.242', 1689268446, ''),
('aq8uckm5hmqmk2bupdbph3nt1m8gjelr', '34.140.130.61', 1690489806, ''),
('aqe8q1mbd1nh4l007g8lfh6dcuj5kv1a', '170.64.177.80', 1689251325, ''),
('aqeoa5l16shrbruilg6im4o205krpn9e', '51.79.29.48', 1689286088, ''),
('arb81t9co6mdoeqmnnulbdrmk7tnq0ba', '43.241.146.244', 1689323203, ''),
('as0b4bg6s007rdqru1uj3nsf36i5c3jk', '51.79.29.48', 1690198634, ''),
('as1n8879o82duk8eoaoqiuqj3blgh71g', '162.216.149.82', 1689935675, ''),
('as2r7e190cir013ik8ja92g930v8535v', '35.203.210.105', 1690694163, ''),
('as3kosne94932tbglgh7nc7btpr6r73v', '59.178.153.102', 1690620383, ''),
('asfhqqcgfmcocac5kbaigipj7fc394i0', '45.79.128.205', 1690799972, ''),
('aslt2jvrnpfen948ke0c2onpfv98l573', '143.110.222.166', 1689469596, ''),
('asmff83afu8604fkqkm33cllpv208lrk', '59.178.64.216', 1690467615, ''),
('atebkpj2e5354m0mpfg7th2sgkpj138i', '54.37.79.75', 1690470235, ''),
('audhage48klsmo02258j4a2ujt6qgh0d', '52.204.125.205', 1689263952, ''),
('aui1rht2bj5lhdk49es43dtvs8d9343h', '54.37.79.75', 1690504182, ''),
('aumskkm0jgth68e3qendmbm2b8chsq73', '31.220.1.83', 1689807075, ''),
('av4r9n3enh91alj531vnbr52la8fvfur', '78.189.180.119', 1689392642, ''),
('avl6obmlv3k0f8ctqqhidnt1o02461aj', '51.79.29.48', 1689973677, ''),
('avqim4hvo4lfu7s2baimtppdq9bko7b7', '51.79.29.48', 1690666130, ''),
('b4agotck4atpl634ft58iph40s0iukc3', '143.110.222.166', 1690024883, ''),
('b4gdmvr3epbmec32cp60hamrs49a55ed', '143.110.222.166', 1690885278, ''),
('b4p8l0dopu4vuh90on0oo3egfgklet6t', '106.122.201.161', 1690360506, ''),
('b4pf80a6febqa6ho4cqb8d3a845kekvk', '159.203.33.48', 1689383404, ''),
('b52kjlk7fja8ikg784t575q70g5rfgcr', '143.110.222.166', 1689549650, ''),
('b5ohc9mv0fdjggdh93nt0kr5qvd50uuk', '143.110.222.166', 1690377614, ''),
('b7bovqbe7tsq88n1tpj1mlevo9ibcrlb', '143.110.222.166', 1690240766, ''),
('b7u58l6okjflmp5f8o0ufenmmta9711c', '51.79.29.48', 1689378662, ''),
('b8afnfh9avrpkv7e4ns7t427n75gt35e', '45.128.232.83', 1690675861, ''),
('b8hn83n76o42osnbslvp6v0j19ljvgac', '34.140.248.32', 1689587759, ''),
('b965keltvs6mcnjjt89rmjgk1hs1en9m', '146.190.119.189', 1690556892, ''),
('ba5scdq8uo2ndij5fh1tagqmudb2fnd4', '143.110.222.166', 1690430385, ''),
('bc3seofs5enak2c08esjnufif866vb8l', '118.126.124.10', 1689891353, ''),
('bd080cdel6bvgf7a30dm0g5inu1o9qbs', '205.185.127.30', 1689483014, ''),
('bd5ljed11576cpvcurl6943vt6e08kr8', '54.37.79.75', 1689400422, ''),
('bdqjefep6s5l1olvh5rmscnamvhr7qnu', '143.110.222.166', 1690219061, ''),
('bdtuhjkfufnv8a8lek3l7p5a8v8v6mnf', '94.102.61.10', 1690682232, ''),
('bhc2ff635gl35nu7ohn7ps10draf1b36', '54.37.79.75', 1690818323, ''),
('bi0hl5f3i4fbkk32ak6mp0mrosof5816', '143.110.222.166', 1689401786, ''),
('bi31o75oub614uoqlvv18cnkeci2q0sp', '143.110.222.166', 1690489505, ''),
('bios2an1puc8v1d98msunupqqf121i5c', '143.110.222.166', 1689790677, ''),
('bjhal241ei1t898d1u0coiehvpenc79b', '54.37.79.75', 1690826535, ''),
('bjoc9aekcfqo0nfblk7m9biu64l4pdmq', '143.110.222.166', 1690127811, ''),
('bjq9md9bokrq0k4bc0gh1tbs65jgutg9', '52.141.92.47', 1690726149, ''),
('bkab4tu26vqt2gpat4t3v1pjvhssdo5m', '143.110.222.166', 1689476639, ''),
('blph5o71aoek2sohh79e7e4k4k1fjd1m', '59.182.2.210', 1689331805, ''),
('bm796i72a08hjcokskdk79gsea1alfv3', '185.180.143.81', 1690641179, ''),
('bmr4k4q9sbudqugs4h15jlvb8objdbvu', '193.56.29.190', 1690130994, ''),
('bms5dqprumtg789gtkbqa7msusuohuth', '83.97.73.87', 1690762257, ''),
('bnnk2juvtbj5h2beprbr69t7dk8unu3j', '143.110.222.166', 1689355001, ''),
('bqbh0ehjsg7qn9sq6sqdenlvhshggffm', '185.233.19.139', 1689787537, ''),
('bs8sm4jkp0g33q2dadb4kbmvkg7q4lpn', '45.156.129.12', 1690635446, ''),
('btinbt8jq92nre5eu7grnm33capkug9j', '143.110.222.166', 1689256919, ''),
('btvdp676eldrbd1ji93cutmqpg240hi8', '34.140.248.32', 1690273586, ''),
('c007pr6vb9spudlftg37rfv85q7eaug3', '91.224.92.16', 1689595375, ''),
('c0arindho4s9s8amd8i7shc8a16c8d8n', '143.110.222.166', 1689735469, ''),
('c0b9vksfi72l5iu0jmtflt2seunk1nnt', '162.142.125.223', 1689584916, ''),
('c12bee5dbk54u3kvina4mb5veoc1hhj8', '71.6.232.20', 1690181931, ''),
('c1fp49q7bc1647meti029jqhc7hllseq', '192.241.218.53', 1690094589, ''),
('c286h09n5doem6lakcn7hptnrjvu2d8t', '178.128.17.193', 1690166164, ''),
('c2rp6foe4rr6cmh7la3qfs39fb0lsei2', '107.155.55.108', 1690485944, ''),
('c3p7dvr1n8ufag8nsg8h4j183p7d0i49', '20.111.40.106', 1690585108, ''),
('c4ivabpilffv2lcjuegjm75r0j303b4m', '31.220.1.83', 1690047393, ''),
('c4kjmvnho1v1k7d79k18v251tvh3a2sm', '167.94.138.50', 1689494689, ''),
('c4nrdpg3u85gu5pan00em26g3tl2iqap', '209.141.35.128', 1690499494, ''),
('c5kup209u383jgmr1qup8oau88vql1l5', '101.0.6.241', 1689534907, ''),
('c5ojpc9b40ej4p4c21c8brnb5l4vrvpe', '170.254.214.166', 1689403705, ''),
('c5ugi9mpu24aqs5rqdc817vrdiq9i9uq', '185.180.143.48', 1690372131, ''),
('c6cdhfja6tb2pf7gejqhh07otb1q40e5', '143.110.222.166', 1690561171, ''),
('c6guvvesvs3pru3m4otfkp8jkmsbt44u', '162.216.149.226', 1690157672, ''),
('c7tu3e1qqm4a3b479hnj4c8876hmiq95', '151.80.113.40', 1689543616, ''),
('c8agmd3isi3clud3m2iinkvqjq5fh8ut', '167.94.146.57', 1690271012, ''),
('c9qqkp1vqc7k2qcml6k6n8kpevmammav', '51.79.29.48', 1689362771, ''),
('caeu488iep8qtec2if22k0rt2bfm075v', '43.241.146.244', 1689323293, ''),
('calf15vrld6b0i12msh5n9nfndiqc749', '15.206.235.52', 1689842789, ''),
('capbsnh6qa0vsp5du6aavi91nb2d3m5a', '198.235.24.219', 1689727861, ''),
('cb1e8dbsucliocghjfjtbtdat866b94i', '20.234.37.63', 1689817652, ''),
('cbpho5lj7sd069aiergne8fjd3p1m4q8', '51.79.29.48', 1690186440, ''),
('cc17am9ml7mv8a2qnpkrrr8fpu3d509e', '143.110.222.166', 1689868945, ''),
('ccbohbj78va6bmqq67hj8ahrk382l4il', '51.79.29.48', 1690568463, ''),
('ccdqpkajln9cq43akj4vqh5ll0up2sna', '143.110.222.166', 1689898593, ''),
('ccsgenmh0qrbbc6e54crj0lq3hqba462', '143.110.222.166', 1690759612, ''),
('cd0d2g1nlvn1nirf1dr3so7hf47bboa9', '143.110.222.166', 1689884067, ''),
('cd81kvoj5f8h5eupq2b9f06ukmfva3gv', '143.110.222.166', 1689254450, ''),
('cdfeadrjqbee3aas8831g1ce9d21s1jq', '1.83.125.186', 1690402112, ''),
('cf239t9rss6hgr5djblbastv5rjnn98j', '51.79.29.48', 1690590708, ''),
('cf3k7g74ir2835g6ddck13tdskhli75p', '80.94.93.181', 1690410182, ''),
('cg37917g2hv5hf2p9s3i50jceen3g9dn', '143.110.222.166', 1689830140, ''),
('ci5eim8b3ape8n76tbqgo53nsddh2ba8', '54.37.79.75', 1689415172, ''),
('ciqm8845kh00f4k21371ike7kprjbve6', '143.110.222.166', 1690460926, ''),
('cit65prpvkjuma5cih0fcl93tpisbppb', '51.79.29.48', 1690570063, ''),
('cj3mo1v3avtd35hvba5lbbs1scqk04on', '143.110.222.166', 1690837585, ''),
('ckdcvvm3rtou9jtl3qf3h277infod1ds', '87.236.176.50', 1690361960, ''),
('cl71pfavc9cuiuj0vd66b5lat5gqa3e0', '92.118.39.40', 1690490870, ''),
('clkgg0s887acelm3pglgpt2j1bs34voa', '195.170.172.128', 1689522089, ''),
('cmg0v221uv2o6t7b1se3q74tsg3vqf2o', '143.110.222.166', 1689750527, ''),
('codi5ujc8a9d32q5m3fesaj499d3brep', '51.79.29.48', 1689592577, ''),
('cof6a6p81g2vfr6fgf37mtvg92cj5u9l', '192.241.226.46', 1689354864, ''),
('coqpsepdj91npma8keaqoo4jpcvl3ilv', '143.110.222.166', 1690675716, ''),
('cot7cf6fc050jmdsjkokngu3pf3sscpc', '152.32.197.228', 1690116965, ''),
('cpi0km7t9flhnj7ll7fp3nq7g2k3vovs', '91.224.92.16', 1689443714, ''),
('cpq379o0f7nnunruebi3l9rg8m101stf', '13.40.6.222', 1690792291, ''),
('cq0afgiql0fqv9i3s3savk74tdmarj5f', '143.110.222.166', 1690354968, ''),
('cq8is5g65iof27f50i9pvjr0hmc4u6eu', '167.94.138.52', 1690751772, ''),
('crj9qvijqp15616q919287nct1hnu4vd', '20.199.88.218', 1690507695, ''),
('csbdsajanrhogtof74j9r6vqhl55t4ij', '185.233.19.213', 1690231484, ''),
('cshs7oi4bv3tlmvnj2hountnhamkoms2', '143.110.222.166', 1690678957, ''),
('ct9vmc3qanqcve8j1otpii4rin5h2png', '143.110.222.166', 1690665609, ''),
('ctn473ha56va5i6rfi371jadj15of82k', '35.203.210.8', 1690038274, ''),
('ctpdj4l5qbefv6rn9lpq1neh8cfq123v', '43.241.146.244', 1689323243, ''),
('ctrf7r35igmlfoajc4em8nt15l56nk1m', '54.37.79.75', 1690043694, ''),
('cvqmkmdg0t25nhgmo836rfuq0p0vm38f', '143.110.222.166', 1689731963, ''),
('cvvgi18tc1sgbrfsa00lu35hguv250g0', '117.255.158.65', 1689696952, ''),
('d07p7jgfa4ramp9ej6nnk4ficfvtnd9j', '92.118.39.40', 1690399500, ''),
('d0ljgic4udfp7vsant8gplneu59guphh', '167.71.78.209', 1689348391, ''),
('d0trhm24t786jj9vnmiio7otrb06au79', '141.98.11.207', 1689312144, ''),
('d128fnbpasni28b51f9svn8t0jb6iulo', '141.98.11.60', 1690494468, ''),
('d17041vn46b547so75i4n4l65cjt3qvm', '51.79.29.48', 1690129201, ''),
('d1me8p5ruro3365qghpa44dd5oqp7345', '176.105.203.35', 1690713830, ''),
('d1q3em5b707n9qo293oonnsvpnvc1o1b', '143.110.222.166', 1690089150, ''),
('d28t0qms5kfmu42qrqp3vfrjkn7stqji', '59.178.64.216', 1690467615, ''),
('d47pmh2pim0p9grm19gphn6p10geaj8t', '91.224.92.16', 1689750505, ''),
('d5267r8ai9pbqbtno2lichv90bgom0rj', '176.115.240.32', 1690906663, ''),
('d5hntt0ocigj7sfis8qasgrqauk5nfi8', '143.110.222.166', 1689337209, '');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('d65kr7nevv81jo52imqhq5f70nlnools', '103.138.233.246', 1689341863, 0x61646d696e5f64657461696c737c4f3a383a22737464436c617373223a31373a7b733a383a2261646d696e5f6964223b733a313a2231223b733a343a226e616d65223b733a353a2241646d696e223b733a383a22656d61696c5f6964223b733a31333a2261646d696e40616d732e636f6d223b733a31303a226c6f67696e5f6e616d65223b733a353a2261646d696e223b733a31343a226c6f67696e5f70617373776f7264223b733a32343a226156502f4b7636484d47516b673933334266794d54673d3d223b733a31323a227478745f70617373776f7264223b733a393a2261646d696e40313233223b733a31353a2270726f66696c655f70696374757265223b4e3b733a393a22666f72676f745f6964223b733a313a222d223b733a31303a22756e697175655f6b6579223b733a33323a223037346363653337616133343532353639393865643934383661373639316636223b733a31333a226d6f6469666965645f64617465223b733a31393a22323032322d30322d31352032333a30383a3136223b733a383a2269735f61646d696e223b733a313a2231223b733a393a226d6f62696c655f6e6f223b733a31333a222b393139363632373434383439223b733a393a22757365725f73616c74223b733a33323a223466633534346639303566333338366238386630633434386665366330646464223b733a373a22757365725f6976223b733a33323a226633613130353232613366333838306633346630326365393639333161383361223b733a363a22737461747573223b733a313a2231223b733a373a22726f6c655f6964223b733a313a2231223b733a363a22635f64617465223b733a31393a22323032322d30322d31352032333a30383a3136223b7d70616765737c733a313337333a225b7b22706167655f6964223a2231222c22706167655f6e616d65223a2244617368626f617264222c22706167655f75726c223a2264617368626f617264222c226d645f69636f6e223a22686f6d65222c22616374696f6e5f6e616d65223a2264617368626f617264222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2232222c22706167655f6e616d65223a225573657273222c22706167655f75726c223a227573657273222c226d645f69636f6e223a226c697374222c22616374696f6e5f6e616d65223a227573657273222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2233222c22706167655f6e616d65223a224163636f756e74204d6173746572222c22706167655f75726c223a226163636f756e74222c226d645f69636f6e223a227573657273222c22616374696f6e5f6e616d65223a226163636f756e74222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2234222c22706167655f6e616d65223a225472616e73616374696f6e222c22706167655f75726c223a227472616e73616374696f6e222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227472616e73616374696f6e222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2235222c22706167655f6e616d65223a225061727479204c6564676572222c22706167655f75726c223a227472616e73616374696f6e5c2f7265706f7274222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227265706f7274222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2236222c22706167655f6e616d65223a2250726f66696c65222c22706167655f75726c223a2270726f66696c65222c226d645f69636f6e223a2275736572222c22616374696f6e5f6e616d65223a2270726f66696c65222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d5d223b73657373696f6e5f6b65797c733a33323a226436356b72376e65767638316a6f3532696d716871356637306e6c6e6f6f6c73223b),
('d6ilrvpr3dhcrbk5uumf8hajpgenpbi4', '31.220.1.83', 1690493283, ''),
('d8g8nog7kmvt99hrphoq9eim7r2v77u1', '51.79.29.48', 1689319325, ''),
('d8lnotpbbd3ds9c8l6nrhj3ru5hmeobb', '117.222.198.127', 1690503038, ''),
('d8vulblujqbq1t3rsrh29fu0v40es729', '143.110.222.166', 1690117420, ''),
('d97pkv12fb4c9un52ek80fevidfindpt', '82.64.52.254', 1689984325, ''),
('dc71d2c3e1so0pneai2ct4257sgnhft9', '146.19.215.41', 1689890203, ''),
('dcs9n34h4c2ck3dqcbkd5rvlmfqoprbp', '185.180.143.49', 1690851292, ''),
('derlbnff0cqvfuisbelga0s3slj8gchj', '143.110.222.166', 1689286080, ''),
('dfpkqfai71spndqksdk6e9hf39m9j9rm', '52.141.92.47', 1690315742, ''),
('dg1mlc9fqerd0qu5m15s4p7q0t6v78k2', '143.110.222.166', 1690628397, ''),
('dg5t5h8ov05vl6e49qqgp027p4si43e1', '185.233.19.211', 1689493212, ''),
('dgl6cocbi7h5e7a3iu9d4mj4aqtu99g0', '83.97.73.87', 1690643546, ''),
('dgp0nc7t3m6p3basirla6he0d5mpf12l', '178.128.17.193', 1690211608, ''),
('dh9gehg8i66tsa0qe8ijne229bc0vkbj', '54.37.79.75', 1690700794, ''),
('dibjb1c5hmq1d4crbcd7eto1hu3qsd3b', '54.37.79.75', 1689501769, ''),
('dibspoh7ctja90ve5nf9f2oci1h5rjof', '143.110.222.166', 1690222147, ''),
('dkatvdu7krlma5gh7arrre98o8rcanql', '51.79.29.48', 1689726843, ''),
('dkcjtmug5itmpvvo4v8nthq1rv38gmcf', '143.110.222.166', 1690203757, ''),
('dksvngbseklg5h2vu0tg5hcai83ta4jk', '143.110.222.166', 1690779825, ''),
('dl91i6d0ac2s9pg15de1ggk06gdfd1f0', '54.37.79.75', 1690297002, ''),
('dld0kp847pbvv36r013322nstl4rgq5k', '141.98.11.60', 1690690966, ''),
('dmh3kc1dm43mhb90cn7jg8i0r27rjj0m', '143.110.222.166', 1690171816, ''),
('dmi52hcdij431atrlqegeda9a3ei2vea', '143.110.222.166', 1690290637, ''),
('dodk9eo5u59586jo92beab39j0s3ug4s', '152.32.234.128', 1690288166, ''),
('dpi7f2tfqef1v35bsp4f2l8i4ta2he2l', '51.79.29.48', 1689305899, ''),
('dpl0s1t6cd0u5saujf8uobp8iuojtdpr', '54.37.79.75', 1690810837, ''),
('dpq895pipsrsvad2tfai6s9sqsubh65h', '143.110.222.166', 1689386253, ''),
('dr2ogkpll8f4uqq4nuhtvukmk0rde156', '51.79.29.48', 1689310113, ''),
('drkm0fr626abgr48kn91s20uj6rvb998', '188.138.204.77', 1689963815, ''),
('dt7f35nlkurulbb4arif69oj7uu7vtir', '124.221.157.2', 1689376714, ''),
('du1se59c2bvo4ude7l5o0708gso1q9s6', '143.110.222.166', 1689203338, ''),
('dud01d8tqji658uqbc6qeem6au7gaql0', '192.241.237.15', 1689182209, ''),
('dv5pjocea0ai1hsga286vk8sf10irmr2', '143.110.222.166', 1689800677, ''),
('e07ksna21l471koihbfd4flkkuhcmiae', '20.234.37.63', 1690555691, ''),
('e0strotk521i9s257r85kl3m2vuqigs8', '85.208.139.237', 1690417348, ''),
('e1kd34b63k951dsuukrilinrkj1196qo', '146.190.99.23', 1690674262, ''),
('e2blq4jveb22robbpmebkf0enj0ceg06', '143.110.222.166', 1690762195, ''),
('e2nbqc843noabb8bbu4qettv7brtibot', '51.79.29.48', 1689261227, ''),
('e3rc1re30q824t6nutt6gkl3m5d271uc', '20.111.40.106', 1690405863, ''),
('e4v7i9070hmka0fpgasp6nh4j5fbe2v6', '54.37.79.75', 1690038674, ''),
('e59u6qci1cimv7iut57e3ft2p5uqb6li', '143.110.222.166', 1690262097, ''),
('e5bv1o0cm26c28k1bb14biu7jdgdu8j8', '34.76.158.233', 1690404318, ''),
('e6e143c1ad409abdhriaclbg84858446', '143.110.222.166', 1690370619, ''),
('e6j521a00n3vidvbsq89cf9u3tpmr5t3', '54.37.79.75', 1690394246, ''),
('e6m32dm3olv7hlhlc77vq0rv0gj8n9r1', '101.43.214.144', 1689948060, ''),
('e7edtemiqm9rhr9g77be8cecrc7dt4vv', '143.110.222.166', 1690250203, ''),
('e83riuqh2jn5qq9id69mq9c3oba63qad', '141.98.11.207', 1689387992, ''),
('e84r4085gh8ilso1scjlru8rmgv5sfvk', '143.110.222.166', 1689574393, ''),
('e8pf2k7rcj8a66pi80l81ulfbai30f97', '51.79.29.48', 1690560390, ''),
('e93rgg8binra4a8q6kkbmcpbglpo5ruq', '20.111.40.106', 1690581128, ''),
('e9b5kdh3sjeoknpes2t4psu7m49181rk', '3.210.181.24', 1689487239, ''),
('e9jfb33joisent6590d33mv24rad27sd', '15.206.235.52', 1689862449, ''),
('e9ji27rk9c5q0jh0vg9ttmqhj57vs3b6', '115.133.250.85', 1690530306, ''),
('eb9orio21ea05cavuq4fmejcnm84tsre', '143.110.222.166', 1689373243, ''),
('eberndnlnp5th9pupqt1g36b41gd1h1a', '198.199.108.76', 1690425225, ''),
('ebpqhoqn54qceas505fmn7br28jucsqa', '159.223.55.198', 1690449874, ''),
('ec7j9943qblb1c1qj25753dlhvi6iljj', '45.148.120.113', 1689784986, ''),
('ecthn7v05fopd0p7v8f9assumno46uba', '51.79.29.48', 1690168542, ''),
('ed8rttu9u9j9kp61e58v13ef6s6r29jr', '34.78.6.216', 1690895559, ''),
('eeo1654kh2d9i5au3knnd2na58riadk9', '167.99.118.124', 1690431173, ''),
('egdf3cctuadknl2sq56mc8be9f7noic1', '157.230.1.130', 1690199522, ''),
('ehaj31rnu767oihcuh6ivri7lthqufjq', '95.142.124.17', 1690137041, ''),
('ei32cgg26qalruq8us1aoi9j94u75vb9', '87.236.176.244', 1689816225, ''),
('eig2tbetsv7se0h465f75554kc3pen8s', '51.158.37.186', 1689902892, ''),
('eirvthvgsv3f830nibcb2vdvvfpns6g9', '103.26.196.220', 1690075688, ''),
('ej64qf8par3usac2dal49v6lubrk4hhb', '45.128.232.65', 1690662272, ''),
('eklgqkl7vfc4cs6l0vtms75q8nq8bgn6', '54.37.79.75', 1690410496, ''),
('ekvmovn288tgba8cjknht79ebhfivvr5', '54.215.249.206', 1690852829, ''),
('el5opsd712kisgv1ht42tsdugvidqo5v', '143.110.222.166', 1690772673, ''),
('emalac6941rkta8pkbl6kh0ddmsnh1ga', '128.14.134.134', 1689712218, ''),
('en54cr2fnl46coue22f8ketameg5i8bk', '201.82.10.77', 1689985136, ''),
('enu0smdafujob3a8td0ipgqe5oi290bo', '43.241.146.244', 1689323381, ''),
('epq478qjek7qcge8effjo2cd2pslk6ma', '159.223.55.198', 1690459943, ''),
('eprduvqdpui3c7qo1hqo6qktbkgg0el4', '167.248.133.38', 1690649958, ''),
('epspe2k55l47bjf8j8m23c3irelfdk8l', '89.188.111.18', 1689940793, ''),
('eq32hcrrilacd3gc08kf0rpuc8r2vf9e', '213.109.202.66', 1689534443, ''),
('eqf20cvf9f8j369iln6pnsnerht5gmto', '51.79.29.48', 1690344846, ''),
('eqjqfcjbqd9lrvlq4batbf0fkc9u86e6', '35.203.210.52', 1690269130, ''),
('er7cav7aft9ni2o2ijr95m9f2ptqskvo', '143.110.222.166', 1689570806, ''),
('erle8rh11vh5kih1c55qo68fdg2ne4ka', '51.79.29.48', 1690754057, ''),
('ero2fkqio3embpii6g4s4m21fra4h65q', '143.110.222.166', 1690265037, ''),
('esi9evjb3vpvjb6fe5hdob6mc4bnnj9l', '103.110.33.235', 1690829634, ''),
('et6ojt6qd5p98vlrb17fvh4rki98tbq6', '107.170.225.15', 1689972119, ''),
('etthqd5fnmfmap200d13to1aomnn57ib', '91.224.92.16', 1689710615, ''),
('eukjhtjdutjkap2v470ott64hq3v005n', '123.245.25.252', 1690009364, ''),
('eum607suqha7dhaf0fr95trt6j3nv7o4', '92.118.39.83', 1689987274, ''),
('f06v7ac8fob4488352g4g1ho1gc7kcj4', '51.79.29.48', 1690783309, ''),
('f0r5t3m3nt7k9r552uiki12fss337gv3', '143.110.222.166', 1689624511, ''),
('f1r1hrn287dvk17mqrgb8uqcah6l5513', '68.183.232.168', 1689897775, ''),
('f1v2fd96ubamblv0ko9bfjcobt7cpslv', '143.110.222.166', 1689678249, ''),
('f46ndmubd8lgvci5fgpu64m5rfqn7kt1', '83.97.73.87', 1690758749, ''),
('f48s18ap9qludjrbqlclnb58ufv0h09o', '185.180.143.140', 1690504871, ''),
('f4goi076ju81p4pjuo46658rbo1s275t', '143.110.222.166', 1689249689, ''),
('f4vgl3cd1hcj9jr4hle755ehvd7djp98', '54.37.79.75', 1690689197, ''),
('f5q6j3n9lpnnvfcrogn5g32dsis1sb39', '103.203.57.7', 1690140439, ''),
('f7iklmltntvsghd67knre013ka4t737o', '103.138.233.246', 1689230909, ''),
('f99fejbkb8443fn47v6nq70uinmidcpo', '34.76.158.233', 1690575637, ''),
('faqqmbbdjp9um3ucnb0fv8fof3uohc7v', '35.187.98.121', 1690018482, ''),
('fbap5ri1iomsa4bip5th4o3t6k2m40jb', '143.110.222.166', 1690853043, ''),
('fbdnsl3g88reic95c4ps4l25ifaup9da', '118.193.36.232', 1690414327, ''),
('fd1kln1us3ra332ul44m0jlqsh609o7v', '92.118.39.40', 1690186487, ''),
('fdnge77653apr8eu4d35jkistd26iujo', '68.235.62.219', 1690473052, ''),
('feivmu57dn07urlh4nh4rsljpeopllmc', '143.110.222.166', 1690643841, ''),
('fg5sest4ol3po38d4uuovbdp9dgkh3l4', '167.94.146.57', 1689376547, ''),
('fgcjsq2s6e2o2156bh7qpqr59jlva2sd', '143.110.222.166', 1689178589, ''),
('fh54odik051h2t4ide2lhdhmo9qsi3cu', '139.144.181.60', 1689794568, ''),
('fh6phvdfooa4rin7fqc8m0mqpm0m1njt', '143.110.222.166', 1689686101, ''),
('fhbukq2rrqmieisegn5a1lmk8g6thosm', '51.79.29.48', 1689606471, ''),
('fhil5j107pcf7opmbdfjgb86sbf1l874', '185.180.143.141', 1690448280, ''),
('fijej2kf64r6k53k43g2p9p21qvvqt52', '51.79.29.48', 1690551729, ''),
('fj1b64l5i61mb2g04b179p0aka19n50q', '51.79.29.48', 1689191433, ''),
('fkcak7mak6edi666t2a1ial5la7c91jk', '143.110.222.166', 1689818295, ''),
('fkhef7vi9ia11347o8bioli945a2mc62', '51.79.29.48', 1689591406, ''),
('fkktqrs6k7ofg99qpe2pv61kav72ncv7', '143.110.222.166', 1689959180, ''),
('flf3als7bhbcn7fiujhtuftvk2o40sjq', '198.199.117.136', 1690876175, ''),
('fml7u4upv4qvsglic2mgruok00u6dm59', '167.248.133.36', 1689733847, ''),
('fmvm0lu9ufbbhturvuo69mt0pb6mv11o', '158.195.44.22', 1690301034, ''),
('fom37dn9vkgnq04g4l85sdg8eij10sml', '162.216.149.25', 1690332249, ''),
('fpsdaa3105sma1hkfch99dlbvqt1ifae', '138.197.44.105', 1689173359, ''),
('fq5hht2qarg2h9ss9s6daksjk46nbb5m', '45.187.113.6', 1690749137, ''),
('fs3ee4nr8m03p89obvlq57v8jacphg45', '143.110.222.166', 1689934156, ''),
('ft1hk63pr762e1qcfdim4jjld9r01dts', '80.94.92.15', 1689694555, ''),
('fu430hkoeic3qmcd29g9u4hgvsu49ql0', '143.110.222.166', 1690730898, ''),
('fufajg3igpurmoqu2ro86mfs5rn1gv2r', '51.79.29.48', 1690338768, ''),
('g0bf34fe6ks9erlhh9h7e70qfcaot1ge', '176.58.111.47', 1690534675, ''),
('g0jj08cjuluctp49o6rldko8aujs54kt', '192.241.222.28', 1689700880, ''),
('g0lokva060u10vd5g103g2dhdlbq9jie', '213.109.202.66', 1690531799, ''),
('g0lu4im59l2800avraegavm6q8gmcrgf', '34.140.248.32', 1690188615, ''),
('g174a3vormlsispetcd0c35apietakm8', '143.110.222.166', 1689906086, ''),
('g1k8mqg003n74absq72rrmi7sm6j85qf', '143.110.222.166', 1690745098, ''),
('g1qvd8ve5ptjmk84oe8b07n26l0uhho6', '143.110.222.166', 1690300742, ''),
('g2dd51iqntcjpb37kvv2f8q6n240vo7i', '31.7.60.114', 1689815830, ''),
('g2e7to88vvu1dls5bn20qhk321r4m2e2', '159.223.55.198', 1690272233, ''),
('g3sb612v3de6nfoa1o5veqej4gpniu9q', '83.97.73.87', 1690884975, ''),
('g4gtf96974u323tk2iigtu65q6pufpvi', '99.169.89.151', 1689701881, ''),
('g5o9qv4k71p7u71bud8i3g5q814cadnu', '51.79.29.48', 1690769785, ''),
('g71ovb1fb163gbecamgslkrat99c0232', '192.241.195.83', 1690523610, ''),
('g7a4kpa61gsvv7hl8b8e128sk7ta71qf', '143.110.222.166', 1689901849, ''),
('g7ld5278j4rj0um3te4fn4qj7qisvpb7', '45.79.181.179', 1689763060, ''),
('g9o1befq3qf0h7cqqoiojk8mcsuf1g3m', '54.37.79.75', 1690838587, ''),
('g9svu9s2cdfg4t8j122298mtmnb9a7a9', '51.79.29.48', 1689631767, ''),
('g9ve45sornppbvef19a9s1tm6v0cog4j', '143.110.222.166', 1690891162, ''),
('gaijghv8sf2cih3s524esm09i047crvd', '51.79.29.48', 1689626275, ''),
('gaj9si0imv8oqlgnrf1ctdipvpfjhsmn', '139.59.234.144', 1690162766, ''),
('gbldhb064p7rkp32n9qkec4d11gdflt1', '143.244.50.173', 1690504802, ''),
('gckkgpaqjj9jrrlqdbcbvla04cqatssd', '118.195.181.110', 1689445886, ''),
('gcuc1t5r9oafg3o3o2gggoj2alf4i3l2', '143.110.222.166', 1690607224, ''),
('gdngqehnm4b2tcfb4pe5pdjrqhe7b6lg', '143.110.222.166', 1690359291, ''),
('gdq61a2a95ojqma97drblfgffci1i009', '118.193.32.181', 1690394792, ''),
('gebfoge0if58570k8eu53jvkdihfg7nu', '143.110.222.166', 1690135283, ''),
('gfgilu59uoa4g4a9r6d18junvag68f3j', '143.110.222.166', 1690553845, ''),
('gfusun4i9v6s7g76bt6d3ai6crhhbhev', '58.211.23.183', 1689566240, ''),
('gjh68pe50mjg9qama1306rm0itcl0isk', '51.79.29.48', 1689630283, ''),
('gjrvofjc30e47s4s70j43ctinfuikeck', '176.100.43.174', 1689633110, ''),
('gjs9dn467gk3mb46j0rverh84epv5ebs', '143.110.222.166', 1690305480, ''),
('gjt9euqej5qenvukqjat43r0ak7jdd7d', '143.110.222.166', 1690207086, ''),
('gjtakvra7dv67gotrnggrtsqhlh2pbm0', '213.109.202.66', 1689300418, ''),
('gkdmddpfg3d8ucjhmcm5ddcj44psqjom', '143.110.222.166', 1689418852, ''),
('gkl48jq4eg9lnf04d80v2tfje63589o4', '103.45.247.244', 1690817919, ''),
('glvdvm7pkstjaff1fpr2a0e0u5cr7224', '143.110.222.166', 1690755199, ''),
('gmc842d2qho432h3vd1ue2uvrtn49lsj', '143.110.222.166', 1690164933, ''),
('gmhu43nr4c4ksq2vam3tbqvu6dckrf3b', '207.90.244.10', 1689915145, ''),
('gmknq9k79e96do1i78tgunqplr1fsbts', '128.254.195.61', 1689433336, ''),
('gmool09s4j4lv2luc8ogtjsie9jiv934', '143.110.222.166', 1689739963, ''),
('gmvrrqir66909t8qnnskm96rvk8sh1nr', '143.110.222.166', 1689941616, ''),
('gnidth40nkm67pciq1bn9dp7eii5lbgu', '159.89.16.66', 1690629654, ''),
('gnon8o60nld87p1du7vcn3j1sdff3d65', '20.234.37.63', 1689900874, ''),
('go0pleuinjanndfh1r3737knr3qltigg', '143.110.222.166', 1690549226, ''),
('gokedpg1n2pklcl9l0ll2di4ckgd1i4k', '185.190.90.34', 1690582312, ''),
('gpsb226n8i66ksh9u7llllihf474s1ui', '43.241.146.244', 1689323250, ''),
('gpudukutoh31nbtpqgdb92n9bikjd612', '118.126.124.10', 1689799946, ''),
('gqhvsih4keilafgdvf3o19hk7p6l2i17', '47.254.76.138', 1689886035, ''),
('gsamo5ul8fb5ik4rohf6lsub5oe5emqn', '213.109.202.66', 1689301688, ''),
('gsv9ctqi8n92g061n824p409io3etau6', '143.110.222.166', 1689998309, ''),
('gt0ctm93un1hc5k8nvvhfr48f2cjcr23', '143.110.222.166', 1690412769, ''),
('gt32st61n0bdsj4vrvnkhhrqps6cn8ur', '143.110.222.166', 1690808684, ''),
('gtavo6olndl09asoh3melqc6a1lessq9', '165.227.147.215', 1690223870, ''),
('gtp56f5f0nlmdu84hgn21b57d6ki8b3q', '54.37.79.75', 1689467279, ''),
('gv6iarq8o06f8cuhp7ns5h9g8h9bnboa', '43.241.146.244', 1689323229, ''),
('gvsc59qifffegdglu5ml72ka9ulg40j2', '178.175.128.35', 1690837937, ''),
('h03t6ug8cqdjqo4cunjsogm013o41hln', '54.37.79.75', 1689532205, ''),
('h04i35jaogscr664jmlt29gpsng30lub', '188.165.63.130', 1689828815, ''),
('h06bedgui8trlvscj19ao9lqr2iq3qi6', '36.79.225.233', 1690913862, ''),
('h0jk6cfp5b16g973arva44vmk2d85o5n', '51.79.29.48', 1689292538, ''),
('h0n9vvn950rpm46p550dju7jmkcr0edg', '143.110.222.166', 1689718767, ''),
('h1h8ju25vfjvrnk0kj694r84vn5phhe9', '143.110.222.166', 1689311079, ''),
('h1o43fp1q68ffrta1kf81q5g81ntgde2', '43.163.220.47', 1689713595, ''),
('h4931k3anhcupve69ga7r76lh40sgi39', '143.110.222.166', 1690282926, ''),
('h5n014jhrbidcua898d5ca6ubqir3ls3', '54.37.79.75', 1690306901, ''),
('h5v27svvnn08f6gv6jh8aeu2mon68osi', '147.78.103.218', 1690805691, ''),
('h7bccv5hk62acd3pdg83cobj1l5suach', '143.110.222.166', 1690898210, ''),
('h7i82r5hl2hgfcgfclu0g7k4b1efabs8', '143.110.222.166', 1690705260, ''),
('h8kar5hqvukbcmo9p1ndngqd81qrnmg8', '141.98.11.207', 1690067163, ''),
('h97ntkpk4d1ltmqseinbdqqj7ssvitfc', '20.55.53.144', 1689741829, ''),
('ha8o5h7vfkkesvgpifj03k8s0cg8fpan', '58.19.11.89', 1689937611, ''),
('hac03fm37rhdso9bus168o9hgq6njl49', '143.110.222.166', 1689877069, ''),
('hc06mik32b54njvr42dnb9uhqjj8io5g', '185.180.143.49', 1690287518, ''),
('hcb7mt99nnau7bpnq1kpsvvgpgvacjku', '143.110.222.166', 1690405987, ''),
('hchqadmm9aelolkhcuvd7hg8dur0plth', '143.110.222.166', 1690078651, ''),
('hctr2o0p6m11io7tu4jrd7egqrdlskqb', '159.203.43.37', 1689855770, ''),
('hctsfh3or04s1673vg7t0v2piji4qino', '87.236.176.152', 1689597328, ''),
('hdbcimjaienmvkjo143qq5885gqn3g41', '54.37.79.75', 1689500483, ''),
('hdi12vsmgmqaer3i17np9i8f549rtlhm', '143.110.222.166', 1690697344, ''),
('hdsm3fnbqq7af1kr4lsai1996c7n5j2f', '162.216.150.153', 1689763505, ''),
('hffeeelngkt3mkqgls9gpjva1psjm0v4', '51.79.29.48', 1690375265, ''),
('hgjuboq1luvlbcc0ehv734p3gl3hs7j1', '83.97.73.87', 1690776986, ''),
('hgkhv5kelsifrvh7aeckh0u18i00be2f', '185.253.74.109', 1690081982, ''),
('hgs0bk3ejm1fkgomh10ick4hkvnl8mvh', '51.79.29.48', 1690573875, ''),
('hh0osofbpar97jt1tv89fsbbmcvs3pb7', '143.110.222.166', 1690546185, ''),
('hh3ft2d13d2cueck1a4mh2e2e59vrqlp', '162.142.125.226', 1690538705, ''),
('hhc08v718ggl4afjut6qk5kuci7trm7h', '143.110.222.166', 1689499053, ''),
('hhduans8r7umkohjdm9nboi39fq47uon', '198.199.107.109', 1689686589, ''),
('hheqveabrgs2e26gv8pf4ehls9pl7iss', '143.110.222.166', 1690311936, ''),
('hiefe73b1rtve033mabk0p2g54j98f0s', '51.79.29.48', 1689435613, ''),
('hj3l3apmusc5slbgpgvh5qc9u31p6to9', '152.168.194.106', 1689791799, ''),
('hjfp05v4268p3ffjtgr3ds9a83lhnpg1', '124.235.138.34', 1689937610, ''),
('hmpc4p1ml4fub1j4usv6kd1jdh6gks27', '118.126.124.10', 1689634554, ''),
('hpd2q0cm0najou0p2dooc9cmlthc49qs', '143.110.222.166', 1690528511, ''),
('hq6adgqp3a7b9tj9f43eretldlkipn0q', '83.97.73.87', 1690887737, ''),
('hqe3b805gija6r303ei3gekd0ortpmi1', '143.110.222.166', 1690002864, ''),
('hra6b54jovn2aqiuf68bgd5d1f2bf2l9', '185.233.19.212', 1690074393, ''),
('hs1sh0u8ojblisoct9bd1p5nk0h0ho85', '89.178.41.173', 1689985015, ''),
('ht2vr5rof11hi7qfmbr1ch1idt39eoe2', '143.110.222.166', 1689642179, ''),
('ht3265kg9s1ucuo0d93g2e5k3mqg60ui', '18.134.253.175', 1690057656, ''),
('htbe51s6nvl6c8klun6d312h4kv5reje', '143.110.222.166', 1689962321, ''),
('hurq6ov9p57nc74bn8b8na81nkqbcev5', '143.110.222.166', 1689670638, ''),
('hv8v3rut59v1mrglqck07r32tghjnor3', '18.133.246.111', 1690336595, ''),
('i02vj75pgbjmkfg9lrm02im0a0hvdjrg', '91.224.92.16', 1690030221, ''),
('i0a2s0kc08u9b86fjs7fb21u89urls0g', '213.109.202.66', 1689208832, ''),
('i18126gvdhe37a6ieia6s3l79fuhjfdn', '143.110.222.166', 1689559391, ''),
('i1hr7uan1pe57dp9mctjdjhdn59oqr8r', '143.110.222.166', 1689966039, ''),
('i1ii0fi0kf323mm6g4fq82ev0u5kjkqu', '143.110.222.166', 1689513428, ''),
('i2ifidb192h6eeiao9v7fkt5ojft69v8', '143.110.222.166', 1689495521, ''),
('i4bmtg53fa7b3l0drb2o0945703avvs2', '54.37.79.75', 1690690391, ''),
('i4p6g5s94kfnpmhocmhepofoa8o6mopk', '143.110.222.166', 1689725954, ''),
('i4vm320g9nhs64ed51he95sn7kicdfcm', '143.110.222.166', 1689275088, ''),
('i5c8r6j99na413qm3sdqa59gf1sm9mlu', '91.224.92.16', 1689377106, ''),
('i5mnojg4ohku837imvrq640i4u5jals8', '167.94.138.126', 1690161409, ''),
('i66fpjv9hdpm5vh71oao8hsvemu6vkaj', '34.67.136.168', 1690134523, ''),
('i6bs53bd5l639a473utq99g27dedrnq7', '35.203.210.52', 1690800575, ''),
('i6vk2468ks5e676no28o228q6vecap0u', '152.32.143.81', 1690897677, ''),
('i9ehhbmsj9g6jk3d3mn3q80jgui9mv8h', '143.110.222.166', 1690658498, ''),
('ia1npu1uo0ppocgt2sggnhuluj1kj1se', '45.148.120.113', 1689785004, ''),
('ia5578d4jnnof2vgdkaahfolicu93jv2', '143.110.222.166', 1689236064, ''),
('iabk29gkrnodo0smplrc4avmi2qcjuu1', '143.110.222.166', 1689174881, ''),
('iakmjpr83u2aclnt64j1q6fr81hbdlet', '51.79.29.48', 1689371440, ''),
('icejfkmiqqgfb3kogil45i9ieflr3ltj', '143.110.222.166', 1690110772, ''),
('ichkdch7ilt6h2cel2k4gmm4qrm7arku', '162.221.192.26', 1690006733, ''),
('ido7usrbgmhosg7oikn171t36i83nirh', '61.147.15.67', 1689565619, ''),
('ie0h8hv9usdei902cbvk8d0oklblgk43', '213.109.202.66', 1689202011, ''),
('iee3cbn6745qi4eibut8ltk088bos1r3', '64.62.197.65', 1689671620, ''),
('iee5viltqh2r5mdu6kvun0rc59m51l70', '35.203.210.230', 1690098510, ''),
('iem58q02g241krleih8l00u9ksus2bqp', '216.218.206.67', 1689852958, ''),
('iemplk4duul4ldaebongtsl7640v8pns', '31.220.1.83', 1690178846, ''),
('iesctc927o91o6fijlkhjrvf60pbmomm', '103.112.52.249', 1689880058, ''),
('iesqi214hn6aucn3rllk73je766rbmbu', '20.55.53.144', 1690839167, ''),
('if782tec84n5t5t49rdsf1u6d5kdiqpj', '54.37.79.75', 1689498245, ''),
('ifedlga6smi613a1sk7c6v1cp6suefhl', '143.110.222.166', 1690174962, ''),
('ighiqelpmeg8tg6f6h7vljsv6fb9ilpr', '91.210.197.108', 1690214943, ''),
('igtgd3tciidlh8f5js42ss83i1jggj1k', '180.242.130.189', 1689981064, ''),
('iheg9gb75pq8gaaru2b60bo2mch7s0tf', '51.79.29.48', 1690366018, ''),
('ihi29a1vqh0loh4n06cjv7ssesqj9c63', '213.109.202.66', 1689318069, ''),
('ihkhtfv7e6chd1rdvamavespc2q785b9', '94.102.61.10', 1689347784, ''),
('ii6rbkkeorb0bqr25tl90a89gp0r9b97', '143.110.222.166', 1690700871, ''),
('iiif2qftvc2b12fllqutl563o301nbl4', '157.32.102.50', 1689856882, ''),
('iij6mrrj858b5a8pph4k4kp4s1t1js0c', '143.110.222.166', 1690211725, ''),
('iktlm1ohrmm8sethgrljkfes3b8vmgso', '45.136.153.217', 1690727951, ''),
('ilv92ae12o9pikv0p46gd1l059nndnr5', '103.114.107.163', 1689667190, ''),
('imu6lu918fof3e2lr4r7unv9ueep3aph', '143.110.222.166', 1690435173, ''),
('inas1769nskupkb1onanuofid17arh8j', '15.206.235.52', 1689842789, ''),
('iocgm0lmlkp9mcq7k1svs2g25r6qinuo', '54.37.79.75', 1690326413, ''),
('ip2avu9epdo7fdqb8hvkvffb76bcksmq', '103.204.210.180', 1690347626, ''),
('iqd0ndmikqhuiu0urddk7ifeom9hmm9g', '143.110.222.166', 1690859146, ''),
('iqeg1rasp3b9mh84cfv6c0t53rb74f27', '142.4.218.114', 1690263992, ''),
('iqoot0uisslseoovfmoujs2hhda7jndh', '54.37.79.75', 1689517774, ''),
('irjrttt1brkst5sgmahudp859kubbc51', '143.110.222.166', 1689769103, ''),
('irrfq4851v5skpc6tfibf2sghua6o4nf', '15.206.235.52', 1689614536, ''),
('irufn5hhbs7trtkvpc4b3a1ji6mkurhl', '143.110.222.166', 1689361938, ''),
('iscbqvpt7bogutoi0n8g765uoiv189sn', '216.218.206.66', 1689741828, ''),
('isd4tesmadi3bl7nfe0ghhvm0ptn73eq', '51.79.29.48', 1689778411, ''),
('it0rv064kaihl867a3iqtctqpnsn1gg3', '143.110.222.166', 1690500645, ''),
('it7s4f6s5f11aeaca82qgjda4nmq0g76', '143.110.222.166', 1689209931, ''),
('ittimpetvdmnc3594727v0a2tpfs2e9c', '34.77.127.183', 1689757840, ''),
('iu8n6v81ci0a8pl4oclkaq62rrmoqb7q', '167.172.47.36', 1689794518, ''),
('iueho979mk2igvef983jjrr33m1k5ida', '165.22.11.3', 1690000078, ''),
('iurjej05mjtopoosph0d4sk2374kbchk', '43.241.146.195', 1689420586, ''),
('iv75k1jnucmr9np5p4vgb860qv5g5qpr', '54.37.79.75', 1690415527, ''),
('j02ech36eb1c5k7n9elo3fqa219puch9', '51.79.29.48', 1690221811, ''),
('j05ourr5erp6deg7mjcak2rodr6v1btt', '64.112.72.102', 1689422804, ''),
('j06ii2kus9di63ctb1a22alv13qos799', '213.109.202.66', 1690383839, ''),
('j0cm9hk96uvs2tlq47p1n2blo3ao7vls', '40.119.41.50', 1690632107, ''),
('j0vsn45qqo1ch461kptnqibgd2c4bh70', '87.121.221.100', 1690254922, ''),
('j1500dlorr1sqkous9ttlsvms7thceii', '201.150.56.215', 1690765851, ''),
('j1hddqjprjm23gk4srk0pat72m4ou4n8', '54.37.79.75', 1689480883, ''),
('j1qhdgq20bnhfcg26ligtmvth2d3faos', '35.203.210.72', 1689517028, ''),
('j1s7eqnk7iei57u3l3ps3dhvkpc21r0t', '117.233.154.217', 1689420953, ''),
('j2163cg8pmvvr5ggo6neubih8snspa8j', '51.79.29.48', 1690190265, ''),
('j2hss4gesrce7hqak52qokaj6sa3hg67', '51.79.29.48', 1689612016, ''),
('j2l48ktjg502rg4qahis8moa138t29eg', '143.110.222.166', 1690539033, ''),
('j391qtikvd5bctr0omjeoc1ti25tu30d', '31.7.60.114', 1689812483, ''),
('j3ag4mmrk75pj8oqkbub0gl4f0c7ru4r', '103.26.196.220', 1690075690, ''),
('j3lvf3udjbec9l97bopcc9e4rb2vroa6', '131.0.164.89', 1689654228, ''),
('j3moh4hfmfcvhj68smjseuiadj8eik35', '35.195.93.98', 1689672660, ''),
('j4h4vag6v86qa29h0iovabap93nt1l8c', '141.98.11.207', 1689193768, ''),
('j5v2c4l7n8vhtuv425a77odl0t9ruct8', '143.110.222.166', 1689610378, ''),
('j64i5mchhanth898e18g9e6t7e93mh57', '51.79.29.48', 1689613563, ''),
('j689hij3v4m6id2miu12bo3tb7kg6aip', '134.209.203.176', 1689567092, ''),
('j75k30o44ob3q48a6vim9dd9gn6en4a2', '141.98.11.60', 1690511734, ''),
('j7k709hak8jf09p391pmd8imq743i3mo', '143.110.222.166', 1690214306, ''),
('j88enj9tkurmh82uk2io2op7gr95f49o', '185.153.179.167', 1690583231, ''),
('j979j8e9ba71s71d3oto1c86ps2pjfvn', '83.97.73.87', 1690769998, ''),
('j9qnvtaiud8u5r0ctqqqj9bg3b14or72', '183.136.225.5', 1689489968, ''),
('j9s124fe5e7q5s12k267p7foinlgcb58', '213.109.202.66', 1689830732, ''),
('jbmrmqa4ekvmsa45uuvkcs024m8chmnj', '143.110.222.166', 1689531547, ''),
('jbngus9v3uai6mikhrl0b8rnk99nf6cn', '198.235.24.18', 1690874663, ''),
('jcliukh49n8lovcd5cdcga80st03dlcp', '143.110.222.166', 1690017436, ''),
('jdjtl5t6p4es9fdhcfgoo7rra80ac9qm', '143.110.222.166', 1689948900, ''),
('jem5nu5bc1f7pco62n1m9081o4lh9cjp', '143.110.222.166', 1690006722, ''),
('jet2mqbkvhn56tpjq5o6avq27oij8jm3', '216.218.206.66', 1689403510, ''),
('jf81c8bd94r93uvs59l96goi1ld4uqa1', '94.102.61.80', 1690200876, ''),
('jfdjbn1401q7d89l6jdetfkncd1udhcu', '143.110.222.166', 1690395456, ''),
('jfjqkqn8i81vpc6ggm7pb2m6us5euq82', '43.246.208.12', 1690661194, ''),
('jgr874cveag8eet59q24648a2glsulef', '143.110.222.166', 1690769256, ''),
('jhrf7b9qj0a127c3u5qccvvkt6b97421', '143.110.222.166', 1690661562, ''),
('ji6i0534t5n2feilk7b9qk9o88vtc1dh', '118.193.36.232', 1690414327, ''),
('jig5klt3kv9p22n8798urumj8e5n47nv', '192.81.218.21', 1689629674, ''),
('jiu14anqe1uoumhq22mbgfi9srhhfns8', '91.224.92.16', 1689621305, ''),
('jjjdqdpbrtjsj5u91a6h9k5od1jjhgv0', '51.79.29.48', 1690175773, ''),
('jll6jkssm8js84f7ob63i952j5sk538g', '14.204.44.38', 1690402113, ''),
('jlu3gct7r4ebpuf2lj4hr7b1v1o0polj', '45.33.80.243', 1689585257, ''),
('jn1kh3vr0rlblj3ob81lcv0goup0oadg', '94.102.61.10', 1689199532, ''),
('jnefrvvgkfkuq45jq35enns01nnc2i65', '83.97.73.87', 1690631076, ''),
('joak1cm2v2nv6l2pnmf9vt6k7rs64mlp', '141.98.11.60', 1690520465, ''),
('joqngpme7po5jt5kgbbsss58me60pnch', '66.175.213.4', 1690368103, ''),
('jp1d0p31eag2henqbhkjtvdr5gtojp7r', '167.94.138.50', 1689494688, ''),
('jr0o45tiuvhkd8smrknit0o53vukqjsq', '92.118.39.40', 1689724510, ''),
('jrbrko8k77e7sp8v2lm9b3rdm9pgp3oj', '181.214.164.109', 1690663048, ''),
('jthgqkk34i6vb1tc3onjcdsfr7c3dd8n', '54.37.79.75', 1689547918, ''),
('jtk961p1i9e3u7dp8uao6n7hsb3bfne4', '43.241.146.244', 1689323254, ''),
('ju6adnsh3p9jen247h2qa15do9rpgthc', '88.248.21.92', 1690630219, ''),
('jvch6hel3f49nn88m5viisa5sqcoir1u', '59.182.3.56', 1690605308, ''),
('jvg6f1ejsf0hm55q860tf84fgggl22oi', '143.110.222.166', 1689196687, ''),
('jvm7r0pa7drtoqq31bqne745l1o8qn92', '94.102.61.10', 1690884466, ''),
('k0tukk7d0ur0h7k5tnb7osngev470mfd', '143.110.222.166', 1689412402, ''),
('k1543ogiutnlknj6heahdpnqo0fgihij', '143.110.222.166', 1689515903, ''),
('k2mig6fn4j4bpcv8mgv6em6o96l03omf', '51.79.29.48', 1689802520, ''),
('k2qtptvib7a2i5dd12rfoukf63e4rnci', '54.37.79.75', 1689398097, ''),
('k2rkll1ivvir4v368fgq74inm3e59eth', '103.110.33.235', 1689970633, ''),
('k3oso498gc6ghormn2d40dgo1d22bqir', '128.1.248.42', 1690256360, ''),
('k4c0cmppt0t00ps89o9g1tdoshl83ch2', '34.203.236.238', 1689815815, ''),
('k52tb6rn7hssing2tuf5la2ti3qsaqvd', '143.110.222.166', 1690287437, ''),
('k5b39ri923kuja4jldp1r6q0913k0he2', '143.110.222.166', 1689895163, ''),
('k6cva97akkfme3r7lkai09a3ijc3e3p8', '143.110.222.166', 1689430557, ''),
('k7070snpto05i9hlrmdqh5rscq3jd2dh', '20.111.40.106', 1690528431, ''),
('k8o7ug5denovqpkkeudpf816ltbldl12', '152.32.174.92', 1689419617, ''),
('k9037t4febg2jadds9njeh3u0c6e2rn8', '103.171.149.167', 1689507037, ''),
('k9h8v0bnl95p8oqd325ncipirb4am00r', '143.110.222.166', 1689553103, ''),
('k9u2bt0o6s5876q61c7ct33njdc3oijb', '207.90.244.10', 1689234277, ''),
('ka4tahdjlstkm40do51279cvrcksdh8k', '15.206.235.52', 1689265733, ''),
('kaiqo0irm5lfqlpsslh77pq19gr846sp', '143.110.222.166', 1689567069, ''),
('kbbpj9c45emm5pt6trlfg3ncdnm8ptfe', '185.233.19.82', 1689182949, ''),
('kbfdtt0afq0vshn7bjeq461dhv8ssbp1', '143.110.222.166', 1690902705, ''),
('kc32lonqttdsvqcpb6kv5abvmoeskifa', '51.79.29.48', 1690781754, ''),
('kca7jdnveigvg9f01r9mppidkkbi652r', '118.126.124.10', 1689537972, ''),
('kcb29luocgpf10ab7vet5iuj65ksi8a5', '68.235.62.219', 1690473052, ''),
('kcf3dsta5b6i3g3a1tfqfcofe2bpgnl2', '43.241.146.244', 1689323485, ''),
('kfm98057tkk07oc7rmeob0mijkc3htd4', '95.142.124.44', 1689794775, ''),
('kgdrtc1mka8cuvvp8359412j6o0o4nm4', '143.110.222.166', 1689484157, ''),
('kinh3eo2l0nf7mu7v840cq0uskknuf8j', '154.26.153.161', 1689184164, ''),
('kl8g9r1m6qqdchsq5a8anl9di48edfpo', '125.84.237.16', 1690330219, ''),
('klf8cb0hgan97h40soe0jcfqgka3bibr', '143.110.222.166', 1690225364, ''),
('klv0b450jiv8p9ktj5t2tiuknumbfpnr', '143.110.222.166', 1690570922, ''),
('kma4c83jr14obi99mpfh8sjntbivprl9', '20.98.46.136', 1690317095, ''),
('kmhdsqkc9bpi27p71bf8r3bq1alqdhk4', '162.142.125.214', 1689822870, ''),
('kn1sdval38suhpjkvsr7gicdcaaj2amm', '172.104.11.34', 1689353634, ''),
('knb6ufjblrbg5aukkvhcjmctjpp5qggo', '143.110.222.166', 1690478116, ''),
('konqalg6bt0bqmjad8o3sr0f773bmmeh', '143.110.222.166', 1690863829, ''),
('kpfeca60jtqedv5u3e9mucjsve0cnig0', '143.110.222.166', 1689664102, ''),
('kqtcfiq6ehjioiblme1i6odf4jal63js', '35.195.93.98', 1689503044, ''),
('kr9kasodmeda5drmk0l8d3cfh1b7osk0', '54.37.79.75', 1690845818, ''),
('krc7hqvuh2jm9v42cbru9g3q2mb1ujde', '159.203.33.48', 1689383407, ''),
('kt6h5t8pr17a28qd1ikga4c8b9dkmaj6', '143.110.222.166', 1690096818, ''),
('kvl318034aqltscd1hrp7uat3cdnc3uc', '51.79.29.48', 1690559276, ''),
('kvs5s6luqckmgs3ug7eulhiqvr2v8shm', '143.110.222.166', 1689563310, ''),
('l07q7m28hrhb3t24p6hr9dnd91bkjmr8', '20.55.53.144', 1690233331, ''),
('l0qjaantr16am6nmo64pt5uf92gn4a0n', '141.98.6.120', 1690008290, ''),
('l0td6h93v3num3bs4cgislph4ll6oiuf', '143.110.222.166', 1690767125, ''),
('l2c8j5efvebp7kutpr5s2mfv3g2vaicb', '143.110.222.166', 1689261439, ''),
('l30k5m3t6o9j9ieifvi20rqlktdof9or', '43.241.146.244', 1689323368, ''),
('l397t8bacdr5treemg9imva7i25m77ci', '119.51.138.82', 1690009370, ''),
('l3gplurrrqobd4t1t9kbaj6tgdhhcqj9', '118.126.124.10', 1689537972, ''),
('l3jmub2soudh73f9joqdgc9pp7s11bfl', '35.216.237.60', 1689872565, ''),
('l4gg3g9rkfdr82v5jfie6l54ff3dpguc', '143.110.222.166', 1690611155, ''),
('l4lc19ucpdg6mhh60m3g22bovo74nh5q', '91.210.197.108', 1690590856, ''),
('l55sogtq6tl5v2jl3to1iaoudq95kf78', '159.89.184.108', 1689294625, ''),
('l5oa6bo5i0jhiguf9747kltg0iqmltue', '143.110.222.166', 1689541981, ''),
('l6ck38c76anm8oug7oaqf81d70p557ei', '74.207.245.153', 1690114309, ''),
('l6dlf9q9jlpeu7jb0fbh21vuknt3d44u', '143.110.222.166', 1690419907, ''),
('l6v928q75prgdhsptg6de6nu9son22gk', '143.110.222.166', 1689585415, ''),
('l7r8vah0q00qmc0m8bs5m1ojfc9ipo9q', '54.37.79.75', 1690069997, ''),
('l7vjlgovdtn5lrgukdfnkaepsu6mri8a', '143.110.222.166', 1690373720, ''),
('l83if54sofr0c6ebqmdmi1i70ad2ma8c', '143.110.222.166', 1690085941, ''),
('l9em4cbdph8em7un6ubpjullpuq2k072', '54.37.79.75', 1689388431, ''),
('la16euakb38v2bmakpn062bq28lri9ci', '18.144.99.58', 1690167540, ''),
('la9jcja106dtknt2j4h6fv7v664b5tk8', '172.176.215.130', 1689910415, ''),
('lbol2q477etcaajrtm9ke7og9koqgjjm', '143.110.222.166', 1689650493, ''),
('lc36f4lqhf3985fata0pe8h01idbears', '143.110.222.166', 1689229253, ''),
('lfi87uf8976t8n86f7h43392a7fldhc6', '143.110.222.166', 1690787892, ''),
('lfkm67bmdkrnn4i1113g00cmu4fmp3hj', '20.234.37.63', 1690852938, ''),
('lg4kg0o156ldkim0bslqnt2c3a2hb732', '213.109.202.66', 1690265126, ''),
('lg7d95lnsqnb2hib3m91i9b8hc1737iu', '103.187.191.254', 1690490193, ''),
('lggaud7ri6j636kv70j2si1jdh0k8c3n', '195.170.172.128', 1689522130, ''),
('lh2pmbcsbfql3qpe89ai66akkgutt660', '31.7.60.114', 1689798857, ''),
('lh8mv0ltpq7ngamses1879blefrql4pa', '20.117.181.251', 1690453182, ''),
('lhajb5ft03dlsd8jeiqnui6jm331a6vu', '143.110.222.166', 1689441309, ''),
('lhciit7qdmvtmma26qogocqspkid3kbp', '143.110.222.166', 1689805127, ''),
('lhns7p4tsfvbijfaoefjpk9f2v4qcg6d', '91.224.92.16', 1689277267, ''),
('lhq9mdibkkj7b619bjcbbval2vpmsgs9', '143.110.222.166', 1689848385, ''),
('lim7jmu2k2rjr3pbs2eocejlqvsgu5cn', '51.79.29.48', 1689267994, ''),
('lju94lu34s0i6oajtjpsh7r4e2bu0kfc', '90.188.246.219', 1689296218, ''),
('lk3d22etue57tcj31ispdk2kkcfemshq', '143.110.222.166', 1690585293, ''),
('lk7frs7clk8cclc4saqk0npgrcl5k9vj', '143.110.222.166', 1689390583, ''),
('lkdsqe1pll9c7h7asgol5gntol74i8lb', '213.109.202.66', 1689448937, ''),
('lkr9bhncg4gjen9c1l3qgmjn16drf65t', '45.79.181.179', 1689409067, ''),
('lkra1pdvb1cu5q3acg3aakin41csfe7b', '89.248.171.23', 1690520634, ''),
('lkv7g3f0q78vv6l4sskvk805i4ctkvb1', '54.37.79.75', 1689477950, ''),
('lmqojugnds9d1moq7ucqvncebc9ealnt', '143.110.222.166', 1690318606, ''),
('lmuis61f2ad2i7she5ntsgolmcc7cljl', '141.98.11.60', 1690521812, ''),
('lob0dsogomgmfbuk7p3sthejq5f3oalj', '20.81.225.229', 1689396211, ''),
('loi1qegselsgj9hkbs3eks25ad0ei6q6', '184.105.247.252', 1690787005, ''),
('lp8q52q5eijmksfd1ln95atra7i0d4nf', '54.234.44.21', 1690639093, ''),
('lpbmpa5rs833mc0sndt3but3qvs56qp7', '143.110.222.166', 1689347997, ''),
('lqesl3m2omoid7rum9p3l8dcpts1s8ga', '188.13.226.171', 1689184600, ''),
('lqr2gddb836jocp9a5m8ajp5rvjepu2l', '143.110.222.166', 1690150687, ''),
('lr3egb5bla3ruqtregfr1846frtufc38', '143.110.222.166', 1689394045, ''),
('lr7ng50nsaah3rf7b663atlgq7dc9106', '143.110.222.166', 1689556514, ''),
('ls57ccc8kvgbr0o3hrhlclgci4f7s8d2', '162.216.149.93', 1690645570, ''),
('lsd7l6g2vbjaffpfhae9bt8hd4o7s829', '45.115.114.75', 1689400921, ''),
('ltinkr49g8u8c5vjbaubpnon910fc723', '185.180.143.188', 1689292878, ''),
('ltlqlmc5bt98a6h0negu82g30ulof7gq', '92.118.39.40', 1690114600, ''),
('ltvgqcm96ofk002u2s7psjjesonirn42', '35.221.10.222', 1690187586, ''),
('ltvjrdspcrh07ltrm32gejnhjh8khdsl', '162.142.125.214', 1689822871, ''),
('luvlm9av7edi6s3dpic3qdihl92pqqn4', '143.110.222.166', 1690427831, ''),
('lvgckiirgjj78fa68ljb82h8e6s16vnf', '141.147.39.208', 1689940189, ''),
('lvpnmt3mvpts5pqvjv1mr3rdl94bfbjf', '59.89.172.128', 1689879937, ''),
('lvrf47hle6nd0lvkhrk35fer78j6vj6f', '51.79.29.48', 1689567674, ''),
('m00cch6kj3vn78lj5v633o3qoggh5qms', '36.5.69.101', 1690009370, ''),
('m1e57j8j8tcfd0a76dbcclofq4qphbua', '107.170.255.4', 1690181044, ''),
('m1gmsereilaegvsv878d55qbnvb9hrpa', '143.110.222.166', 1690192892, ''),
('m2vua8ju24kec6dv8mco5tu6qri6c8r1', '51.79.29.48', 1689271983, ''),
('m3e95ahk3lk5s3ostb80dsb69tljtv39', '143.110.222.166', 1690341888, ''),
('m49vhrii681s4inj4357ic368jlansga', '143.110.222.166', 1689294382, ''),
('m6272obb40hfuuaqpgn39b100jnqnc5c', '143.110.222.166', 1689537989, ''),
('m6bi3v7i13ca7sd48t64ha54m825nul3', '143.110.222.166', 1690178912, ''),
('m724el9q54e8n73urabvat2kma538rt6', '51.79.29.48', 1689290108, ''),
('m7ujd24eod311m734e9gme3a13s0j18g', '91.224.92.16', 1689769362, ''),
('m86c5fpmv9d37e0bir6hqjbq24c3qv8r', '34.140.248.32', 1689417480, ''),
('m8t3hj3p94618ho95bv0b8ufabc48ph2', '141.98.11.60', 1690572426, ''),
('m9egia5r4e4p1o811qtqusfafc27mrus', '54.82.197.13', 1689412332, ''),
('m9r62itinvhni400736uuphvdmpvtji3', '54.37.79.75', 1690460166, ''),
('mb9qh4qd5uff37ot87fn7c13gnm70t5l', '213.5.130.61', 1689252692, ''),
('mbqvglmqb9m2d89k105ol45p3ugh4kon', '198.199.92.98', 1690338033, ''),
('mc5fftd22q6rv3bc5577u9emneqj815g', '51.79.29.48', 1690231308, ''),
('mc64ojt350282qoecpbo8lk7b0423rh8', '143.110.222.166', 1690682962, ''),
('mc6omjbclqjrecj23tih0k5u4nsoccu4', '51.79.29.48', 1689368901, ''),
('md9h5d10v9hud02hi9fr0ieenh5ap578', '143.110.222.166', 1690453554, ''),
('mde7spo8btnr2bq9q1592b2i69mqthue', '143.110.222.166', 1690592925, ''),
('mdiuki6uo6ekmbbtumd8lnuj9ngjuj7c', '128.14.134.170', 1690494152, ''),
('mdup89fak5vetnmbtcuo4kb0vh78cm7s', '167.71.27.216', 1690345569, ''),
('mf4rj3vuqr7skdsmsuqq4aeshn014ksa', '51.79.29.48', 1690649050, ''),
('mff8scccgsve4nimg50ti2j7tq8cl7f3', '51.79.29.48', 1690150298, ''),
('mfreolkut5niulad2u0v29673lsps6mc', '54.37.79.75', 1690400334, ''),
('mgbh7708fa5h3mciqp2ib2k9uufghiup', '35.203.211.229', 1690550294, ''),
('mgjm23j9n34pgkdssk6kgms9421b2jmm', '51.79.29.48', 1689315917, ''),
('mh11p5a04ra8gemq2df94sccikv2qh6b', '54.37.79.75', 1690500326, ''),
('mhdhdeognajqi4clbm5fem0vv4dgb073', '198.235.24.164', 1690235790, ''),
('mhhp21dieo0m8m0h3mikhpaqks4r6o4e', '142.93.233.136', 1690319738, ''),
('mhn0lnthp8ldi1f4g7b6hoamkim2gdng', '143.110.222.166', 1689865157, ''),
('mj0utab2gmih2cqp6b1jb4kfcesmqgki', '71.6.232.22', 1689569677, ''),
('mjchvebrgdgvtkvli51qf7q5fq53nd3s', '88.172.119.230', 1690108841, ''),
('mjdbs4inddc2togki3fpu2jp75umscav', '54.37.79.75', 1689414772, ''),
('mjue4o4gg91nsfqrnfnedp2jh09huar5', '83.234.25.66', 1689569741, ''),
('mkhtsk1rj4kqko7dfb9jel106pt9lmsi', '143.110.222.166', 1689591727, ''),
('mkvl7jlckj6ap8scan858kfe6sdl3n78', '15.206.235.52', 1690200967, ''),
('mllintd8fr71ql03deklg9vf9o7n9l35', '51.79.29.48', 1689970028, ''),
('mlplrt104cvb6554177hl5ep9d7ipbhp', '91.224.92.16', 1689518710, ''),
('mm2uqbmk8ascv8ueavsc2uor1unr2t91', '128.199.49.201', 1689173893, ''),
('mn1k0b76vipn436tf7itbm7ioct638gj', '143.110.222.166', 1690672572, ''),
('mnqvun3mpqevp0arcsrv87t735evhjm8', '143.110.222.166', 1690603796, ''),
('mol0ug5cb1u1r8ml64k6n721tnkprop5', '143.110.222.166', 1689699957, ''),
('mol5gl5li6aogi1smmb66091u5vkcsic', '51.79.29.48', 1690571177, ''),
('mqqdkntug5303ec9i1cigeaqdlll1958', '2.57.121.193', 1690607993, ''),
('mrnecldqa5tmrco3bnmcqrpg27af0c5a', '45.156.128.7', 1690566665, ''),
('msed5oia8angnbi85n30jkqlceiknt70', '143.110.222.166', 1690380205, ''),
('mtmtlpbfq4m3ofcvk0n9oo9b8hieb1ae', '54.37.79.75', 1689401296, ''),
('mtoc6o21ll6h1a03m4l62a5s21adgck5', '143.110.222.166', 1689225603, ''),
('mtrhimmqitlr25mlcobp5meceqmjm91g', '143.110.222.166', 1689617072, ''),
('mu98ir7thbnjgs2tki15tr9nlphe5bqb', '143.110.222.166', 1689578123, ''),
('mue0fn7j977d2a5eqbbd14kc43mqit7e', '62.122.96.124', 1689965257, ''),
('mvotcie4ubpraeuni2kdkk86ro56bet9', '143.110.222.166', 1689282789, ''),
('n01hikmm5f756andmmhd5c2nctf22llj', '51.79.29.48', 1690178569, ''),
('n0vvf2dqea2ac6l21in7d0lpdkuvudlc', '143.110.222.166', 1690344629, ''),
('n1f4oiuiv4amha4c9m6gtm0ouli4gmqb', '185.180.143.11', 1690627596, ''),
('n29oi14j9b1i7f0k28p3ggai0obna0ks', '3.236.244.3', 1689974990, ''),
('n29oo88cor8a8tcuiftigmcfie8l65m4', '143.110.222.166', 1690823959, ''),
('n31n1rgf4aekepm6dangh8erlfutp6q9', '143.110.222.166', 1690493158, ''),
('n3foj177fuegan2v2h37r6ribpqrfhrb', '64.227.116.144', 1690685153, ''),
('n3g3a2qf0sj046d34b5edn2vk7cvdr8l', '143.110.222.166', 1689858459, ''),
('n408fcf8tpc6ar0ideps5tif766d1jgs', '84.17.46.207', 1690079644, ''),
('n512qjaog6e3krfv072mep61nhng5rhf', '51.79.29.48', 1689312404, ''),
('n5e6i9ljks8l2kocp97ash54vvg54407', '54.37.79.75', 1690057055, ''),
('n5g4ig9a1b5ighedqeinf41mtp5ab7k4', '91.224.92.16', 1689257667, ''),
('n5in0jjeonlgc1npnv24mmnrvj5hke98', '143.110.222.166', 1690297961, ''),
('n5rkniv5imp0nncr587o32u2t6ufbvbl', '162.243.131.5', 1689614138, ''),
('n6ei4uccvtjidtp36bsm9fjnqqt6eto1', '51.89.205.182', 1689188856, ''),
('n6nm3sf15o3tehm7j7cukfssem2tr614', '91.232.195.177', 1690415505, ''),
('n8kge6bfd6qaej26ec3640g66msb1ucc', '51.79.29.48', 1690781295, ''),
('n8nnidvcc0t334odsgc9c51t2m53m3d7', '185.180.143.81', 1690789729, ''),
('n8udh0cu77cbqckvrfauguo3huikpv59', '193.35.18.89', 1690484488, ''),
('n94svmi6dkn5ns44p5imkrucs0nnn38h', '43.134.93.67', 1689260753, ''),
('naat51i8vleou3tcr5kd562aa9hccjcl', '4.206.210.131', 1689182676, ''),
('nagnvmepb6a04cdoeaqjinittefr7qbm', '143.110.222.166', 1689185725, ''),
('nea7p0hue1ul8lo8b17oi1kmd6uk78vg', '209.97.190.162', 1690666503, ''),
('ned8tagl9fdtk9a2lpi67h7gmsb0ibdq', '143.110.222.166', 1689886642, ''),
('nfarnvvsf1om1inj51f6hfu4c45m7ush', '143.110.222.166', 1690331579, ''),
('ng2c4r9tq1g8s3fve2jbburg8rk3aht6', '143.244.50.173', 1690735183, ''),
('ngnq4gaecd2h0s769g3dfbd5ekdulcf3', '143.110.222.166', 1689807784, ''),
('ngrkne1ebo2avbcjb462ehoq0n8vht05', '51.79.29.48', 1689575340, ''),
('nhg396r4ol3tqlkkq4otj9hqm4lrv32q', '167.94.138.49', 1690159947, ''),
('nhm1i7ev8tr1pi4423u2lc7l2den2o41', '141.98.11.207', 1690243284, ''),
('nhpibrege8kp09ekad5s7csni6c5sqf3', '185.180.143.81', 1690759454, ''),
('njfn6me598ote2i1455s4m3p8enbtb32', '51.79.29.48', 1689638582, ''),
('njr33gjpieedtnagsduuc3ghacjmr23e', '143.110.222.166', 1689369071, ''),
('nkk0eab2vsu4loa7fp281r0mjjuie6s1', '51.79.29.48', 1690793391, ''),
('nko52pq6bffanlhlf1oc3cb5d84hbo27', '162.243.141.38', 1690797259, ''),
('nl0bigcp704v0tvu645tligs4lblsifi', '91.224.92.16', 1689677159, ''),
('nlh5i257jsgli01opscqiubjc46uugnu', '143.110.222.166', 1690543061, ''),
('nmcdevapfvv6t2n3nd6pl5qnk9fupq30', '98.252.92.217', 1690179214, ''),
('nmnfoek1tr7kd9uc8dpfiuhgrefosv5d', '143.110.222.166', 1689675701, ''),
('nn623jdmj6tisn1pn45ulgurk1lgp3h0', '54.173.19.126', 1689430333, ''),
('no40d4eie9qpv7fh91195ourlhto3dt0', '51.79.29.48', 1690354921, ''),
('noef1tr3ej94ptgutfla1r0e6ev0ens6', '167.94.145.59', 1689914559, ''),
('np9g3u0lo7qmmmauqv5tv9m2eoqppil0', '213.109.202.66', 1690268078, ''),
('npm6816ls7r6tj27pd73rfubpluniem4', '103.138.233.246', 1689412667, 0x61646d696e5f64657461696c737c4f3a383a22737464436c617373223a31373a7b733a383a2261646d696e5f6964223b733a313a2231223b733a343a226e616d65223b733a353a2241646d696e223b733a383a22656d61696c5f6964223b733a31333a2261646d696e40616d732e636f6d223b733a31303a226c6f67696e5f6e616d65223b733a353a2261646d696e223b733a31343a226c6f67696e5f70617373776f7264223b733a32343a226156502f4b7636484d47516b673933334266794d54673d3d223b733a31323a227478745f70617373776f7264223b733a393a2261646d696e40313233223b733a31353a2270726f66696c655f70696374757265223b4e3b733a393a22666f72676f745f6964223b733a313a222d223b733a31303a22756e697175655f6b6579223b733a33323a223037346363653337616133343532353639393865643934383661373639316636223b733a31333a226d6f6469666965645f64617465223b733a31393a22323032322d30322d31352032333a30383a3136223b733a383a2269735f61646d696e223b733a313a2231223b733a393a226d6f62696c655f6e6f223b733a31333a222b393139363632373434383439223b733a393a22757365725f73616c74223b733a33323a223466633534346639303566333338366238386630633434386665366330646464223b733a373a22757365725f6976223b733a33323a226633613130353232613366333838306633346630326365393639333161383361223b733a363a22737461747573223b733a313a2231223b733a373a22726f6c655f6964223b733a313a2231223b733a363a22635f64617465223b733a31393a22323032322d30322d31352032333a30383a3136223b7d70616765737c733a313337333a225b7b22706167655f6964223a2231222c22706167655f6e616d65223a2244617368626f617264222c22706167655f75726c223a2264617368626f617264222c226d645f69636f6e223a22686f6d65222c22616374696f6e5f6e616d65223a2264617368626f617264222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2232222c22706167655f6e616d65223a225573657273222c22706167655f75726c223a227573657273222c226d645f69636f6e223a226c697374222c22616374696f6e5f6e616d65223a227573657273222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2233222c22706167655f6e616d65223a224163636f756e74204d6173746572222c22706167655f75726c223a226163636f756e74222c226d645f69636f6e223a227573657273222c22616374696f6e5f6e616d65223a226163636f756e74222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2234222c22706167655f6e616d65223a225472616e73616374696f6e222c22706167655f75726c223a227472616e73616374696f6e222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227472616e73616374696f6e222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2235222c22706167655f6e616d65223a225061727479204c6564676572222c22706167655f75726c223a227472616e73616374696f6e5c2f7265706f7274222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227265706f7274222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2236222c22706167655f6e616d65223a2250726f66696c65222c22706167655f75726c223a2270726f66696c65222c226d645f69636f6e223a2275736572222c22616374696f6e5f6e616d65223a2270726f66696c65222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d5d223b73657373696f6e5f6b65797c733a33323a226e706d363831366c73377236746a32377064373372667562706c756e69656d34223b),
('npp3uetulsbmiak723j3ft9f6q6vbk6q', '54.37.79.75', 1689393192, ''),
('nqlcr33kttb5froiuialg5vshfstdmrt', '66.240.236.116', 1689654856, ''),
('nr3t43qp6dl6faiknoeivciokm59drue', '43.241.146.244', 1689347436, ''),
('nri761gcge1j3dmp6cp968dqipbmcdv1', '222.181.11.31', 1689937549, ''),
('nsh9c1juun9qvo7jq9s3av89ihs2pl65', '143.110.222.166', 1690841742, ''),
('nto9j0bli67bcv97k9rvtda98041dp48', '167.248.133.38', 1690649959, ''),
('nu9795hjnkcje21tj258v14p0qf5fced', '192.241.194.112', 1689351292, ''),
('nuhua44sslkugidouug7cqftsaf844ri', '143.110.222.166', 1690449804, ''),
('nv99st7m5s0vh04el660sq11ep8kpitc', '185.180.143.140', 1690536062, ''),
('o01fcuaokm565i0r36ub8fg1n5h14avd', '213.109.202.66', 1690111642, ''),
('o0tbond35ikp3vimpgj5r63d79ipsbr5', '94.102.61.10', 1689725367, ''),
('o1mvjagipjiqdmeidahgrqmhq3g7t7sm', '34.76.158.233', 1690818244, ''),
('o1si2j6oio8gkf5clvpcn9ocpgo7pbom', '54.37.79.75', 1690397027, ''),
('o2f4q2oj30jj4lk8dkuqso9i4nvmfu2m', '94.102.61.10', 1690479384, ''),
('o2nadj5146n6j1ccjd6k52k3earc0tsd', '191.101.174.82', 1690464866, ''),
('o2nsv904ed24d908f9edt6vihl7d43t0', '143.110.222.166', 1689322181, ''),
('o2sel4r9irfsh5e42r97c396oj1bmk43', '143.110.222.166', 1690257569, ''),
('o3eo6vj2mmmt0dtb7sqe0t4be5kner44', '167.71.78.209', 1689348388, ''),
('o3hv6l4bjcksvqihs9li3cqte0m3t5mc', '51.79.29.48', 1689636158, ''),
('o3ibsjgrpp7e4udk05msr8uf4rlph4mr', '51.79.29.48', 1689773903, ''),
('o3vchsh87g462bpmjec2g5spga3mqo4h', '51.158.37.186', 1689520546, ''),
('o5sdibh310r71mt17ue5mdrgakorg80k', '192.155.90.220', 1690620524, ''),
('o6rjrv2mu815k2uo50e8h2gm1d9p2mqp', '85.105.81.180', 1690631106, ''),
('o71l04hd35avibl2mr4btpaokbo89ptg', '143.110.222.166', 1689436624, ''),
('o813bg4pm1kh3cao6tt5ekvlmr4klk7s', '51.79.29.48', 1689300746, ''),
('o9hhlpg5v5q9j55l7j8utb2vobbu7d34', '143.110.222.166', 1689634836, ''),
('oaa7o2gcrivahv030pb7vkvauc6sjhof', '51.79.29.48', 1689343585, ''),
('ob9inr0otpup274opl35gl33b9odjku5', '141.98.11.207', 1689873913, ''),
('obmak20m65pg3kdlkp01hpm3ajh05orq', '143.110.222.166', 1690833791, ''),
('obppv2ggc1mtp2m4r0s02rup189f5i9n', '181.192.29.171', 1690759045, ''),
('obrh58kn8b7khlb67ul26p66u7g5pf65', '192.3.142.240', 1690254093, ''),
('od1veggsab7nbvve9u5vvonplq5b5igq', '106.75.70.50', 1690381868, ''),
('od6i6kf5928j9ogoel8th9lcgj7dknig', '143.110.222.166', 1689329142, ''),
('odmt1pe7mh0g4kj17ptju7o0nvem7qu6', '87.236.176.117', 1690618353, ''),
('oedj1bmkrjb0tugavj78pc3d0963ue81', '185.233.19.178', 1690682688, ''),
('oeehakse2fk6qjfkltqoh2u4ndigu74s', '54.37.79.75', 1690697549, ''),
('of0k9cm7j75fsqbf0phjabvtqsthugfa', '91.224.92.16', 1689813038, ''),
('ogp8khpd0pvjl3485lckt3rtil368dlm', '141.98.11.207', 1689255933, ''),
('oh35q301fsf3gmcggheehl8ukfub6rsf', '185.180.143.50', 1690412184, '');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('oh78ftk8c122c8r145a0inhk7f80g5fg', '152.58.37.146', 1689767445, 0x6d6573736167657c733a353a224572726f72223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d61646d696e5f64657461696c737c4f3a383a22737464436c617373223a31373a7b733a383a2261646d696e5f6964223b733a313a2231223b733a343a226e616d65223b733a353a2241646d696e223b733a383a22656d61696c5f6964223b733a31333a2261646d696e40616d732e636f6d223b733a31303a226c6f67696e5f6e616d65223b733a353a2261646d696e223b733a31343a226c6f67696e5f70617373776f7264223b733a32343a226156502f4b7636484d47516b673933334266794d54673d3d223b733a31323a227478745f70617373776f7264223b733a393a2261646d696e40313233223b733a31353a2270726f66696c655f70696374757265223b4e3b733a393a22666f72676f745f6964223b733a313a222d223b733a31303a22756e697175655f6b6579223b733a33323a223037346363653337616133343532353639393865643934383661373639316636223b733a31333a226d6f6469666965645f64617465223b733a31393a22323032322d30322d31352032333a30383a3136223b733a383a2269735f61646d696e223b733a313a2231223b733a393a226d6f62696c655f6e6f223b733a31333a222b393139363632373434383439223b733a393a22757365725f73616c74223b733a33323a223466633534346639303566333338366238386630633434386665366330646464223b733a373a22757365725f6976223b733a33323a226633613130353232613366333838306633346630326365393639333161383361223b733a363a22737461747573223b733a313a2231223b733a373a22726f6c655f6964223b733a313a2231223b733a363a22635f64617465223b733a31393a22323032322d30322d31352032333a30383a3136223b7d70616765737c733a313337333a225b7b22706167655f6964223a2231222c22706167655f6e616d65223a2244617368626f617264222c22706167655f75726c223a2264617368626f617264222c226d645f69636f6e223a22686f6d65222c22616374696f6e5f6e616d65223a2264617368626f617264222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2232222c22706167655f6e616d65223a225573657273222c22706167655f75726c223a227573657273222c226d645f69636f6e223a226c697374222c22616374696f6e5f6e616d65223a227573657273222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2233222c22706167655f6e616d65223a224163636f756e74204d6173746572222c22706167655f75726c223a226163636f756e74222c226d645f69636f6e223a227573657273222c22616374696f6e5f6e616d65223a226163636f756e74222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2234222c22706167655f6e616d65223a225472616e73616374696f6e222c22706167655f75726c223a227472616e73616374696f6e222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227472616e73616374696f6e222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2235222c22706167655f6e616d65223a225061727479204c6564676572222c22706167655f75726c223a227472616e73616374696f6e5c2f7265706f7274222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227265706f7274222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2236222c22706167655f6e616d65223a2250726f66696c65222c22706167655f75726c223a2270726f66696c65222c226d645f69636f6e223a2275736572222c22616374696f6e5f6e616d65223a2270726f66696c65222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d5d223b73657373696f6e5f6b65797c733a33323a226f68373866746b38633132326338723134356130696e686b3766383067356667223b),
('oj47cak4ibd70e00pgj6vlfgbhnt723j', '167.172.63.210', 1690608831, ''),
('ojd0b41hp6s1dia36n2j5h2c9pckeu4l', '143.110.222.166', 1690441965, ''),
('oji87kbbihaji2u39irh2b4fcp2mi692', '213.109.202.66', 1689310639, ''),
('ojjpbo0an6eeh33kipg4fbgaffj9cjb9', '167.94.138.126', 1690161410, ''),
('okct6aemh1eu3o1hagg7bb5qpjiuord1', '134.122.106.248', 1690553025, ''),
('okg9bk5dum4v3s6qsqqi0dq3kgojoq76', '51.79.29.48', 1689283847, ''),
('okivkvunnf1qhp3ejkc8udofarj3f1av', '170.64.153.56', 1690157677, ''),
('oldnd7ucl940369bfdnvo4bdk9jvs3r7', '74.82.47.2', 1690597400, ''),
('on6sf2aup1i1jhee5jqc3eiursmn1k80', '143.110.222.166', 1689289289, ''),
('onccvs77t7ne83p3a7tqsn05m4jeqaac', '143.110.222.166', 1689747102, ''),
('onnfdl1qit0e0g2t4joa8a8i6cnak7dp', '143.110.222.166', 1690882036, ''),
('oo4cr2u3jf4tvj1iejk645ql483pjgsl', '43.246.208.12', 1690661194, ''),
('oobmghng9to290acpsu48skihooaga8g', '103.110.33.235', 1689623250, ''),
('ooftfj4jbvis0plpvfvkt9lhac32uct4', '112.193.162.15', 1689937518, ''),
('oqi0hj6kocksf1lnn3vd9k67e2nk5vb3', '143.110.222.166', 1689912562, ''),
('or8dflm0jgpd7dv4udk91limj1f04mlu', '20.211.161.6', 1690102159, ''),
('oredtge00t5jhf894nvefj0n2rdudksb', '54.37.79.75', 1689481387, ''),
('orpjpdtavmjb2iggt7btfevbb9dooc6q', '178.128.58.3', 1689958334, ''),
('orqlegbgkg5h66puvvtlhi11u4977srs', '147.182.223.249', 1690116440, ''),
('osnmbdonc8os0mi10mqghmu4sq90c75u', '178.32.197.93', 1690262486, ''),
('ot747ij3injov440s2kj64s53bedjjqg', '143.110.222.166', 1689480242, ''),
('otf0d9p3r6bkf60ma2sub9ihdgl8cr07', '51.79.29.48', 1689709255, ''),
('ou9nqh90uv4k55rbqnsnlpjo1c4rpesb', '143.255.240.160', 1689750891, ''),
('ovj6vmj8auv81sh4vrbdajcq69jb2q46', '185.81.93.43', 1689906435, ''),
('ovlav4udn9i9onmi0crg3llvcd6p7nvq', '143.110.222.166', 1690099998, ''),
('p029neumbf2rd3fcsn8egoq9ka1tjgao', '36.91.171.37', 1690387931, ''),
('p0hlm2bsnfh2hs179hbb71op204sjhle', '143.110.222.166', 1689653621, ''),
('p0n0154niu9l42cahg6ag0dp4qbvaram', '92.118.39.40', 1689707656, ''),
('p18mafv382a32g2nmjdd8shrkb61mvqc', '213.109.202.66', 1689534070, ''),
('p1g4k5912n9cj2otbae4p0o9tcet8msv', '213.109.202.66', 1689827410, ''),
('p2p5tb2mq4br4h62lqsvcel8qbo2gahm', '54.37.79.75', 1690463037, ''),
('p419i9gd4l7hcs88ivtir3n84bip0u9o', '143.110.222.166', 1690157941, ''),
('p4skivlde9as6elkgv4tjo2ctshaf670', '167.94.138.52', 1690751772, ''),
('p5agrp95vb3tdrbrsqb213d7rn2h1ijv', '83.97.73.87', 1690616492, ''),
('p5fl8b7pdfth1ij7cfb8tlp68jkp7uig', '170.64.180.232', 1690387216, ''),
('p5h4c47ldpata7po8im9nm879r872p28', '54.37.79.75', 1690288744, ''),
('p5mbdtqqb7c2udd248jc6mblkp61kc1m', '193.35.18.89', 1690478631, ''),
('p69valqq7crlun92oq63qa9p3rc1cskh', '143.110.222.166', 1690845078, ''),
('p6g5ks7rboo5kfmbe83hplk4sq64k99b', '103.138.233.246', 1689593420, 0x61646d696e5f64657461696c737c4f3a383a22737464436c617373223a31373a7b733a383a2261646d696e5f6964223b733a313a2231223b733a343a226e616d65223b733a353a2241646d696e223b733a383a22656d61696c5f6964223b733a31333a2261646d696e40616d732e636f6d223b733a31303a226c6f67696e5f6e616d65223b733a353a2261646d696e223b733a31343a226c6f67696e5f70617373776f7264223b733a32343a226156502f4b7636484d47516b673933334266794d54673d3d223b733a31323a227478745f70617373776f7264223b733a393a2261646d696e40313233223b733a31353a2270726f66696c655f70696374757265223b4e3b733a393a22666f72676f745f6964223b733a313a222d223b733a31303a22756e697175655f6b6579223b733a33323a223037346363653337616133343532353639393865643934383661373639316636223b733a31333a226d6f6469666965645f64617465223b733a31393a22323032322d30322d31352032333a30383a3136223b733a383a2269735f61646d696e223b733a313a2231223b733a393a226d6f62696c655f6e6f223b733a31333a222b393139363632373434383439223b733a393a22757365725f73616c74223b733a33323a223466633534346639303566333338366238386630633434386665366330646464223b733a373a22757365725f6976223b733a33323a226633613130353232613366333838306633346630326365393639333161383361223b733a363a22737461747573223b733a313a2231223b733a373a22726f6c655f6964223b733a313a2231223b733a363a22635f64617465223b733a31393a22323032322d30322d31352032333a30383a3136223b7d70616765737c733a313337333a225b7b22706167655f6964223a2231222c22706167655f6e616d65223a2244617368626f617264222c22706167655f75726c223a2264617368626f617264222c226d645f69636f6e223a22686f6d65222c22616374696f6e5f6e616d65223a2264617368626f617264222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2232222c22706167655f6e616d65223a225573657273222c22706167655f75726c223a227573657273222c226d645f69636f6e223a226c697374222c22616374696f6e5f6e616d65223a227573657273222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2233222c22706167655f6e616d65223a224163636f756e74204d6173746572222c22706167655f75726c223a226163636f756e74222c226d645f69636f6e223a227573657273222c22616374696f6e5f6e616d65223a226163636f756e74222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2234222c22706167655f6e616d65223a225472616e73616374696f6e222c22706167655f75726c223a227472616e73616374696f6e222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227472616e73616374696f6e222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2235222c22706167655f6e616d65223a225061727479204c6564676572222c22706167655f75726c223a227472616e73616374696f6e5c2f7265706f7274222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227265706f7274222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2236222c22706167655f6e616d65223a2250726f66696c65222c22706167655f75726c223a2270726f66696c65222c226d645f69636f6e223a2275736572222c22616374696f6e5f6e616d65223a2270726f66696c65222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d5d223b73657373696f6e5f6b65797c733a33323a22703667356b733772626f6f356b666d6265383368706c6b34737136346b393962223b7374617475737c4e3b5f5f63695f766172737c613a323a7b733a363a22737461747573223b733a333a226f6c64223b733a373a226d657373616765223b733a333a226f6c64223b7d6d6573736167657c733a303a22223b),
('p6no29nceqjsuakut2957fh755mjq5qc', '159.223.55.198', 1690486438, ''),
('p7p742n2j6vdq8q241r90me00abqs3n7', '80.94.92.15', 1689673307, ''),
('p817ue78gucf1crsuq0jansigqa9539h', '31.220.1.83', 1690058334, ''),
('p8adu8fgeudqepsoh0rsdul5gn6lo898', '167.94.145.59', 1689914558, ''),
('p8qsum1p23aktar6m9a558tkijjo6kj6', '143.110.222.166', 1689317947, ''),
('p95u3qolkkjl1er8nc07btc2uc37ntf3', '91.224.92.16', 1689627649, ''),
('p991kgogfhra9l3r0a8n9c1trr3g6iqu', '143.110.222.166', 1690384282, ''),
('p9jj0a36k8pkhcd3r4l1elptmiikae8q', '143.110.222.166', 1689880200, ''),
('pafi7cofni4q4ioi7km7g7abes72vn6p', '143.110.222.166', 1690113724, ''),
('pb6p1e0ltruqp7iktr6khl8v7qb3eeak', '51.79.29.48', 1689302541, ''),
('pbdm3al43l293iovucj1j7v0pgd7et6l', '143.110.222.166', 1689796678, ''),
('pbrui17p7hv8n1dgp3u0cihn93d4qfol', '143.110.222.166', 1690307967, ''),
('pgr17n8o9o5fq74j7qtrgan52gtffqci', '167.248.133.127', 1690305354, ''),
('ph2821tnrv2jr7n915p6tvu0ujvd2a2v', '143.110.222.166', 1689279543, ''),
('phpoagesmbhr1efrlvmv60ish3skjcl5', '95.214.27.190', 1689552276, ''),
('pic4u3bqcbh8o51dk5hsph49u4g2qb5v', '20.81.225.229', 1689396229, ''),
('pjv1ehhb5vmnemihgdlgpdlslgdrt3nb', '51.79.29.48', 1690163221, ''),
('plrdpkho9ahhcpgjogn4dv7ogeh82h0n', '54.37.79.75', 1690391990, ''),
('pluhsm6hsospuirdnbat17mav7tpvjvj', '143.110.222.166', 1690182160, ''),
('pm435dms6j1b10rfa34c55nt3hmmd1jj', '180.242.212.3', 1689833827, ''),
('pm8ngm60abluk26csead07mqd854rish', '51.79.29.48', 1690578746, ''),
('pmcfviubqoerseuk6dl6qtru06o1v1js', '193.176.244.245', 1690421136, ''),
('pnast2jf97si43apsnnekciu2es9h8ua', '213.109.202.66', 1689827862, ''),
('pnd3u33m9i8aarujd2vsn0klrkora8aq', '23.23.29.45', 1689958965, ''),
('pndf65m3ajqsu2lpchb6o6v4c2udidf7', '143.110.222.166', 1689991359, ''),
('pp0teuooght7eu5flpgrdv0i928uucsl', '103.110.33.235', 1689222359, ''),
('pprqjk56ni8r9avlbsb94v576l75jom9', '213.109.202.66', 1690515345, ''),
('pqku5jtsege2g4mthl1qdnpg4couf4tg', '162.142.125.215', 1690371595, ''),
('psjjincd6gna0gkib2b7oa5qp5e5j5pt', '51.79.29.48', 1689578232, ''),
('psrg1kqnijg0630r4ijk4s2tsmhdscmg', '143.110.222.166', 1690708511, ''),
('pui6s0074tjp40l9p7egv5iddvvctvei', '15.206.235.52', 1690200967, ''),
('pvj8a43v1jeo5qnp424a8s1odapdae5b', '143.110.222.166', 1689760912, ''),
('q0lhre0vm7ng99a67sv19tdgbv4mpdjj', '159.203.46.89', 1690879289, ''),
('q2bpq3mh8r0m22dr38oi109mric6pc1v', '54.37.79.75', 1690490052, ''),
('q34ne5gdrtehft5521g63vus9changu9', '162.142.125.215', 1690371594, ''),
('q3dvec2n3eioi3u87ucb8f3hthkgusv0', '54.37.79.75', 1690702290, ''),
('q3jjoh5ni5t7nme9sngdos2fb87scveo', '34.77.127.183', 1689254552, ''),
('q3m8qo227ihshli4fp8c6urbd7ots8e9', '146.19.215.41', 1690551056, ''),
('q3s8i0f29qbihho287eq3946toduifrj', '143.110.222.166', 1690446302, ''),
('q41m5r57ds7u1s8kjq5nuq4makvufvu4', '141.98.11.60', 1690759116, ''),
('q4a9l58vf8ebts2bhcbjtv9lvglgdjuc', '54.37.79.75', 1689542160, ''),
('q4hnag0kbaa5esma3i3i3nh0huna05fn', '54.37.79.75', 1690032282, ''),
('q4p1sm1ijfs9gtqv5j4kt8f3bgejkv3n', '124.156.238.47', 1689482747, ''),
('q52btechoakjtaju04im7dm9vvdh9avr', '54.37.79.75', 1690705195, ''),
('q54prpir773p2atb79cjo8oc01huei39', '71.6.232.25', 1690781898, ''),
('q55d17f43uh4f0m1od8jpf7bqr72p3ar', '45.55.66.139', 1689724436, ''),
('q5k6bugcmpv3ftmllhkm0dmn4gbnemdf', '143.110.222.166', 1690045739, ''),
('q5lrdsktq1rn9ha9ritnh17o9k9km2k9', '143.110.222.166', 1689952310, ''),
('q6btqio9updkti99catnmchodu056jtk', '47.41.194.40', 1689410983, ''),
('q70d4p78pi4nl5eb1vk4c2b3vjhuv4i3', '43.241.146.244', 1689324351, ''),
('q7pcilg3abrokdsk8fo3g2v050n5qt6n', '143.110.222.166', 1690455591, ''),
('qalt4bd3apojnhi0rq54namu7m53tu1q', '125.166.118.171', 1690054093, ''),
('qd8ai6u71556dvgf4g2eej3pa03n0oip', '143.110.222.166', 1689600040, ''),
('qduajosdu7ecrpjrcv7o5atvfimttb8r', '221.11.4.151', 1690384485, ''),
('qf15u2s14klapniefr1agf2739uhn4nj', '143.110.222.166', 1690348450, ''),
('qfi8ob5f0md0nrfid2ob3a09nbhjbeel', '213.109.202.66', 1690486012, ''),
('qft7ip10rl6q6i5p3onaj5p2ld6qdipb', '174.138.61.44', 1689315548, ''),
('qj1e0nk29qc95drr90vqjpmkc56dic6o', '143.110.222.166', 1690589718, ''),
('qjjrutadt6mcqhorqdv2n45f7ed95s4s', '54.37.79.75', 1690709642, ''),
('qknpb3cuarlsdcv17ptjbfltrdi8mc4m', '92.118.39.40', 1690235699, ''),
('qkoek3ucc2dvsfe84dom99ovtpt8ugek', '141.98.11.60', 1690666584, ''),
('qkvonr2mavcqossqhsrn8ejm26hlmbj9', '192.241.222.76', 1690268533, ''),
('qm1mg4mpvjnd678jk4pes0mcgqoksn39', '192.241.217.47', 1689527732, ''),
('qm6g6q1dipcajve1dnn4os3a20qq1fit', '143.110.222.166', 1690685898, ''),
('qpefio2oh3256pe07tpc592vql4bterf', '213.109.202.66', 1689546513, ''),
('qpojg5rkps91g44aodmnv6ag5d3nds80', '213.109.202.66', 1689205811, ''),
('qpr80p2i69qmlsrfihtc2gucm9ohro61', '143.110.222.166', 1689656670, ''),
('qrub506gthroe8pbqf03vq95vceid74k', '143.110.222.166', 1689375844, ''),
('qs10lkcrajhb645u5g78817pno6nmni8', '54.37.79.75', 1689492318, ''),
('qs79uehk6nha46sl7a3b89d70ptp3ruv', '193.56.29.190', 1689631504, ''),
('qs9ann096njmgms54dm4rio5bkbtj8h1', '2.57.122.233', 1690295062, ''),
('qsuqjjq9m5mhqv93oicgi43ul1658a33', '92.118.39.40', 1690803204, ''),
('qt09896upc67s7i2aooc3m0cqpcn1gnq', '213.109.202.66', 1690102244, ''),
('qtrhmcscevfhccc7qespor2cm8muqnva', '24.199.85.247', 1690095936, ''),
('quiqg761q9ns654ot774i5bj3ip6d2fj', '91.224.92.16', 1689189043, ''),
('qvlqji6f0g3fddm3cugsqbjj14b9juvc', '118.126.124.10', 1689972097, ''),
('qvti2c8b80pse9901et5hrpeh9o84khq', '167.94.138.33', 1689276811, ''),
('r00uu3ibl7ucp143gegbs4pj8cu3jl0a', '45.33.87.154', 1689409057, ''),
('r017c0hn380k7krmego7nn2uvqne3sl2', '143.110.222.166', 1690640207, ''),
('r0pthfprbqera06qkml9urf0njnj5jpc', '143.110.222.166', 1689793635, ''),
('r191v1409nas132pcbm4rnf8b31qi4ov', '65.49.1.55', 1689584215, ''),
('r25i2qo3e60sip5qq14lfn8s08j9ggkt', '54.37.79.75', 1690388230, ''),
('r26fqvr9k5r3e4pfkn3r49ltc4b8qcma', '213.109.202.66', 1689396753, ''),
('r29egkd2jk9c5hr7veg237e6qh8tb116', '143.110.222.166', 1689188930, ''),
('r36aus4gnqm3jc57q6q21ulp1vmijnug', '128.1.248.42', 1689478697, ''),
('r3jb4s0o6h4bmbdbmhmftfd3uglk8bd9', '143.110.222.166', 1690132196, ''),
('r3ldqdursd81bd5i1kmueoicjeqm64mb', '159.203.46.89', 1690879292, ''),
('r44v4h8isamv6cbjlm6ob56rkbb6hse9', '213.109.202.66', 1689844378, ''),
('r4fhmb0djg35tbt2jp1ho24t06lttuun', '143.110.222.166', 1690056894, ''),
('r4g2pphr33j9lu317hbebmb5lliqqda9', '143.110.222.166', 1690715771, ''),
('r56u5fbbq5amnudc6esik54ik16djpk0', '167.71.38.185', 1689705570, ''),
('r5dmuga2v2hjakfgk0gdku8ap9e2i9d6', '143.110.222.166', 1690294786, ''),
('r6eaa8kp5u07dhddpvdm1rsilk4tii7d', '185.180.143.11', 1690464972, ''),
('r749k9trqktiu60837keaq8olu0rb73i', '213.109.202.66', 1690269009, ''),
('r7tj4rhbhl1vjulpjhr11oc7oub1fh6a', '143.110.222.166', 1689696500, ''),
('r8ihrqqo898nm0cvne0gltganpkvmjuj', '170.64.179.243', 1690567230, ''),
('raao5esvpva1fju9bg0im93arf41vekm', '137.184.255.55', 1690716247, ''),
('raci3g5dngec65o340umo6ae0fat93jh', '103.149.192.149', 1689839174, ''),
('rao4p7bn4vchn3e6rju2vb1c0bund5ob', '54.37.79.75', 1690849591, ''),
('ravlhlov3sup033r6ok42tkl05tsk5cu', '170.64.134.120', 1689723273, ''),
('rdp8q842d7gubqllcq2g53cu6ur09k1b', '143.110.222.166', 1690564455, ''),
('rdqjd7q8fovvl8qmt58lqet93ktuh5ea', '54.37.79.75', 1690304965, ''),
('rdtkndnahprtljmunvp19pstro4ck0kl', '35.233.62.116', 1690103860, ''),
('relvhh6qvfm5rhjhqa0e7an3a9qau3se', '15.206.235.52', 1690471116, ''),
('rghcq1bdspf60boc32th1siie4j5s8qu', '143.110.222.166', 1690408666, ''),
('rgpt2eimor8a5jpjf9qc758l9sb8tq1u', '185.180.143.137', 1690601447, ''),
('rgslgce9rf56v5hd8ltoo0e0c4q9haq1', '52.114.32.28', 1689171712, ''),
('rh016jhb1ci1jh3q1lkgd5d8hntbt4jd', '139.59.58.140', 1690784803, ''),
('rh3h9t6fpvc2bmo3ccpsitev7s1v4tin', '107.20.131.111', 1689376333, ''),
('rhh5cvbaoq33vhte8evcpe6mem5tm49q', '143.110.222.166', 1690138892, ''),
('rhl0bl8a2pdrprd2n2464urtg0m8ck2g', '143.110.222.166', 1689937386, ''),
('ri4256ubdog42ept9cqp1ubm8fu7if5h', '143.110.222.166', 1689326459, ''),
('rje6lnhss467sruq2t2lc0fns4qi6jbk', '205.210.31.96', 1689928375, ''),
('rjes182hqkm6va1th68df5e486gpc8qq', '141.98.11.207', 1689625345, ''),
('rllj8sm0j222rgh7h7pel0on6sa56nno', '92.118.39.40', 1689856751, ''),
('rlnogejuc4ctkgn1rlmmdnrmg797todf', '143.110.222.166', 1689357589, ''),
('rlq55nj5ds1j0r37ukiis3v4v936bisp', '143.244.50.173', 1690382183, ''),
('rls46e430ccdub6pag3vtd6kpn34hgui', '51.254.59.113', 1689991702, ''),
('rltjir9c2iqjimtim5iokla9659o196c', '51.79.29.48', 1690369059, ''),
('rm064gg4oaholg6d1n5g5sdttkc278jg', '143.110.222.166', 1690103884, ''),
('rm0er50h8kcvc0q1g74u04uh1g2q2028', '191.101.174.83', 1690464866, ''),
('rm4m09fdpvib5j54l0qeopf8s1jfop76', '143.110.222.166', 1689423348, ''),
('rmds811e5t8pk9h94stg41tceekkmg78', '143.110.222.166', 1690034257, ''),
('rnavpjvsjbd7hm597disdh73ot809atj', '45.156.129.12', 1690679304, ''),
('rns1flh98jemsmnse56ibnjrs5s5fh9f', '143.110.222.166', 1689510008, ''),
('roge0opgc5916h45vbbqdrq86i2r1sl2', '54.37.79.75', 1689551991, ''),
('rp2t6qvi9g98ld3o882aq9o1vufrdufn', '143.110.222.166', 1689984505, ''),
('rpn9q50fvqh932srlgt5apj46jruol9v', '143.110.222.166', 1690279895, ''),
('rpvd7nqrepoovml8at5qm3ck0chukfnt', '51.198.119.103', 1690722412, ''),
('rq7tm0655sfccenvgtbnvdjmde1p20ev', '35.203.210.215', 1690627751, ''),
('rqn31ttpsr3tqmv7267t6cbj45a0236k', '206.189.152.113', 1690424470, ''),
('rrbdgq51okf7puntdqdjn57gudisu3fm', '51.79.29.48', 1689325278, ''),
('rrh7pvmtgeemt4oisfio422jsjat080k', '23.150.248.152', 1689594690, ''),
('rrjqmabvio56vgdcq2t7mai300a02pn1', '185.180.140.6', 1690666623, ''),
('rrki4ebm1aik7h09uah7bfkq4j6vfiet', '143.110.222.166', 1689667881, ''),
('rs386dambh6rgsco6gbuto709sjek4n9', '20.211.161.6', 1689529198, ''),
('rsdh671gonjrp5u943548egcfjv0ragd', '159.223.55.198', 1690339208, ''),
('rt56f59aal183763h9bimpv3l2536njk', '143.110.222.166', 1690485031, ''),
('ruvecsabc5fjidu19tluit11nb7nsg4i', '143.110.222.166', 1690070800, ''),
('rv1h91dd440crrn8prgcqb821ena1bd4', '139.99.9.160', 1689970059, ''),
('rvhcer4cu6gf7qnmbr8tlcgggnhj8m5a', '51.79.29.48', 1690903911, ''),
('rvjfpackll4lgvuf5gbcnqcuu9ltid2q', '143.110.222.166', 1690736688, ''),
('rvlmhbq08iruboh4pgvfp20anndugr47', '146.190.134.26', 1689794518, ''),
('s06r0a3pqummna54c593uhtu167a27l0', '167.94.146.57', 1689376547, ''),
('s1dk9iu4vo0jn95h6roh3fahdprgqhdl', '209.222.252.91', 1689444353, ''),
('s31ebuvepgtb65r5m01g3g2r489cl60s', '162.216.150.93', 1689998935, ''),
('s39fjeafau5spb5ona5k9qmhseucvudk', '213.109.202.66', 1689401358, ''),
('s3upu9sl22vft22nd3fova1pdm4pvvv3', '::1', 1689171031, 0x61646d696e5f64657461696c737c4f3a383a22737464436c617373223a31373a7b733a383a2261646d696e5f6964223b733a313a2231223b733a343a226e616d65223b733a353a2241646d696e223b733a383a22656d61696c5f6964223b733a31333a2261646d696e40616d732e636f6d223b733a31303a226c6f67696e5f6e616d65223b733a353a2261646d696e223b733a31343a226c6f67696e5f70617373776f7264223b733a32343a226156502f4b7636484d47516b673933334266794d54673d3d223b733a31323a227478745f70617373776f7264223b4e3b733a31353a2270726f66696c655f70696374757265223b4e3b733a393a22666f72676f745f6964223b733a313a222d223b733a31303a22756e697175655f6b6579223b733a33323a223037346363653337616133343532353639393865643934383661373639316636223b733a31333a226d6f6469666965645f64617465223b733a31393a22323032322d30322d31362030343a33383a3136223b733a383a2269735f61646d696e223b733a313a2231223b733a393a226d6f62696c655f6e6f223b733a31333a222b393139363632373434383439223b733a393a22757365725f73616c74223b733a33323a223466633534346639303566333338366238386630633434386665366330646464223b733a373a22757365725f6976223b733a33323a226633613130353232613366333838306633346630326365393639333161383361223b733a363a22737461747573223b733a313a2231223b733a373a22726f6c655f6964223b733a313a2231223b733a363a22635f64617465223b733a31393a22323032322d30322d31362030343a33383a3136223b7d70616765737c733a313134373a225b7b22706167655f6964223a2231222c22706167655f6e616d65223a2244617368626f617264222c22706167655f75726c223a2264617368626f617264222c226d645f69636f6e223a22686f6d65222c22616374696f6e5f6e616d65223a2264617368626f617264222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2232222c22706167655f6e616d65223a225573657273222c22706167655f75726c223a227573657273222c226d645f69636f6e223a226c697374222c22616374696f6e5f6e616d65223a227573657273222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2233222c22706167655f6e616d65223a224163636f756e74204d6173746572222c22706167655f75726c223a226163636f756e74222c226d645f69636f6e223a227573657273222c22616374696f6e5f6e616d65223a226163636f756e74222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2234222c22706167655f6e616d65223a225472616e73616374696f6e222c22706167655f75726c223a227472616e73616374696f6e222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227472616e73616374696f6e222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2235222c22706167655f6e616d65223a225265706f7274222c22706167655f75726c223a227472616e73616374696f6e5c2f7265706f7274222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227265706f7274222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d5d223b73657373696f6e5f6b65797c733a33323a22733375707539736c323276667432326e6433666f76613170646d347076767633223b),
('s5i2a58j98dn9rp0bcqann1147n6k7rm', '20.111.40.106', 1690345890, ''),
('s5sipflr09repg3q3vqics2i7ktt05d9', '103.149.192.167', 1690503388, ''),
('s620loollsn455qem3ulb46jt0qtbc4h', '5.35.130.91', 1690181669, ''),
('s65e11ccu6bqcc2rd1omqvsedid4t6vh', '216.218.206.67', 1689333481, ''),
('s6e67i1mrr21fka2srfa6ka73n0cm83i', '180.253.165.128', 1689405413, ''),
('s7fef6rqkevn3ni4kqputp84kgf3ves7', '20.111.40.106', 1690340411, ''),
('s970l621qrotethp1inm7qblma70b83u', '51.79.29.48', 1690243497, ''),
('s980po50ku0nbne87mmah4076q7bh8gf', '51.79.29.48', 1689189182, ''),
('s9maoig5mkrnkel80dvcvjm64d3kpvhc', '43.241.146.145', 1690192761, ''),
('sas8km9n4mplg0un6ram98v26qe41jcg', '143.110.222.166', 1689822752, ''),
('sbflt7jb154ms1pcsd4cc75odnvlrl2m', '143.110.222.166', 1690626031, ''),
('sc2jlooqk7t64db2v0ipdthmnq6it5j2', '192.241.236.34', 1689441511, ''),
('sc4hjeu9u3ghu04ltdg9dcnkr8qqn53e', '143.110.222.166', 1690042247, ''),
('se3blhpu646rtkl51nnil0lpr8lav8ps', '143.110.222.166', 1689452409, ''),
('se9pe1do1lq2sgvkt22mqliuki1jaoi1', '51.79.29.48', 1689810364, ''),
('sf2sjv88kseikru3agfru8qgb82omtr3', '185.180.143.72', 1690398758, ''),
('sf8ajq8qh9dm4ps6n11vop966lbrjole', '143.110.222.166', 1689782872, ''),
('sfctqguhma00d73d8nc4ur9vu123iu5c', '180.107.204.109', 1689564603, ''),
('sg7nk0u52l1irnhethec3sko1cc81ujd', '185.153.179.167', 1690484293, ''),
('sggt0r3ufvuvg32jeei38t7dgvmn9ukp', '20.211.161.6', 1690187517, ''),
('sh0skt69ht6m38qctc7vd5ulg9dmml16', '35.216.136.183', 1689721202, ''),
('shrakscq2bhnrbvq3ii5d0pb05oi4a56', '118.126.124.10', 1689799947, ''),
('si02q1huujm3mp7j4vdal41djh4hr749', '51.79.29.48', 1690173170, ''),
('si2rtmeaiug62j46u9qbgoa17tee9snq', '94.78.99.65', 1690192019, ''),
('si39cd5s6ilskeb2g7n37vbj1485kv61', '143.110.222.166', 1690236314, ''),
('si97b2ccsd4dce8fa5m5cpa7u40cajhj', '34.76.158.233', 1689932543, ''),
('sips133v3c7kb33c5eemt161pcnjktfi', '35.203.211.90', 1690864068, ''),
('sj1g44jluuga633pfjh0o57ppcr5aiok', '41.215.116.9', 1690568085, ''),
('sjm9tua6o6ivpn1pvgbsv9cdlt16m4f9', '103.138.233.246', 1689913745, 0x61646d696e5f64657461696c737c4f3a383a22737464436c617373223a31373a7b733a383a2261646d696e5f6964223b733a313a2231223b733a343a226e616d65223b733a363a22474142424152223b733a383a22656d61696c5f6964223b733a31333a2261646d696e40616d732e636f6d223b733a31303a226c6f67696e5f6e616d65223b733a363a22676162626172223b733a31343a226c6f67696e5f70617373776f7264223b733a32343a224d3950322f72723967544c30624f7576793139724e773d3d223b733a31323a227478745f70617373776f7264223b733a363a22393837363534223b733a31353a2270726f66696c655f70696374757265223b4e3b733a393a22666f72676f745f6964223b733a313a222d223b733a31303a22756e697175655f6b6579223b733a33323a223037346363653337616133343532353639393865643934383661373639316636223b733a31333a226d6f6469666965645f64617465223b733a31393a22323032322d30322d31352032333a30383a3136223b733a383a2269735f61646d696e223b733a313a2231223b733a393a226d6f62696c655f6e6f223b733a31333a222b393139363632373434383439223b733a393a22757365725f73616c74223b733a33323a223466633534346639303566333338366238386630633434386665366330646464223b733a373a22757365725f6976223b733a33323a226633613130353232613366333838306633346630326365393639333161383361223b733a363a22737461747573223b733a313a2231223b733a373a22726f6c655f6964223b733a313a2231223b733a363a22635f64617465223b733a31393a22323032322d30322d31352032333a30383a3136223b7d70616765737c733a313337333a225b7b22706167655f6964223a2231222c22706167655f6e616d65223a2244617368626f617264222c22706167655f75726c223a2264617368626f617264222c226d645f69636f6e223a22686f6d65222c22616374696f6e5f6e616d65223a2264617368626f617264222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2232222c22706167655f6e616d65223a225573657273222c22706167655f75726c223a227573657273222c226d645f69636f6e223a226c697374222c22616374696f6e5f6e616d65223a227573657273222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2233222c22706167655f6e616d65223a224163636f756e74204d6173746572222c22706167655f75726c223a226163636f756e74222c226d645f69636f6e223a227573657273222c22616374696f6e5f6e616d65223a226163636f756e74222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2234222c22706167655f6e616d65223a225472616e73616374696f6e222c22706167655f75726c223a227472616e73616374696f6e222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227472616e73616374696f6e222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2235222c22706167655f6e616d65223a225061727479204c6564676572222c22706167655f75726c223a227472616e73616374696f6e5c2f7265706f7274222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a227265706f7274222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2236222c22706167655f6e616d65223a2250726f66696c65222c22706167655f75726c223a2270726f66696c65222c226d645f69636f6e223a2275736572222c22616374696f6e5f6e616d65223a2270726f66696c65222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d5d223b73657373696f6e5f6b65797c733a33323a22736a6d39747561366f366976706e317076676273763963646c7431366d346639223b7374617475737c4e3b5f5f63695f766172737c613a323a7b733a363a22737461747573223b733a333a226f6c64223b733a373a226d657373616765223b733a333a226f6c64223b7d6d6573736167657c733a353a224572726f72223b),
('sk04q8govtv3bhusvg3fo6kp9mdlo53v', '31.220.1.83', 1690665017, ''),
('skelh3nbs20o05blqh6e8klunksjvjai', '51.79.29.48', 1689201033, ''),
('skfu42gvajmcm6st6jr8236uf2f2l4qg', '51.79.29.48', 1690123004, ''),
('skg8c25f2h2kq8d2vq7b9ocbc69cs228', '143.110.222.166', 1689447891, ''),
('sm296onb05tptb9louil6p68b3svipdt', '146.190.38.179', 1690777651, ''),
('sm2mcigirumc1o2cjgh0v02ksjd9derm', '45.156.129.12', 1690492984, ''),
('snap8m6h3vvpdb65kdh7k6iits0sbdql', '143.110.222.166', 1690857047, ''),
('sqnthr00hoo6tak4qf8fl0t7f38omu2d', '139.59.172.189', 1690136880, ''),
('sr6n9thd17oqucuebppl9j5fo2r4n1l7', '20.234.37.63', 1690800946, ''),
('sriesh46s56k7c57qo7v00kd7iskkb8g', '213.109.202.66', 1690100576, ''),
('ssn6v81qi8l6nkmotg1lfp4c8dt1bm1q', '51.79.29.48', 1690806363, ''),
('su9hhcrssp540pghptandm7sgjmotdnq', '143.110.222.166', 1690327770, ''),
('suj1380mgf1gtn51buu9cunnvpti8s0p', '205.210.31.9', 1689430944, ''),
('svdvp8sjkr27pbiq0pd498llkci7vi01', '51.79.29.48', 1689459455, ''),
('t0hoq04dqie376po8a33puq1rc72mtdd', '143.110.222.166', 1690106318, ''),
('t0mtsid7argjkcbfte8gtfai1mkj7i21', '143.110.222.166', 1689238773, ''),
('t0oc9epifn9v2l2gh310e9cp71dss56a', '184.105.139.69', 1689214380, ''),
('t1de6ohiap7bu76d1ilml3b50ukrjjnj', '206.81.23.245', 1689525547, ''),
('t1o6v6s4jhnktig3h19rtbfs4rtna6fs', '83.97.73.87', 1690650440, ''),
('t1vph5iu2goiricvcp0q2aah3olrv2b6', '146.190.166.168', 1690200079, ''),
('t2d2vu0e4jgkl7leloni08dmql4v2alb', '51.79.29.48', 1689322751, ''),
('t392n7hbde4pv7h42ab8hln60t7p75v1', '143.110.222.166', 1690524338, ''),
('t3fr2emt1ta8rj73o0imdss6d553m6i3', '185.233.19.147', 1690830373, ''),
('t3un9crac66sktt7rgntemg1djcjggv4', '185.180.143.188', 1690475272, ''),
('t4f54a94vqgjqbg25u4ebl65c1k7jc58', '51.79.29.48', 1689569082, ''),
('t4qek7o18eliiv2u90qov8kdsbmu7a1n', '143.110.222.166', 1689247116, ''),
('t4u7e694b0s3nuaar9o3a9ulm4laanju', '143.110.222.166', 1690247142, ''),
('t661tm25ps5kvr3o996ltt66doj6pnq3', '161.35.190.246', 1690781774, ''),
('t66iv265pgiijctadef5ej9gvdl89jna', '128.14.209.162', 1689312199, ''),
('t68lprjsgq11g7r2cc1fdmn1h11gmmmj', '143.110.222.166', 1689994963, ''),
('t9eq4rcd28na9n73i8klj0stpvpo7pu8', '143.110.222.166', 1690741323, ''),
('t9rqnsdaj7k4foat7e1n3ru4a1ti8eev', '54.37.79.75', 1689408122, ''),
('t9t1l56pa2inp1k4dnuvl4dumv929gud', '141.98.11.207', 1690144310, ''),
('tb14685act6biht37e5cv6j2om3tjo8d', '20.199.88.218', 1690507696, ''),
('td9ssrl69cjg9sqru8gdnffe3r0ghvvq', '143.110.222.166', 1690877276, ''),
('tdn9nuag4fqjca5ue8mt19ggaobtuav8', '178.79.189.196', 1689924713, ''),
('tdscidgcevp38rg2j360jadfm4lakrcj', '143.110.222.166', 1690712318, ''),
('te74umgffktlp0l1f37bji8st6srqt43', '213.109.202.66', 1689444516, ''),
('tg5eltf4aosliru7hra9ansu2jnruno7', '183.136.225.5', 1690194796, ''),
('tgojkpsvtsjdoa5ddulguin8cqir7056', '143.110.222.166', 1689523098, ''),
('tj18fdn3tb8hejb3te4sd6k4as601df6', '20.29.40.173', 1689612983, ''),
('tjdd3qigaq57fof2lav2c1vd1tqf16ba', '54.37.79.75', 1689496163, ''),
('tjvirmngl5eot17a2djjd8v3p1pbsqgk', '88.249.194.106', 1689394989, ''),
('tk3iutel4rh1ai53a0nqpun33l71lale', '143.110.222.166', 1689314557, ''),
('tkcvitj3a9npdr8709iu0o9fiibr04m9', '103.137.36.100', 1689784667, ''),
('tkhhoi8dibcnp3fkqqg0qkr5mfv127ev', '108.35.58.105', 1689205145, ''),
('tl934fr43fgqp41sfa733lbq7elcvodr', '87.236.176.143', 1690088003, ''),
('tmce358ops24ujbm85iohf3o44idlegi', '54.37.79.75', 1689513104, ''),
('tmgnka8iiecn2apahohemuvsrtsqkr7h', '143.110.222.166', 1690874066, ''),
('tnnuk9kp39i6k2hkcchl5kl5mgd8eim4', '92.118.39.83', 1690257516, ''),
('to5jci4fl4lo1rulltdobunc656bbi9t', '45.79.168.172', 1690014735, ''),
('top9ucv61vllq537rk2eb9msad5o31go', '143.110.222.166', 1690520813, ''),
('trvlamnefa8utk4a9o687fvss5n9s5gi', '143.110.222.166', 1689840677, ''),
('tsah4adc3lmmsn5spsvn7ioo9fsarv75', '213.5.130.61', 1689260307, ''),
('tt04tggki7ef8hkcmk5vh5q02l7nhuek', '45.95.146.12', 1689908255, ''),
('ttjup03ceed1rsq67bjop7jan6bk66s1', '185.180.143.80', 1690899491, ''),
('tukoa9f8ig229h541oscp2d36bqepora', '128.14.209.162', 1690854460, ''),
('u0vrmavervv06kegiuuoo7eda2h9gt6r', '181.105.99.84', 1690628776, ''),
('u1trttq0l15ra6e613bsjgi7gk5t0tki', '118.193.58.234', 1689419310, ''),
('u2a8gubh4frupusm2l7feeiq2c2hpaq1', '143.110.222.166', 1690161437, ''),
('u2jnifd0sqas5a1nq62sorm0e6h3pief', '54.37.79.75', 1690031231, ''),
('u2nftbih4tu9c57cuu0ek4ae2jn0etvt', '52.141.92.47', 1689942946, ''),
('u2o0kk4ggmlb6o6gn4ea2kbgru8373ti', '143.110.222.166', 1689711746, ''),
('u343m9086200eilq2u1eloone9gda279', '198.199.113.86', 1689948188, ''),
('u3pg8hpkak3gs1pdnd7f6holqna7bgih', '213.109.202.66', 1690115357, ''),
('u4klq906rq5lhbbihqn9ptquqijt7c3k', '143.110.222.166', 1690514033, ''),
('u5orj2cb04breop46mdetffb3elj3jo1', '213.109.202.66', 1689220291, ''),
('u6gbvarskhqpcq0stjclo84em7m0elf2', '45.79.181.179', 1690547832, ''),
('u8pontokr1e6ehf3ao0m9gge3a9d453l', '143.198.0.106', 1689667529, ''),
('uceab92jvvciafse692c9g88dmesp5nm', '143.110.222.166', 1689779955, ''),
('ucvl4a646abr1eo3mkfuoiefhss2fi81', '143.110.222.166', 1690053122, ''),
('ud7tj85e8b87lm8s41giiioqrg4h81ia', '31.220.1.83', 1690559534, ''),
('uddmgdh6vuur9toip7e54ri1cbbv1nbj', '143.110.222.166', 1689296190, ''),
('ue05p86tivgean6esbmdj06tv1plk5qa', '51.79.29.48', 1689258483, ''),
('ue3ic7h01m0f1ti7u3pabmmaugtnfnb0', '170.64.134.89', 1689246413, ''),
('uejguu2e3u1pqdr0thbcdl68q14tp327', '18.212.243.246', 1689394332, ''),
('ueua89i1l3v6r7mudnnodnj4pg7gn4st', '91.224.92.16', 1689631494, ''),
('ufudhspm8avtqu03je348c01dc0dk595', '143.110.222.166', 1689891509, ''),
('ug8mjmk16a0ek0ths5jeks2oicb8j5il', '143.110.222.166', 1689404767, ''),
('ugc455egksjo54bmna5tvogvre9bb68r', '143.110.222.166', 1690646653, ''),
('uhbmfe6r1abh0trcga2o87p49bi4qvvl', '78.187.15.62', 1690814538, ''),
('uhmjqgf90afeba9lvn3ro39rbdan82u9', '45.128.232.65', 1690566912, ''),
('ui41onh4vvbm2tjidvglee7g0ags2g7k', '103.110.33.235', 1689268187, ''),
('uidkm6sjo9emj0cc573o5lcu3bs1t5c0', '92.118.39.40', 1689749046, ''),
('uijkcpj9h9masmbsgasebunuf6shv33t', '143.110.222.166', 1689703301, ''),
('uikuteqotvun2a21b3hg6mtlgnfs4t4b', '143.110.222.166', 1689765510, ''),
('ukd8t9405ipmke86ijae69nrkg21qiba', '54.37.79.75', 1690066225, ''),
('ulkjalh6klpd9lgp75j54dkv0om2vqu7', '143.110.222.166', 1689621416, ''),
('un055kdna1084scup300hubj333flmn5', '198.235.24.126', 1690619281, ''),
('un308c649l6bhoa8io5fr6nm8q16gm0h', '51.79.29.48', 1689617291, ''),
('un4ama91qgihi767g2rc7paujgi4v5s7', '143.110.222.166', 1689487205, ''),
('uo3a6edocudv18as4fn5qbvrnffhq60j', '143.110.222.166', 1689200365, ''),
('uoq5q4jqg66jjcuomlerqeagmthfd6rc', '141.98.11.207', 1689376249, ''),
('uphggc1n78phrmpf1e82ra6ucb8l411h', '109.195.243.100', 1690638779, ''),
('upob9b8hq2pi4pv8jjnbc6720s26urlb', '47.88.78.6', 1689500745, ''),
('upvkdlsk3rc8tenufli2e9d1pf3n43pt', '103.110.33.235', 1689460975, ''),
('uq1dhp5c3j12p0j7fqbs9l32selmba55', '143.110.222.166', 1690229014, ''),
('uql4v6u6su4ofg4s463fhbfk62ai1g9e', '51.79.29.48', 1690770985, ''),
('urs9e5iljjeb1096tsd69s7ilc7rlf5a', '34.77.127.183', 1689842558, ''),
('usmhtvtmphktq0055jjdag2amsivn197', '143.110.222.166', 1689217167, ''),
('usrk7rf0bigb8cegv8hab9v9r5gej24k', '51.79.29.48', 1689563871, ''),
('ut1kgld9osam6ckp33l785in2uojl797', '51.79.29.48', 1690587050, ''),
('uu3i3h4a1kqssqptivlm94obtie70oga', '54.37.79.75', 1690484828, ''),
('uuqt2id5aq6uepsdlk5vphud3cq6rfn0', '167.94.138.126', 1690846087, ''),
('uvd20vkvmdom8hrd2ne4gbtb1rdd7pns', '103.187.198.185', 1690368197, ''),
('uvpvg8osuijrjvs0b7g6m7itrfib0nl5', '162.243.142.35', 1690618315, ''),
('v0ee24p816icufa6fo9559jimutfgu7s', '43.250.156.111', 1690470270, ''),
('v0kuup7kt79opls2o3ecba2bs7b543gm', '159.223.55.198', 1690395119, ''),
('v0q86640bbok174afs7ci74aklpejkl2', '51.79.29.48', 1690910450, ''),
('v2gfsj7g66est5c4ob0kjhc5seej2sr7', '143.110.222.166', 1690067706, ''),
('v2ghrbgj3vs603rs7ceevj2bflmsivu7', '188.165.63.130', 1689537811, ''),
('v2v283k4fchhds7i3qcc1fok51jjdgtg', '143.110.222.166', 1689753874, ''),
('v3c4qnfahimcbh9tbhif48v4016sfeam', '139.19.117.196', 1690614939, ''),
('v3v9scepbv5r9slvntu3qs3bddrb0kc4', '191.101.174.82', 1690464879, ''),
('v46aljrqvbr0qj7p2rjihp61ve1h0qv5', '143.110.222.166', 1690424097, ''),
('v6f2bb7r126qcetff60hoo6g185rel84', '54.37.79.75', 1690408067, ''),
('v7lj00a1iivaimohbonci9v7ul9jgvgs', '54.37.79.75', 1689545069, ''),
('v7nqs6g8qm1bacf1gjo6fpc54hfcmcis', '143.110.222.166', 1690397837, ''),
('v8bbj4ikceg222ksc199odl0e6chqbbf', '80.94.92.15', 1690458662, ''),
('v8e0di80kmm8q8n82e3m6bt12tq3sojr', '51.79.29.48', 1690343118, ''),
('v8kdu45qlv6ug0g0hsi9nev7j934pcct', '185.180.143.136', 1690031799, ''),
('v8se1h6nnhp76jsjptnj43kbn7qcpsck', '213.109.202.66', 1689304474, ''),
('v9k4glltpq1l6642vn8lbmjrhcfp8re6', '143.110.222.166', 1689501601, ''),
('vas0vc5bvhfgded06u316hquoprb93j8', '121.56.26.14', 1690384484, ''),
('vasmg0pnqqdcgp63569sfrppdtvjj9bt', '143.110.222.166', 1689688938, ''),
('vc5qb3ki0n8rdfgbok70dprp0nmoajok', '51.79.29.48', 1689981276, ''),
('ve2ba0uelpdnavniqav5m4lmvqgt0nif', '143.110.222.166', 1689613786, ''),
('vfe3qm0mc8e1eukc6hvni1v47bq9lnvf', '59.91.168.198', 1690347547, ''),
('vg9a4jtotu7r0nmlgl7u22obu12gbpma', '92.118.39.40', 1690059113, ''),
('vhbodb7og1957hjfrdqr2a6e1b17dubm', '167.248.133.124', 1689973677, ''),
('vhc6d3qkinfseeeanvtrmro72mqsjjm8', '51.79.29.48', 1690787475, ''),
('vhlnf37c2q4cn436689g34ntk8k44m06', '51.79.29.48', 1689360596, ''),
('vhpd4qcbnk873amro1a1jqbpcaisjhaj', '213.109.202.66', 1689398890, ''),
('vhvkeorf3ulq4stb4uan7emc558v5u1d', '51.79.29.48', 1690775145, ''),
('vikd8j1op6nsqu3b9dvl8mh2a0e6v5ho', '167.248.133.124', 1689973677, ''),
('vjaijadipnjt3cc7rd3e9d3nov8smdlv', '185.180.143.141', 1690911665, ''),
('vjg1dnvg5b86ddvvsgvmkbsnot51kn4h', '51.254.59.113', 1689464454, ''),
('vjui7et851p0892efvovphplp3v1lb68', '51.79.29.48', 1690896968, ''),
('vkqghcsl1m36ml8175161rav8f790gve', '20.55.53.144', 1689629370, ''),
('vlkms5v87lfdo2gvovtg6m1egllomu63', '143.110.222.166', 1689955270, ''),
('vm7ll1kl07itilc4abg9afrnrmg49s44', '74.82.47.5', 1689931251, ''),
('vmark1p6g77f9bsgosmosnqprllmqjsp', '143.110.222.166', 1689397474, ''),
('vmjmh8hvjipnf5tvlcqkq7eae5dibcco', '143.110.222.166', 1690388605, ''),
('vmkqi9bvs63tmogiopt87q4e55kc8ksj', '43.241.146.244', 1689174046, ''),
('vn5tskfn0kg648flr0r56b0dtjacv1oa', '143.110.222.166', 1689527002, ''),
('vn7up8t7mssgjb2j88k0lscl26i0qk7f', '51.79.29.48', 1689587975, ''),
('voinqs0be9tvdc0is651tgec6v4ie6h0', '185.180.143.80', 1690608638, ''),
('vqfspoiao00bs2cbjnm5md5gatoc50sk', '216.218.206.66', 1690026326, ''),
('vsscd5tqirq9ar1eq5rc5tfpap0updgl', '143.110.222.166', 1690732705, ''),
('vt19pquvmnnvqek8qb47glle626k6ntg', '51.79.29.48', 1690356993, ''),
('vt75554rd3b4t1t8g66kcugq9hfsb9k6', '118.126.124.10', 1689454623, ''),
('vu37o7l8volncesvfet5odc516fn2v8n', '139.59.231.94', 1690054208, ''),
('vu8s8nmu33qlfrajgg3hn3i848dh4p7p', '51.79.29.48', 1689791889, ''),
('vvn6jcngq5jd0aune4n3v89bnutsl98d', '143.110.222.166', 1689383275, ''),
('vvqt2t4gn1cf8055ej354jkn96ckfph2', '143.110.222.166', 1690635418, ''),
('vvtv45591rknjclef4s3vlgpft2g41cp', '51.79.29.48', 1689341120, '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_user_session`
--

CREATE TABLE `ci_user_session` (
  `session_token` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(18) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mstr_account_type`
--

CREATE TABLE `mstr_account_type` (
  `account_type_id` int(10) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mstr_account_type`
--

INSERT INTO `mstr_account_type` (`account_type_id`, `type_name`, `is_visible`, `created_by`, `c_date`) VALUES
(1, 'Party', 1, 1, '2023-07-06 11:44:23'),
(2, 'Cash', 1, 1, '2023-07-06 11:44:23'),
(3, 'Bank', 1, 1, '2023-07-06 11:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_admin`
--

CREATE TABLE `mstr_admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `login_name` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `txt_password` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `forgot_id` varchar(500) NOT NULL,
  `unique_key` varchar(50) NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` int(1) NOT NULL DEFAULT '0',
  `mobile_no` varchar(13) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_iv` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0-inactive,1-active',
  `role_id` int(11) NOT NULL COMMENT 'Role of User',
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mstr_admin`
--

INSERT INTO `mstr_admin` (`admin_id`, `name`, `email_id`, `login_name`, `login_password`, `txt_password`, `profile_picture`, `forgot_id`, `unique_key`, `modified_date`, `is_admin`, `mobile_no`, `user_salt`, `user_iv`, `status`, `role_id`, `c_date`) VALUES
(1, 'GABBAR', 'admin@ams.com', 'gabbar', 'M9P2/rr9gTL0bOuvy19rNw==', '987654', NULL, '-', '074cce37aa345256998ed9486a7691f6', '2022-02-15 23:08:16', 1, '+919662744849', '4fc544f905f3386b88f0c448fe6c0ddd', 'f3a10522a3f3880f34f02ce96931a83a', 1, 1, '2022-02-15 23:08:16'),
(2, 'JAI', '', 'jai', 'CviImhfh9pjW8hAo45AxnQ==', '987654', NULL, '', '393837363534', '2023-07-14 08:01:45', 0, '', '3cba209370fc66e527e872146afcec0c', '7b1fb441a42f5d1b663ad695623ad31c', 1, 2, '2023-07-14 08:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_pages`
--

CREATE TABLE `mstr_pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `md_icon` varchar(100) NOT NULL,
  `action_name` varchar(100) NOT NULL,
  `is_visible` int(1) NOT NULL,
  `order_index` int(11) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mstr_pages`
--

INSERT INTO `mstr_pages` (`page_id`, `page_name`, `page_url`, `md_icon`, `action_name`, `is_visible`, `order_index`, `c_date`) VALUES
(1, 'Dashboard', 'dashboard', 'home', 'dashboard', 1, 1, '2021-07-26 01:32:22'),
(2, 'Users', 'users', 'list', 'users', 1, 2, '2021-07-26 02:56:07'),
(3, 'Account Master', 'account', 'users', 'account', 1, 3, '2021-07-26 22:53:27'),
(4, 'Transaction', 'transaction', 'file-invoice', 'transaction', 1, 4, '2021-07-26 22:53:27'),
(5, 'Party Ledger', 'transaction/report', 'file-invoice', 'report', 1, 4, '2021-07-26 22:53:27'),
(6, 'Profile', 'profile', 'user', 'profile', 1, 6, '2021-07-26 22:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_site_settings`
--

CREATE TABLE `mstr_site_settings` (
  `settings_id` bigint(11) NOT NULL,
  `v_key` varchar(255) NOT NULL,
  `v_value` varchar(255) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mstr_site_settings`
--

INSERT INTO `mstr_site_settings` (`settings_id`, `v_key`, `v_value`, `c_date`) VALUES
(1, 'X_AUTH_KEY', '96d2a4f3edbbcc00496dc2ce9e7f8505', '2022-05-06 06:04:42'),
(2, 'X_AUTH_O_KEY', '8415d113318c9f42074e482fe116764b', '2022-05-06 06:04:42'),
(3, 'SECRET', '3a4bc8d0c6c6397602e0b99f950034c9', '2022-05-06 06:05:10'),
(4, 'SITE_URL', 'http://localhost/ams/', '2020-03-09 20:04:22'),
(5, 'MAIL_HOST', '', '2021-04-28 01:08:17'),
(6, 'MAIL_USERNAME', '', '2021-04-28 01:08:17'),
(7, 'MAIL_PASSWORD', '', '2021-04-28 01:08:17'),
(8, 'MAIL_PORT', '', '2021-04-28 01:08:17'),
(9, 'MAIL_FROM', '', '2021-04-28 01:08:17'),
(10, 'MAIL_FROM_NAME', '', '2021-04-28 01:08:17'),
(11, 'ADMIN_MAIL_ID', 'admin@gmail.com', '2021-04-28 22:33:30'),
(12, 'ADMIN_MAIL_1', 'admin@gmail.com', '2021-08-18 06:18:55'),
(13, 'ADMIN_MAIL_2', 'admin@gmail.com', '2021-08-18 06:18:55'),
(14, 'ADMIN_MAIL_3', 'admin@gmail.com', '2021-08-18 06:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_sub_pages`
--

CREATE TABLE `mstr_sub_pages` (
  `sub_page_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `sub_page_name` varchar(255) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `md_icon` varchar(100) NOT NULL,
  `action_name` varchar(100) NOT NULL,
  `is_visible` int(1) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mstr_sub_pages`
--

INSERT INTO `mstr_sub_pages` (`sub_page_id`, `page_id`, `sub_page_name`, `page_url`, `md_icon`, `action_name`, `is_visible`, `c_date`) VALUES
(1, 2, 'Transporter', 'admin/transporter', 'user', 'transporter', 1, '2022-02-18 00:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_user_roles`
--

CREATE TABLE `mstr_user_roles` (
  `role_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `badge_type` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mstr_user_roles`
--

INSERT INTO `mstr_user_roles` (`role_id`, `name`, `badge_type`, `created_by`, `c_date`) VALUES
(1, 'Superadmin', '', 1, '2021-08-05 08:17:47'),
(2, 'Employee', 'primary', 1, '2021-08-05 08:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_error_log`
--

CREATE TABLE `tbl_error_log` (
  `log_id` bigint(20) NOT NULL,
  `session_id` text NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `tag_title` varchar(255) NOT NULL,
  `log_message` text NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_party`
--

CREATE TABLE `tbl_party` (
  `party_id` bigint(20) NOT NULL,
  `account_type_id` int(10) DEFAULT NULL,
  `party_name` varchar(255) DEFAULT NULL,
  `proprietor_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `bank_ac_no` bigint(20) DEFAULT NULL,
  `bank_ifsc_code` varchar(50) DEFAULT NULL,
  `pan_no` varchar(10) DEFAULT NULL,
  `gst_no` varchar(15) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `party_code` varchar(255) DEFAULT NULL,
  `current_balance` float(10,2) DEFAULT '0.00',
  `opening_balance` float(10,2) DEFAULT '0.00',
  `transaction_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Credit,0=Debit',
  `is_visible` int(1) NOT NULL DEFAULT '1',
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `d_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_party`
--

INSERT INTO `tbl_party` (`party_id`, `account_type_id`, `party_name`, `proprietor_name`, `bank_name`, `bank_branch`, `bank_ac_no`, `bank_ifsc_code`, `pan_no`, `gst_no`, `mobile`, `party_code`, `current_balance`, `opening_balance`, `transaction_type`, `is_visible`, `created_by`, `updated_by`, `deleted_by`, `c_date`, `u_date`, `d_date`) VALUES
(1, 2, 'CASH', NULL, '', '', 0, '', '', '', '', '', 0.00, 0.00, 0, 1, 1, 1, NULL, '2023-07-12 14:32:34', '2023-07-12 14:32:34', '2023-07-12 14:32:34'),
(2, 1, 'TANISH', '', '', '', 0, '', '', '', '', NULL, 0.00, 0.00, 0, 1, 1, 1, NULL, '2023-07-12 14:33:34', '2023-07-12 14:33:34', '2023-07-12 14:33:34'),
(3, 3, 'R K MOBILE GATEWAY AXIS', '', '', '', 0, '', '', '', '', '', 0.00, 0.00, 0, 1, 1, 1, NULL, '2023-07-12 14:33:42', '2023-07-12 14:33:42', '2023-07-12 14:33:42'),
(4, 3, 'A M ENTERPRISE GATEWAY AXIS', '', '', '', 0, '', '', '', '', '', 0.00, 0.00, 0, 1, 1, 1, NULL, '2023-07-14 08:09:32', '2023-07-14 08:09:32', '2023-07-14 08:09:32'),
(5, 3, 'KETAN NATVARLAL MANDALIYA PNB S', '', '', '', 0, '', '', '', '', '', 0.00, 0.00, 0, 1, 1, 2, NULL, '2023-07-14 08:12:05', '2023-07-14 08:12:05', '2023-07-14 08:12:05'),
(6, 3, 'KAPILBHAI ASHOKBHAI DEVNANI PNB S', '', '', '', 0, '', '', '', '', '', 0.00, 0.00, 0, 1, 1, 1, NULL, '2023-07-14 08:13:03', '2023-07-14 08:13:03', '2023-07-14 08:13:03'),
(7, 3, 'KAPILBHAI ASHOKBHAI DEVNANI KMB S', '', '', '', 0, '', '', '', '', '', 0.00, 0.00, 0, 1, 2, 2, NULL, '2023-07-14 12:46:29', '2023-07-14 12:46:29', '2023-07-14 12:46:29'),
(8, 3, 'KAPILBHAI ASHOKBHAI DEVNANI IDFC S', '', '', '', 0, '', '', '', '', '', 0.00, 0.00, 0, 1, 2, 2, NULL, '2023-07-14 12:47:44', '2023-07-14 12:47:44', '2023-07-14 12:47:44'),
(9, 3, 'KETAN NATVARLAL MANDALIYA KMB S', '', '', '', 0, '', '', '', '', '', 0.00, 0.00, 0, 1, 2, 1, NULL, '2023-07-14 12:48:17', '2023-07-14 12:48:17', '2023-07-14 12:48:17'),
(10, 3, 'KETAN NATVARLAL MANDALIYA IDFC S', '', '', '', 0, '', '', '', '', '', 0.00, 0.00, 0, 1, 2, 2, NULL, '2023-07-14 12:48:34', '2023-07-14 12:48:34', '2023-07-14 12:48:34'),
(11, 1, 'BANK CHARGES', '', '', '', 0, '', '', '', '', NULL, 0.00, 0.00, 0, 1, 2, NULL, NULL, '2023-07-20 08:19:44', '2023-07-20 08:19:44', '2023-07-20 08:19:44'),
(12, 3, 'KETAN NATVARLAL MANDALIYA KMB C', '', '', '', 0, '', '', '', '', '', 0.00, 0.00, 0, 1, 2, 2, NULL, '2023-07-20 08:32:00', '2023-07-20 08:32:00', '2023-07-20 08:32:00'),
(13, 3, 'KAPILBHAI ASHOKBHAI DEVNANI KMB C', '', '', '', 0, '', '', '', '', '', 0.00, 0.00, 0, 1, 2, 2, NULL, '2023-07-20 08:33:18', '2023-07-20 08:33:18', '2023-07-20 08:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `transaction_id` bigint(20) NOT NULL,
  `transaction_date` date NOT NULL,
  `debit_party` bigint(20) NOT NULL,
  `credit_party` bigint(20) NOT NULL,
  `amount` float(10,2) NOT NULL DEFAULT '0.00',
  `narration` text,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_date` datetime DEFAULT NULL,
  `d_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaction`
--

INSERT INTO `tbl_transaction` (`transaction_id`, `transaction_date`, `debit_party`, `credit_party`, `amount`, `narration`, `is_visible`, `created_by`, `updated_by`, `deleted_by`, `c_date`, `u_date`, `d_date`) VALUES
(1, '2023-07-10', 2, 1, 70000.00, 'HMT KAKA', 1, 1, NULL, NULL, '2023-07-12 14:34:26', NULL, NULL),
(2, '2023-07-10', 6, 2, 10000.00, 'FOR ACCOUNT OPEN PNB', 1, 1, 2, NULL, '2023-07-14 08:14:03', '2023-07-14 15:02:14', NULL),
(3, '2023-07-10', 5, 2, 10000.00, 'FOR ACCOUNT OPEN PNB', 1, 1, 2, NULL, '2023-07-14 08:14:44', '2023-07-14 15:02:01', NULL),
(5, '2023-06-20', 4, 1, 51000.00, 'FOR ACCOUNT OPEN AXIS', 1, 1, 1, NULL, '2023-07-14 08:17:31', '2023-07-14 13:50:26', NULL),
(6, '2023-06-20', 3, 1, 51000.00, 'FOR ACCOUNT OPEN AXIS ', 1, 1, NULL, NULL, '2023-07-14 08:19:57', NULL, NULL),
(7, '2023-07-14', 7, 2, 25000.00, 'FOR ACCOUNT OPEN KMB', 1, 2, 2, NULL, '2023-07-14 12:50:54', '2023-07-14 18:27:13', NULL),
(8, '2023-07-14', 8, 2, 50000.00, 'FOR ACCOUNT OPEN IDFC', 1, 2, 2, NULL, '2023-07-14 12:51:13', '2023-07-14 18:26:59', NULL),
(9, '2023-07-14', 9, 2, 25000.00, 'FOR ACCOUNT OPEN KMB', 1, 2, 2, NULL, '2023-07-14 12:51:29', '2023-07-14 18:26:46', NULL),
(10, '2023-07-14', 10, 2, 50000.00, 'FOR ACCOUNT OPEN IDFC', 1, 2, 2, NULL, '2023-07-14 12:51:48', '2023-07-14 18:26:18', NULL),
(11, '2023-07-19', 2, 1, 50500.00, 'ASHWIN', 1, 2, NULL, NULL, '2023-07-20 08:19:11', NULL, NULL),
(12, '2023-07-19', 11, 2, 500.00, 'BANK CHARGES', 1, 2, NULL, NULL, '2023-07-20 08:20:26', NULL, NULL),
(13, '2023-07-19', 12, 2, 25000.00, 'FOR A/C OPEN', 1, 2, NULL, NULL, '2023-07-20 08:38:08', NULL, NULL),
(14, '2023-07-19', 13, 2, 25000.00, 'FOR A/C OPEN', 1, 2, NULL, NULL, '2023-07-20 08:38:31', NULL, NULL),
(15, '2023-07-14', 2, 1, 100000.00, '', 1, 2, 2, NULL, '2023-07-20 08:41:12', '2023-07-20 14:13:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_rights`
--

CREATE TABLE `tbl_user_rights` (
  `rights_id` bigint(20) NOT NULL,
  `has_sub_page` int(1) NOT NULL,
  `sub_page_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `u_view` int(1) NOT NULL,
  `u_update` int(1) NOT NULL,
  `u_add` int(1) NOT NULL,
  `u_delete` int(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_rights`
--

INSERT INTO `tbl_user_rights` (`rights_id`, `has_sub_page`, `sub_page_id`, `page_id`, `role_id`, `u_view`, `u_update`, `u_add`, `u_delete`, `created_by`, `c_date`) VALUES
(1, 0, 0, 1, 1, 1, 1, 1, 1, 1, '2021-07-25 20:03:01'),
(2, 0, 0, 2, 1, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(3, 0, 0, 3, 2, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(4, 0, 0, 4, 2, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(5, 0, 0, 3, 1, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(6, 0, 0, 4, 1, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(7, 0, 0, 5, 2, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(8, 0, 0, 5, 1, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(9, 0, 0, 6, 1, 1, 1, 1, 1, 1, '2021-07-25 22:50:47');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_page_list`
-- (See below for the actual view)
--
CREATE TABLE `view_page_list` (
`page_id` int(11)
,`page_name` varchar(255)
,`page_url` varchar(255)
,`md_icon` varchar(100)
,`action_name` varchar(100)
,`is_visible` int(1)
,`order_index` int(11)
,`c_date` timestamp
,`has_sub_page` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_party`
-- (See below for the actual view)
--
CREATE TABLE `view_party` (
`party_id` bigint(20)
,`account_type_id` int(10)
,`account_type_name` varchar(255)
,`party_name` varchar(255)
,`proprietor_name` varchar(255)
,`bank_name` varchar(255)
,`bank_branch` varchar(255)
,`bank_ac_no` bigint(20)
,`bank_ifsc_code` varchar(50)
,`pan_no` varchar(10)
,`gst_no` varchar(15)
,`mobile` varchar(20)
,`party_code` varchar(255)
,`current_balance` double(19,2)
,`opening_balance` float(10,2)
,`transaction_type` tinyint(1)
,`is_visible` int(1)
,`created_by` int(10)
,`updated_by` int(10)
,`deleted_by` int(10)
,`c_date` timestamp
,`u_date` timestamp
,`d_date` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_party_balance`
-- (See below for the actual view)
--
CREATE TABLE `view_party_balance` (
`party_id` bigint(20)
,`party_name` varchar(255)
,`account_type_id` int(10)
,`opening_balance` float(10,2)
,`transaction_type` tinyint(1)
,`debit_total` double(19,2)
,`credit_total` double(19,2)
,`balance` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_transaction`
-- (See below for the actual view)
--
CREATE TABLE `view_transaction` (
`transaction_id` bigint(20)
,`transaction_date` date
,`view_transaction_date` varchar(10)
,`debit_party` bigint(20)
,`debit_party_name` varchar(255)
,`credit_party` bigint(20)
,`credit_party_name` varchar(255)
,`amount` float(10,2)
,`narration` text
,`is_visible` tinyint(1)
,`created_by` int(10)
,`created_name` varchar(255)
,`updated_by` int(10)
,`deleted_by` int(10)
,`c_date` timestamp
,`u_date` datetime
,`d_date` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user_rights`
-- (See below for the actual view)
--
CREATE TABLE `view_user_rights` (
`page_id` int(11)
,`page_name` varchar(255)
,`page_url` varchar(255)
,`md_icon` varchar(100)
,`action_name` varchar(100)
,`sub_page_id` int(11)
,`has_sub_page` int(1)
,`u_view` int(1)
,`u_update` int(1)
,`u_add` int(1)
,`u_delete` int(1)
,`role_id` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `view_page_list`
--
DROP TABLE IF EXISTS `view_page_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_page_list`  AS SELECT `pages`.`page_id` AS `page_id`, `pages`.`page_name` AS `page_name`, `pages`.`page_url` AS `page_url`, `pages`.`md_icon` AS `md_icon`, `pages`.`action_name` AS `action_name`, `pages`.`is_visible` AS `is_visible`, `pages`.`order_index` AS `order_index`, `pages`.`c_date` AS `c_date`, if(((select count(0) from `mstr_sub_pages` where (`mstr_sub_pages`.`page_id` = `pages`.`page_id`)) > 0),1,0) AS `has_sub_page` FROM `mstr_pages` AS `pages` ;

-- --------------------------------------------------------

--
-- Structure for view `view_party`
--
DROP TABLE IF EXISTS `view_party`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_party`  AS SELECT `tp`.`party_id` AS `party_id`, `tp`.`account_type_id` AS `account_type_id`, `mat`.`type_name` AS `account_type_name`, `tp`.`party_name` AS `party_name`, `tp`.`proprietor_name` AS `proprietor_name`, `tp`.`bank_name` AS `bank_name`, `tp`.`bank_branch` AS `bank_branch`, `tp`.`bank_ac_no` AS `bank_ac_no`, `tp`.`bank_ifsc_code` AS `bank_ifsc_code`, `tp`.`pan_no` AS `pan_no`, `tp`.`gst_no` AS `gst_no`, `tp`.`mobile` AS `mobile`, `tp`.`party_code` AS `party_code`, `vpb`.`balance` AS `current_balance`, `tp`.`opening_balance` AS `opening_balance`, `tp`.`transaction_type` AS `transaction_type`, `tp`.`is_visible` AS `is_visible`, `tp`.`created_by` AS `created_by`, `tp`.`updated_by` AS `updated_by`, `tp`.`deleted_by` AS `deleted_by`, `tp`.`c_date` AS `c_date`, `tp`.`u_date` AS `u_date`, `tp`.`d_date` AS `d_date` FROM ((`tbl_party` `tp` left join `mstr_account_type` `mat` on((`tp`.`account_type_id` = `mat`.`account_type_id`))) left join `view_party_balance` `vpb` on((`tp`.`party_id` = `vpb`.`party_id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Structure for view `view_party_balance`
--
DROP TABLE IF EXISTS `view_party_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_party_balance`  AS SELECT `p`.`party_id` AS `party_id`, `p`.`party_name` AS `party_name`, `p`.`account_type_id` AS `account_type_id`, `p`.`opening_balance` AS `opening_balance`, `p`.`transaction_type` AS `transaction_type`, coalesce((select sum(`t`.`amount`) from `tbl_transaction` `t` where (`t`.`debit_party` = `p`.`party_id`) group by `t`.`debit_party`),0) AS `debit_total`, coalesce((select sum(`t`.`amount`) from `tbl_transaction` `t` where (`t`.`credit_party` = `p`.`party_id`) group by `t`.`credit_party`),0) AS `credit_total`, if((`p`.`transaction_type` = 1),((coalesce((select sum(`t`.`amount`) from `tbl_transaction` `t` where (`t`.`credit_party` = `p`.`party_id`) group by `t`.`credit_party`),0) - coalesce((select sum(`t`.`amount`) from `tbl_transaction` `t` where (`t`.`debit_party` = `p`.`party_id`) group by `t`.`debit_party`),0)) + `p`.`opening_balance`),((coalesce((select sum(`t`.`amount`) from `tbl_transaction` `t` where (`t`.`credit_party` = `p`.`party_id`) group by `t`.`credit_party`),0) - coalesce((select sum(`t`.`amount`) from `tbl_transaction` `t` where (`t`.`debit_party` = `p`.`party_id`) group by `t`.`debit_party`),0)) - `p`.`opening_balance`)) AS `balance` FROM (`tbl_party` `p` left join `tbl_transaction` `t` on((`p`.`party_id` = `t`.`debit_party`))) GROUP BY `p`.`party_id` ;

-- --------------------------------------------------------

--
-- Structure for view `view_transaction`
--
DROP TABLE IF EXISTS `view_transaction`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_transaction`  AS SELECT `tt`.`transaction_id` AS `transaction_id`, `tt`.`transaction_date` AS `transaction_date`, date_format(`tt`.`transaction_date`,'%d-%m-%Y') AS `view_transaction_date`, `tt`.`debit_party` AS `debit_party`, `tpd`.`party_name` AS `debit_party_name`, `tt`.`credit_party` AS `credit_party`, `tpc`.`party_name` AS `credit_party_name`, `tt`.`amount` AS `amount`, `tt`.`narration` AS `narration`, `tt`.`is_visible` AS `is_visible`, `tt`.`created_by` AS `created_by`, `ma`.`name` AS `created_name`, `tt`.`updated_by` AS `updated_by`, `tt`.`deleted_by` AS `deleted_by`, `tt`.`c_date` AS `c_date`, `tt`.`u_date` AS `u_date`, `tt`.`d_date` AS `d_date` FROM (((`tbl_transaction` `tt` left join `tbl_party` `tpd` on((`tt`.`debit_party` = `tpd`.`party_id`))) left join `tbl_party` `tpc` on((`tt`.`credit_party` = `tpc`.`party_id`))) left join `mstr_admin` `ma` on((`tt`.`created_by` = `ma`.`admin_id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Structure for view `view_user_rights`
--
DROP TABLE IF EXISTS `view_user_rights`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user_rights`  AS SELECT `pages`.`page_id` AS `page_id`, `pages`.`page_name` AS `page_name`, `pages`.`page_url` AS `page_url`, `pages`.`md_icon` AS `md_icon`, `pages`.`action_name` AS `action_name`, `user_rights`.`sub_page_id` AS `sub_page_id`, `user_rights`.`has_sub_page` AS `has_sub_page`, `user_rights`.`u_view` AS `u_view`, `user_rights`.`u_update` AS `u_update`, `user_rights`.`u_add` AS `u_add`, `user_rights`.`u_delete` AS `u_delete`, `user_rights`.`role_id` AS `role_id` FROM (`mstr_pages` `pages` join `tbl_user_rights` `user_rights` on((`pages`.`page_id` = `user_rights`.`page_id`))) WHERE (`pages`.`is_visible` = 1) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_admin_session`
--
ALTER TABLE `ci_admin_session`
  ADD PRIMARY KEY (`session_token`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `ci_user_session`
--
ALTER TABLE `ci_user_session`
  ADD PRIMARY KEY (`session_token`);

--
-- Indexes for table `mstr_account_type`
--
ALTER TABLE `mstr_account_type`
  ADD PRIMARY KEY (`account_type_id`);

--
-- Indexes for table `mstr_admin`
--
ALTER TABLE `mstr_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `login_name` (`login_name`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `mstr_pages`
--
ALTER TABLE `mstr_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `action_name_indx` (`action_name`);

--
-- Indexes for table `mstr_site_settings`
--
ALTER TABLE `mstr_site_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `mstr_sub_pages`
--
ALTER TABLE `mstr_sub_pages`
  ADD PRIMARY KEY (`sub_page_id`);

--
-- Indexes for table `mstr_user_roles`
--
ALTER TABLE `mstr_user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_error_log`
--
ALTER TABLE `tbl_error_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_party`
--
ALTER TABLE `tbl_party`
  ADD PRIMARY KEY (`party_id`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `tbl_user_rights`
--
ALTER TABLE `tbl_user_rights`
  ADD PRIMARY KEY (`rights_id`),
  ADD KEY `user_fk` (`role_id`),
  ADD KEY `page_fk` (`page_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mstr_account_type`
--
ALTER TABLE `mstr_account_type`
  MODIFY `account_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mstr_admin`
--
ALTER TABLE `mstr_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mstr_pages`
--
ALTER TABLE `mstr_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mstr_site_settings`
--
ALTER TABLE `mstr_site_settings`
  MODIFY `settings_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mstr_sub_pages`
--
ALTER TABLE `mstr_sub_pages`
  MODIFY `sub_page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mstr_user_roles`
--
ALTER TABLE `mstr_user_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_error_log`
--
ALTER TABLE `tbl_error_log`
  MODIFY `log_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_party`
--
ALTER TABLE `tbl_party`
  MODIFY `party_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `transaction_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_user_rights`
--
ALTER TABLE `tbl_user_rights`
  MODIFY `rights_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
