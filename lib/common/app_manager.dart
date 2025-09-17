// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_navigation/src/snackbar/snackbar.dart';
// import 'package:animated_snack_bar/animated_snack_bar.dart';
// import 'package:toastification/toastification.dart';
// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'app_colors.dart';
//
//
// class AppManager {
//   static String token = "";
//   var logger;
//
//
//   static int? userId;
//
//   static int? accountId;
//   static String? email;
//    static String? verifyCode;
//   static Function? updateHistory;
//   static String? accCurrency;
//
//   AppManager() {
//     logger(token);
//      verifyCode = "123";
//      email = "";
//      updateHistory = null;
//      userId=0;
//      accountId=0;
//      accCurrency = "";
//
//
//   }
// }
//
// getSuccessMessage(BuildContext context, String txt) {
//   AnimatedSnackBar.material(
//     txt,
//     type: AnimatedSnackBarType.success,
//     duration: const Duration(seconds: 5), // Position of snackbar on mobile devices
//   ).show(context);
// }
//
// getErrorMessage(BuildContext context, String txt) {
//   AnimatedSnackBar.material(
//     txt,
//     type: AnimatedSnackBarType.error,
//     duration: const Duration(seconds: 5),
//     // Position of snackbar on mobile devices
//   ).show(context);
// }
//
//   successMessageToast(BuildContext context, String txt) {
//     toastification.show(
//       style: ToastificationStyle.fillColored,
//       type: ToastificationType.success,
//       context: context,
//       title: Text(txt),
//       autoCloseDuration: const Duration(seconds: 4),
//     );
// }
//
//   errorMessageToast(BuildContext context, String txt) {
//   toastification.show(
//     style: ToastificationStyle.fillColored,
//     type: ToastificationType.error,
//     context: context,
//     title: Text(txt),
//     autoCloseDuration: const Duration(seconds: 4),
//   );
//   }
//
//   defaultErrorMessage( String txt) {
//      Get.showSnackbar(
//      GetSnackBar(
//       borderRadius: 10.0,
//       borderWidth: 4,
//       backgroundColor: redColor,
//       margin: EdgeInsets.all(10),
//       padding: EdgeInsets.all(10),
//       duration: Duration(seconds: 3),
//       title: "Error",
//       message: txt,
//       isDismissible: true,
//     ),
//   );
// }
//
// defaultSuccessMessage( String txt) {
//   Get.showSnackbar(
//      GetSnackBar(
//       borderRadius: 10.0,
//       borderWidth: 4,
//       backgroundColor: amountColor,
//       margin: EdgeInsets.all(10),
//       padding: EdgeInsets.all(10),
//       duration: Duration(seconds: 3),
//       title: "Success",
//       message: txt,
//       isDismissible: true,
//     ),
//   );
// }
//
//
// dialogAlertSuccess(BuildContext context, String txt) {
//   AwesomeDialog(
//     context: context,
//     animType: AnimType.scale,
//     dialogType: DialogType.success,
//     body:  Center(child: Text(
//       txt,
//       style: const TextStyle(fontStyle: FontStyle.italic),
//     ),),
//     title: 'Success',
//     desc:   '',
//     btnOkOnPress: () {},
//   ).show();
// }
//
//
//
//
// showErrorMsg(BuildContext context, String msg) {
//   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       backgroundColor: Colors.transparent,
//       behavior: SnackBarBehavior.floating,
//       elevation: 0,
//       content: Stack(
//         alignment: Alignment.center,
//         clipBehavior: Clip.none,
//         children: [
//           Container(
//             padding: const EdgeInsets.all(8),
//             height: 85,
//             decoration: const BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.all(Radius.circular(15)),
//             ),
//             child: Row(
//               children: [
//                 const SizedBox(
//                   width: 48,
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         'Oops!',
//                         style: TextStyle(fontSize: 18, color: Colors.white),
//                       ),
//                       Text(
//                         msg,
//                         style: const TextStyle(fontSize: 14, color: Colors.white),
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//               bottom: 25,
//               left: 20,
//               child: ClipRRect(
//                 child: Stack(
//                   children: [
//                     Icon(
//                       Icons.circle,
//                       color: Colors.red.shade200,
//                       size: 17,
//                     )
//                   ],
//                 ),
//               )),
//           Positioned(
//               top: -20,
//               left: 5,
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: const BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.all(Radius.circular(15)),
//                     ),
//                   ),
//                   const Positioned(
//                       top: 5,
//                       child: Icon(
//                         Icons.clear_outlined,
//                         color: Colors.white,
//                         size: 20,
//                       ))
//                 ],
//               )),
//         ],
//       )));
// }
