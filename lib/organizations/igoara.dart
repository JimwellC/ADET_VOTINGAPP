import 'package:flutter/material.dart';

class Igoara extends StatefulWidget {
  const Igoara({super.key});

  @override
  _IgoaraState createState() => _IgoaraState();
}

class _IgoaraState extends State<Igoara> {
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
            Image.asset("assets/IGOARA.png", height: 50, width: 50, errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.image_not_supported, size: 50, color: Colors.white70);
            }),
            SizedBox(width: 10),
            Expanded(child: Text("IGOARA", style: TextStyle(fontSize: 18, color: Colors.white))),
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