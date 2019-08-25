import 'package:flutter/material.dart';

class task extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: desctask(),
    );
  }
}

class desctask extends StatelessWidget{
  var content;
  desctask({Key key, @required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.close, color: Colors.black,),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.edit), color: Colors.black, onPressed: () {},padding: EdgeInsets.all(5),),
          IconButton(icon: Icon(Icons.more_vert), color: Colors.black, onPressed: () {},padding: EdgeInsets.all(5),),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
          height: 10,
      ),
          Container(
            child: ListTile(
              leading: Icon(Icons.crop_square, color: Colors.black,),
              title: Text(content['task'], style: TextStyle(color: Colors.black, fontSize: 30),),
              subtitle: Text('Today  '+content['duration']),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.notifications_none, color: Colors.black),
              title: Text('30 minutes before', style: TextStyle(color: Colors.black),),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.black,),
              title: Text('Events', style: TextStyle(color: Colors.black),),
              subtitle: Text('Email-ID'),
            ),
          )
        ],
      ),
    );
  }
}