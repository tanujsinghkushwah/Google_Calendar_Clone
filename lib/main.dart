import 'package:flutter/material.dart';
import 'package:gcalendar_clone/side_header_list_view.dart';
import 'task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: new Image.asset('assets/ham.png'),
          color: Colors.grey,
          padding: EdgeInsets.all(20),
          onPressed: () {},
        ),
        title: Text("August", style: TextStyle(fontSize: 20, color: Colors.black),),
        actions: <Widget>[
          IconButton(icon: Image.asset('assets/tri.png'),
              color: Colors.grey,
              iconSize: 8,
              padding: EdgeInsets.only(left:0, top:20, right:80, bottom:20),
              onPressed: (){}),
          SizedBox(
          width: 16,
          ),
          IconButton(icon: Icon(Icons.calendar_today),
              color: Colors.grey,
              onPressed: (){}),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Icon(Icons.more_vert, color: Colors.grey),
            ),
          )
        ],
      ),
      body: new SideHeaderListView(
        itemCount: data.length,
        padding: new EdgeInsets.all(16.0),
        itemExtend: 300.0,
        headerBuilder: (BuildContext context, int i){
          return new SizedBox(
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(data[i]['day'], style: TextStyle(color: Colors.grey, fontSize: 10)),
                ),
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: Text(data[i]['date'], style: TextStyle(color: Colors.black),),
                  ),
                )
              ],
            ),
          );
        },

        // Set the item builder, this is everything in the row without the header
        itemBuilder: (BuildContext context, int i){
          return new SizedBox(
              child: ListView.builder(
                  itemCount: tasks == null ? 0 : tasks.length,
                  itemBuilder: (BuildContext context, i) {
                return Card(
                  color: Color(0xFF26A69A),
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => desctask(content: tasks[i])),
                      );
                    },
                    title: Text(tasks[i]['task']),
                    subtitle: Text(tasks[i]['duration']),
                    dense: true,
                  ),
                );
        })
          );
        },

        // HasSameHeader will be used to know whether the header has to be shown for a position
        hasSameHeader: (int a, int b){
          return data[a]['date'] == tasks[b]['date'];
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,
      child: Icon(Icons.add, color: Colors.black,),
      backgroundColor: Colors.white,),
    );
  }
}

List<Map<String, dynamic>> data=[
  {
    'day': "Saturday",
    'date': "24",
  },
  {
    'day': "Sunday",
    'date': "25",
  },
  {
    'day': "Monday",
    'date': "26",
  },
  {
    'day': "Tuesday",
    'date': "27",
  }
];

List<Map<String, dynamic>> tasks=[
  {
    'date': "24",
    'task': "Coding",
    'duration': "3-4 PM"
  },
  {
    'date': "24",
    'task': "Tea/ Snacks",
    'duration': "4-5 PM"
  },
  {
    'date': "24",
    'task': "Draft research proposal",
    'duration': "5-6 PM"
  },
  {
    'date': "25",
    'task': "Classes",
    'duration': "3-4 PM"
  },
  {
    'date': "25",
    'task': "Table tennis",
    'duration': "4-5 PM"
  },
  {
    'date': "26",
    'task': "Cryptography",
    'duration': "5-6 PM"
  },
  {
    'date': "27",
    'task': "Coding",
    'duration': "3-4 PM"
  },
  {
    'date': "27",
    'task': "Tea/ Snacks",
    'duration': "4-5 PM"
  },
  {
    'date': "27",
    'task': "Draft research proposal",
    'duration': "5-6 PM"
  },
  {
    'date': "27",
    'task': "Classes",
    'duration': "3-4 PM"
  },
  {
    'date': "27",
    'task': "Table tennis",
    'duration': "4-5 PM"
  },
  {
    'date': "27",
    'task': "Cryptography",
    'duration': "5-6 PM"
  }

];