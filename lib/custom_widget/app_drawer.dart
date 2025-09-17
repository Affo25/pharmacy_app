// import 'package:eventory_pk/common/app_colors.dart';
// import 'package:eventory_pk/views/dashboard_view.dart';
// import 'package:eventory_pk/views/packages_view.dart';
// import 'package:eventory_pk/views/service_view_list.dart';
// import 'package:eventory_pk/views/studio_view_list.dart';
// import 'package:eventory_pk/views/vendors_view.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../views/all_register_users_view.dart';
// import '../views/bottombar_view.dart';
// import '../views/chat_list_view.dart';
//
// class DrawerScreen extends StatefulWidget {
//   @override
//   _DrawerScreenState createState() => _DrawerScreenState();
// }
//
// class _DrawerScreenState extends State<DrawerScreen> {
//   final _advancedDrawerController = AdvancedDrawerController();
//
//   @override
//   Widget build(BuildContext context) {
//     return AdvancedDrawer(
//       backdrop: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Colors.blueGrey, Colors.blueGrey.withOpacity(0.2)],
//           ),
//         ),
//       ),
//       controller: _advancedDrawerController,
//       animationCurve: Curves.easeInOut,
//       animationDuration: const Duration(milliseconds: 300),
//       animateChildDecoration: true,
//       rtlOpening: false,
//       // openScale: 1.0,
//       disabledGestures: false,
//       childDecoration: const BoxDecoration(
//         // NOTICE: Uncomment if you want to add shadow behind the page.
//         // Keep in mind that it may cause animation jerks.
//         boxShadow: <BoxShadow>[
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 0.0,
//           ),
//         ],
//         borderRadius: BorderRadius.all(Radius.circular(16)),
//       ),
//       drawer: SafeArea(
//         child: ListTileTheme(
//           textColor: Colors.white,
//           iconColor: Colors.white,
//           child: ListView(
//            scrollDirection: Axis.vertical,
//             children: [
//               Container(
//                 width: 128.0,
//                 height: 128.0,
//                 margin: const EdgeInsets.only(
//                   top: 24.0,
//                   bottom: 64.0,
//                 ),
//                 clipBehavior: Clip.antiAlias,
//                 decoration: BoxDecoration(
//                   color: Colors.black26,
//                   shape: BoxShape.circle,
//                 ),
//                 child: Image.asset(
//                   'assets/images/circus-tent.png',
//                 ),
//               ),
//               ListTile(
//                 onTap: () {_advancedDrawerController.hideDrawer();},
//                 leading: Icon(Icons.home),
//                 title: Text('Dashboard'),
//               ),
//               ListTile(
//                 onTap: () { Get.to(StudioViewList());},
//                 leading: Icon(Icons.local_offer_sharp,color: Colors.white,),
//                 title: Text('Manage Offers'),
//               ),
//               ListTile(
//                 onTap: () { Get.to(
//                     UserListScreen()
//                     //AdminChatView(userId: Globals.loginUserData?.user?.uid.toString()??"", adminId: Globals.adminUserData?.user?.uid.toString()??"")
//                     );
//                   },
//                 leading: Icon(CupertinoIcons.chat_bubble,color: Colors.white,),
//                 title: Text('Chats'),
//               ),
//               ListTile(
//                 onTap: () { Get.to(SaloonViewList());},
//                 leading: Icon(Icons.room_service),
//                 title: Text('Services'),
//               ),
//               ListTile(
//                 onTap: () {Get.to(PackagesView());},
//                 leading: Icon(Icons.car_crash),
//                 title: Text('Packages'),
//               ),
//               ListTile(
//                 onTap: () {Get.to(AllRegisterUsersView());},
//                 leading: Icon(Icons.person),
//                 title: Text('Users'),
//               ),
//               DefaultTextStyle(
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Colors.white54,
//                 ),
//                 child: Container(
//                   margin: const EdgeInsets.symmetric(
//                     vertical: 16.0,horizontal: 20
//                   ),
//                   child: Text('Powered By: Usama',style: customFont,),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       child: DashboardView(),
//     );
//   }
//
//   static var customFont = GoogleFonts.agdasima(
//       textStyle: TextStyle(
//           color: primaryColor,
//           fontSize: 15,
//           letterSpacing: 1,
//           fontWeight: FontWeight.bold));
//
//   void _handleMenuButtonPressed() {
//     // NOTICE: Manage Advanced Drawer state through the Controller.
//     // _advancedDrawerController.value = AdvancedDrawerValue.visible();
//     _advancedDrawerController.showDrawer();
//   }
// }