import 'package:flutter/material.dart';

class Ap extends StatefulWidget {
  const Ap({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ApState createState() => _ApState();
}

class _ApState extends State<Ap> {
  int _voteCount = 0;

  void _incrementVote() {
    setState(() {
      _voteCount++;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.grey.shade800,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(bottom: 10),
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Image.asset("assets/AP.png", height: 50, width: 50, errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.image_not_supported, size: 50, color: Colors.white70);
            }),
            SizedBox(width: 10),
            Expanded(child: Text("Access Point", style: TextStyle(fontSize: 18, color: Colors.white))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.how_to_vote, color: Colors.blueAccent),
                  onPressed: _incrementVote,
                ),
                Text('Votes: $_voteCount', style: TextStyle(color: Colors.white70)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}