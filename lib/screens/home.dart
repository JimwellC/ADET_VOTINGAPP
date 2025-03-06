import 'package:calma_vote_stateful/organizations/ap.dart';
import 'package:calma_vote_stateful/organizations/cg.dart';
import 'package:calma_vote_stateful/organizations/csc.dart';
import 'package:calma_vote_stateful/organizations/igoara.dart';
import 'package:calma_vote_stateful/organizations/loop.dart';
import 'package:calma_vote_stateful/organizations/sana.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('School of Computing Org', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 4,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Csc(),
              Ap(),
              Igoara(),
              Cg(),
              Loop(),
              Sana(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Created by Jimwell Calma',
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}