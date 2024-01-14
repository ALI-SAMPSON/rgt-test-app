import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


// /// show post option popup menu
// /// [details] enabled popup menu to be display right below the parent widget
// /// when tapped
// void showOptionsMenu(BuildContext context, TapDownDetails details) {
//   showMenu<String>(
//     context: context,
//     shadowColor: TAppColor.shadowColor,
//     surfaceTintColor: TAppColor.whiteColor,
//     elevation: TAppSize.s3,
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(TAppSize.s8)),
//     position: RelativeRect.fromLTRB(
//       details.globalPosition.dx,
//       details.globalPosition.dy,
//       details.globalPosition.dx,
//       details.globalPosition.dy,
//     ), //position where you want to show the menu on screen
//     items: [
//       PopupMenuItem<String>(
//         value: '1',
//         child: TextButton.icon(
//           onPressed: null,
//           icon: TAppAssets.getIconPath(dislikeIcon).svg(),
//           label: Text(
//             AppLocalizations.of(context)!.notInterested,
//             style: Theme.of(context).textTheme.bodyMedium,
//           ),
//         ),
//       ),
//       PopupMenuItem<String>(
//         value: '2',
//         child: TextButton.icon(
//           onPressed: null,
//           icon: TAppAssets.getIconPath(blockIcon).svg(color: TAppColor.text500),
//           label: Text(
//             AppLocalizations.of(context)!.report,
//             style: Theme.of(context).textTheme.bodyMedium,
//           ),
//         ),
//       ),
//       PopupMenuItem<String>(
//         value: '3',
//         child: TextButton.icon(
//           onPressed: null,
//           icon: TAppAssets.getIconPath(deleteIcon).svg(),
//           label: Text(
//             AppLocalizations.of(context)!.delete,
//             style: Theme.of(context).textTheme.bodyMedium,
//           ),
//         ),
//       ),
//     ],
//   ).then<void>((String? itemSelected) {
//     if (itemSelected == "1") {
//       //code here
//     } else if (itemSelected == "2") {
//       //code here
//     } else {
//       //code here
//     }
//   });
// }

// /// show comment option popup menu
// /// [details] enabled popup menu to be display right below the parent widget
// /// when tapped
// void showCommentPopupMenu(BuildContext context, TapDownDetails details) {
//   showMenu<String>(
//     context: context,

//     shadowColor: TAppColor.shadowColor,
//     surfaceTintColor: TAppColor.whiteColor,
//     elevation: TAppSize.s3,
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(TAppSize.s8)),
//     position: RelativeRect.fromLTRB(
//       details.globalPosition.dx,
//       details.globalPosition.dy,
//       details.globalPosition.dx,
//       details.globalPosition.dy,
//     ), //position where you want to show the menu on screen
//     items: [
//       PopupMenuItem<String>(
//         value: '1',
//         child: TextButton.icon(
//           onPressed: null,
//           icon: TAppAssets.getIconPath(editIcon).svg(),
//           label: Text(
//             //'block_or_report'.tr,
//             AppLocalizations.of(context)!.edit,
//             style: Theme.of(context).textTheme.bodyMedium,
//           ),
//         ),
//       ),
//       PopupMenuItem<String>(
//         value: '2',
//         child: TextButton.icon(
//           onPressed: null,
//           icon: TAppAssets.getIconPath(deleteIcon).svg(),
//           label: Text(
//             AppLocalizations.of(context)!.delete,
//             style: Theme.of(context).textTheme.bodyMedium,
//           ),
//         ),
//       ),
//     ],
//   ).then<void>((String? itemSelected) {
//     if (itemSelected == "1") {
//       //code here
//     } else {
//       //code here
//     }
//   });
// }
