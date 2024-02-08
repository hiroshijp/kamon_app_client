import 'package:latlong2/latlong.dart';

List<LatLng> sampleLatlngList = [
  LatLng(35.02028699035579, 135.75106882058512),
  LatLng(35.04629211056944, 135.7426561206896),
  LatLng(35.0186996656657, 135.7513381407674),
  LatLng(35.0186996656657, 135.7513381407675),
  LatLng(35.0387716472741, 135.7434294626124),
  LatLng(35.045700944201904, 135.7419433850411),
  LatLng(35.044477220167515, 135.74439202282954),
  LatLng(35.03415789360799, 135.7669129880424),
  LatLng(35.010164735382176, 135.76853744150637),
  LatLng(35.02677784131377, 135.7498138511677),
  LatLng(35.03155691210314, 135.75086171178094),
  LatLng(35.031517320213055, 135.75166088088628),
  LatLng(35.00308831457905, 135.7818553047973),
  LatLng(35.00308831457905, 135.7818553047974),
  LatLng(35.018582939179936, 135.78865585728843),
  LatLng(34.991591158386676, 135.772489250306),
  LatLng(34.98832794007564, 135.78534565885892),
  LatLng(35.000852174196126, 135.7812674037178),
  LatLng(34.94004891519504, 135.7766620130409),
  LatLng(35.028342998491546, 135.76179297169904),
  LatLng(35.05909726604864, 135.75838361106216),
  LatLng(35.011752704036, 135.7706506833297),
  LatLng(35.01551571040695, 135.77069670866658),
  LatLng(35.01561074653906, 135.77022385317358),
  LatLng(35.01869518900799, 135.7676709105405),
  LatLng(35.027941178919264, 135.7358351938693),
  LatLng(35.02401206033418, 135.76741142527268),
  LatLng(35.034510580911295, 135.75375098287992),
  LatLng(35.02638523466691, 135.75050978865045),
  LatLng(35.00826337275825, 135.78060767769526),
  LatLng(34.99827138058608, 135.78079459109324),
  LatLng(35.0652745213353, 135.73969326315353),
  LatLng(35.00084642688166, 135.7800047023671),
  LatLng(35.012672622253, 135.7826448771422),
  LatLng(35.00378297434433, 135.77888011704428),
  LatLng(35.00834124417323, 135.78550873640557),
  LatLng(35.0314830970706, 135.7354675340628),
  LatLng(35.04629211056944, 135.7426561206896),
  LatLng(35.0387716472741, 135.7434294626121),
  LatLng(34.991591158386676, 135.772489250303),
  LatLng(34.99877148067531, 135.7548912052068),
  LatLng(35.0392803900556, 135.7738307458467),
  LatLng(35.05994883661441, 135.75261108241506),
  LatLng(35.12221037264813, 135.76402554825646),
  LatLng(35.00015662896013, 135.68526295645574),
  LatLng(35.00419592549318, 135.69495339065492),
  LatLng(35.0253469467549, 135.78485032587054),
  LatLng(35.03470378403745, 135.78229713031058),
  LatLng(35.02783599965958, 135.7511910319531),
  LatLng(35.0033909193731, 135.7441609753047),
  LatLng(35.0173808553824, 135.78881127386322),
  LatLng(35.01843107505899, 135.78169248607819),
  LatLng(35.017674021951954, 135.68894610255268),
  LatLng(34.9508767856186, 135.74697036884325),
  LatLng(34.95145411449504, 135.7718638536209),
  LatLng(35.029866848708004, 135.79642503247808),
  LatLng(34.98468311283942, 135.74514069381829),
  LatLng(34.984454764164866, 135.73301753783127),
  LatLng(35.00512976676697, 135.7674122998879),
  LatLng(35.0182568556913, 135.79653374061724),
  LatLng(35.0838542476455, 135.8202395102152),
  LatLng(35.000966799811195, 135.7813052440322),
  LatLng(35.00011979112466, 135.7735794320018),
  LatLng(35.03395646415901, 135.76228065742322),
  LatLng(34.98077385597145, 135.74777787558335),
  LatLng(35.033979229014506, 135.7662550709352),
  LatLng(35.03462393811549, 135.7546995831295),
  LatLng(34.99952821296173, 135.76030948943182),
  LatLng(35.031362657838606, 135.7144210513696),
  LatLng(35.01665317454253, 135.67477450121808),
  LatLng(35.01162154667606, 135.79457066008905),
  LatLng(35.019518464355706, 135.78749861454494),
  LatLng(35.03946562684062, 135.72944145104702),
  LatLng(35.02707927404963, 135.79822736754772),
  LatLng(35.0191334547788, 135.78095868940667),
  LatLng(35.00191312479659, 135.7434621803117),
  LatLng(35.712493958295326, 139.81728047797606),
  LatLng(35.71180929055231, 139.8144979269519),
  LatLng(35.71098773247073, 139.81694317130092),
  LatLng(35.71026884881614, 139.8157627019965),
  LatLng(35.709207649620694, 139.8190090152478),
  LatLng(35.70776984727297, 139.81470872820626),
  LatLng(35.7111589329963, 139.82259264381253),
  LatLng(35.71321289066093, 139.8197258069588),
  LatLng(35.716156774105855, 139.8205690029913),
  LatLng(35.71454793160139, 139.8241526005329),
  LatLng(35.71348674645179, 139.82250835561535),
  LatLng(35.71194630576235, 139.82056900293003),
  LatLng(35.710544731171964, 139.82233001808743),
  LatLng(35.71140054333931, 139.82532334626796),
  LatLng(35.71016817936167, 139.82578710486746),
  LatLng(35.71393368954054, 139.82574495445954),
  LatLng(35.71622711978158, 139.82325753379826),
  LatLng(35.71533712771787, 139.8215711560431),
  LatLng(35.713659830118544, 139.82456447773671),
  LatLng(35.71304366102349, 139.82384776157812)
];