import 'package:get/get.dart';
import 'package:getx_project/Homepage.dart';
import 'package:getx_project/pages/Routing/About_Page.dart';
import 'package:getx_project/pages/Routing/Contactus_Page.dart';
import 'package:getx_project/pages/Routing/MyTeam_Page.dart';

import '../NoteApp/AddNewNotePage.dart';

final List<GetPage> pages = [
  GetPage(
    name: "/",
    page: () => HomePage(),
  ),
  GetPage(
    name: "/about",
    page: () => AboutusPage(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: "/contact",
    page: () => ContactusPage(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: "/team",
    page: () => MyteamPage(),
    transition: Transition.fadeIn,
  ),
  ];