import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// stless
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/poop.png'),
              ),
              Text(
                'Mr. Kaki',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontFamily: 'Redressed-Regular'),
              ),
              Text(
                "A NICE DEVELOPER",
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 26,
                    color: Colors.teal.shade100),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    '+32 475 79 13 22',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontFamily: 'SourceSansPro'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text(
                    'email@kaki.com',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Padding(
//   padding: const EdgeInsets.all(26.0),
//   child: Row(
//     children: [
//       Icon(
//         Icons.phone,
//       ),
//       SizedBox(
//         width: 10,
//       ),
//       Text(
//         '0475791322',
//         style: TextStyle(
//             color: Colors.red,
//             fontSize: 20,
//             fontFamily: 'SourceSansPro'),
//       )
//     ],
//   ),
// ),
// Padding(
// padding: const EdgeInsets.all(26.0),
// child: Row(
//   children: [
//     Icon(Icons.email),
//     SizedBox(
//       width: 10,
//     ),
//     Text(
//       'Kaki@kaki.com',
//       style: TextStyle(
//           fontFamily: 'SourceSansPro',
//           fontSize: 20,
//           color: Colors.blue),
//     )
//   ],
// ),
// ),
// )
