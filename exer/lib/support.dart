// import 'package:flutter/material.dart';

// class Support extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Customer Care',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: CustomerCareScreen(),
//     );
//   }
// }

// class CustomerCareScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Customer Care'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const Text(
//               'How can we help you?',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               'For any queries, feel free to reach out to us using the information below:',
//               style: TextStyle(fontSize: 16),
//             ),
//             const SizedBox(height: 24),
//             ListTile(
//               leading: Icon(Icons.phone, color: Colors.blue),
//               title: Text('Phone'),
//               subtitle: Text('080-260324678'),
//               onTap: () {
//                 // You can add functionality here to initiate a phone call
//               },
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.mail, color: Colors.blue),
//               title: Text('Email'),
//               subtitle: Text('foodzie@gmail.com'),
//               onTap: () {
//                 // You can add functionality here to compose an email
//               },
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.location_on, color: Colors.blue),
//               title: Text('Visit Us'),
//               subtitle: Text('Sai nagar, Dharwad, 580217'),
//               onTap: () {
//                 // You can add functionality here to open maps
//               },
//             ),
//             Divider(),
//             const SizedBox(height: 24),
//             Center(
//               child: ElevatedButton.icon(
//                 onPressed: () {
//                   // Functionality for live chat or support can be added here
//                 },
//                 icon: Icon(Icons.chat),
//                 label: Text('Chat with Us'),
//                 style: ElevatedButton.styleFrom(
//                   // primary: const Color.fromARGB(255, 89, 204, 220),
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'homescreen.dart';
class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Customer Care',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomerCareScreen(),
    );
  }
}

class CustomerCareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Care'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        HotelMenuApp())); // Go back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'How can we help you?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'For any queries, feel free to reach out to us using the information below:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.blue),
              title: Text('Phone'),
              subtitle: Text('080-260324678'),
              onTap: () {
                // Add functionality to initiate a phone call
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.mail, color: Colors.blue),
              title: Text('Email'),
              subtitle: Text('foodzie@gmail.com'),
              onTap: () {
                // Add functionality to compose an email
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blue),
              title: Text('Visit Us'),
              subtitle: Text('Sai nagar, Dharwad, 580217'),
              onTap: () {
                // Add functionality to open maps
              },
            ),
            Divider(),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Functionality for live chat or support
                },
                icon: Icon(Icons.chat),
                label: Text('Chat with Us'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
