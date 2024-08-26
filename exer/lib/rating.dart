
// import 'package:exer/main.dart';
// import 'package:exer/homescreen.dart';
// import 'package:flutter/material.dart';

// class StarRating extends StatelessWidget {
//   final int rating;
//   final int maxRating;
//   final Function(int) onRatingChanged;

//   const StarRating({
//     super.key,
//     required this.rating,
//     this.maxRating = 5,
//     required this.onRatingChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: List.generate(maxRating, (index) {
//         return IconButton(
//           onPressed: () => onRatingChanged(index + 1),
//           icon: Icon(
//             index < rating ? Icons.star : Icons.star_border,
//             color: Colors.yellow[600],
//           ),
//         );
//       }),
//     );
//   }
// }

// class Rating extends StatefulWidget {
//   const Rating({super.key});

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<Rating> {
//   int _currentRating = 0;

//   void _submitRating() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Submitted'),
//           content: const Text('Thank you !'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => HotelMenuApp()));
//               },
//               child: const Text('Back to HomeScreen'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Rate the CRICBASE App!'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             StarRating(
//               rating: _currentRating,
//               onRatingChanged: (rating) {
//                 setState(() {
//                   _currentRating = rating;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _currentRating > 0 ? _submitRating : null,
//               child: const Text('Submit', style: TextStyle(color: Colors.black),),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) =>  HotelMenuApp()));
//               },
//               child: const Text('Cancel', style: TextStyle(color: Colors.black),),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:exer/main.dart';
import 'package:exer/homescreen.dart';
import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int rating;
  final int maxRating;
  final Function(int) onRatingChanged;

  const StarRating({
    super.key,
    required this.rating,
    this.maxRating = 5,
    required this.onRatingChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(maxRating, (index) {
        return IconButton(
          onPressed: () => onRatingChanged(index + 1),
          icon: Icon(
            index < rating ? Icons.star : Icons.star_border,
            color: Colors.yellow[600],
          ),
        );
      }),
    );
  }
}

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Rating> {
  int _currentRating = 0;

  void _submitRating() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Submitted'),
          content: const Text('Thank you !'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HotelMenuApp()));
              },
              child: const Text('Back to HomeScreen'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Rate the Foodzy Hotel!'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StarRating(
              rating: _currentRating,
              onRatingChanged: (rating) {
                setState(() {
                  _currentRating = rating;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _currentRating > 0 ? _submitRating : null,
              child: const Text('Submit', style: TextStyle(color: Colors.black),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  HotelMenuApp()));
              },
              child: const Text('Cancel', style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}