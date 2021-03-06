import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  myApp();
}

void myApp() {
  String msg = 'pringao';
  var txt = TextEditingController();
  txt.text = msg;
  runApp(
    MaterialApp(
      title: 'hello',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(title: Text('Hola pringao')),
        body: Column(
          children: <Widget>[
            TextField(controller: txt, textAlign: TextAlign.center),
            Image.asset('assets/hi.jpg'),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  child: Ink(
                    decoration: ShapeDecoration(
                        color: Colors.purple, shape: CircleBorder()),
                    child: Center(
                        child: IconButton(
                      color: Colors.red,
                      icon: Icon(Icons.favorite),
                      iconSize: 50,
                      splashColor: Colors.purple,
                      onPressed: () {
                        Random r = Random();
                        int a = r.nextInt(5);
                        if (a == 0) {
                          msg = 'hey1';
                        } else if (a == 1) {
                          msg = 'hey2';
                        } else if (a == 2) {
                          msg = 'hey3';
                        } else if (a == 3) {
                          msg = 'hey4';
                        } else if (a == 4) {
                          msg = 'hey5';
                        } else if (a == 5) {
                          msg = 'hey6';
                        }
                        txt.text = msg;
                      },
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
