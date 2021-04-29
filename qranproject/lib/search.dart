

import 'dart:convert';

import 'package:qranproject/surah.dart';
import 'package:flutter/material.dart';


class Starte extends StatefulWidget {
  @override
  _StarteState createState() => _StarteState();
}

class _StarteState extends State<Starte> {
  Future<Surah> surahData;
  @override
  initState(){
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.only(right: 5.8),
          child:   Icon(Icons.search,size: 30,),

        )],
      ),

      body:
      Builder (
        builder: (context)=>new GestureDetector(
          onTap: (){
            showModalBottomSheet(context: context, builder:(BuildContext bContext)
            {
              return Container(
                child: new Wrap(
                  children: [
                    new ListTile(

                        title: TextButton.icon(
                            label: Text('الفهرس     '),
                            icon: Icon(Icons.account_balance),
                            onPressed: () {
                              print('Pressed');
                            }
                        )
                    ),
                    new ListTile(
                        title: TextButton.icon(
                            label: Text('اضافه علامه'),
                            icon: Icon(Icons.bookmark_border),
                            onPressed: () {
                              print('Pressed');
                            }
                        )
                    ),
                    new ListTile(

                        title: TextButton.icon(
                            icon: Icon(Icons.bookmark_border),
                            label: Text('الذهاب الي علامه'),

                            onPressed: () {
                              print('Pressed');
                            }
                        ))
                  ],

                ),
              );
            });
          },

        ),
      ),

    );
  }
}

