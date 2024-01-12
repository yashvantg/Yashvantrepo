// import 'package:flutter/material.dart';

// class Quizbook extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quizbook'),
//         backgroundColor: Colors.green,
//       ),
//       body: Column(
//         children: [
//           Container(
//             // width: 500,
//             height: 150,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 elevation: 10,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       CircleAvatar(
//                         maxRadius: 50,
//                         child: Text(
//                           '1',
//                           style: TextStyle(fontSize: 50),
//                         ),
//                         backgroundImage: AssetImage('Images/back.png'),
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       Column(
//                         children: [
//                           Text(
//                             'Ch.1 Khorak kyathi malshe?',
//                             style: TextStyle(fontSize: 20),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Row(
//                             children: [
//                               CircleAvatar(
//                                 minRadius: 20,
//                                 foregroundImage:
//                                     AssetImage('Images/newton.jpeg'),
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Text(
//                                 'Sir Isaac Newton',
//                                 style: TextStyle(fontSize: 15),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Row(
//                             children: [
//                               Icon(Icons.message),
//                               Text(
//                                 'Questins: 15',
//                                 style: TextStyle(fontSize: 20),
//                               ),
//                               SizedBox(width: 5),
//                               Icon(Icons.watch),
//                               Text(
//                                 'Minutes: 15',
//                                 style: TextStyle(fontSize: 20),
//                               )
//                             ],
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
