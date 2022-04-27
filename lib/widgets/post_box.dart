// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class PostBox extends StatelessWidget {
//   PostBox(
//       {Key? key,
//       this.time = 'Time: yy/mm/dd',
//       // this.title = 'Title: title',
//       this.article = 'dfgtitle: title',
//       this.credit = 'Credit: credit'})
//       : super(key: key);

//   String time;
//   // String title;
//   String article;
//   String credit;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.limeAccent,
//       child: Container(
//         child: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5.0),
//               alignment: Alignment.topLeft,
//               child: Text(
//                 time,
//                 style: GoogleFonts.openSans(
//                   textStyle: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w900,
//                     fontStyle: FontStyle.italic,
//                   ),
//                 ),
//               ),
//             ),
//             // Container(
//             //   padding: const EdgeInsets.all(5.0),
//             //   alignment: Alignment.topLeft,
//             //   child: Text(
//             //     title,
//             //     style: GoogleFonts.openSans(
//             //       fontSize: 18,
//             //       fontWeight: FontWeight.w800,
//             //       // fontStyle: FontStyle.italic,
//             //     ),
//             //   ),
//             // ),
//             Container(
//               padding: const EdgeInsets.all(5.0),
//               alignment: Alignment.topLeft,
//               child: Text(
//                 article,
//                 style: GoogleFonts.openSans(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w600,
//                   // fontStyle: FontStyle.italic,
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5.0),
//               alignment: Alignment.topLeft,
//               child: Text(
//                 credit,
//                 style: GoogleFonts.openSans(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                   fontStyle: FontStyle.italic,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
