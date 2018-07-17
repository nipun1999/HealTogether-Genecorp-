import 'package:flutter/material.dart';

class addcancer extends StatefulWidget {
  @override
  _addcancerState createState() => _addcancerState();
}

class _addcancerState extends State<addcancer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyHealTogether"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: new Stack(
        children: <Widget>[
          new Container(
            height: 40.0,
            decoration: new BoxDecoration(
              color: Colors.purple
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(

                  decoration: new BoxDecoration(
                    color: Colors.purple
                  ),
                  child: new Text("ADRENALINE GLAND CANCER",style: new TextStyle(color:Colors.white)),
                ),
              ],
            )
          ),
          new Container(
            margin: const EdgeInsets.only(top: 40.0),
            child: new expandablelist(),
          ),
        ],
      ),
    );
  }
}


class expandablelist extends StatelessWidget {
  final list = new List.generate(10,(index)=>'Item $index');
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context,index)=> EntryItem(data[index]),
      itemCount: data.length,
      
    );
  }
}


class Entry{
  Entry(this.title,[this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  Entry(
    'What is It',
    <Entry>[
      Entry('Detailed description about what is it'),
    ]
  ),
    Entry(
    'Causes',
    <Entry>[
      Entry('Detailed description about causes'),
    ]
  ),
    Entry(
    'Signs And Symptoms',
    <Entry>[
      Entry('Detailed description about what is it'),
    ]
  ),
    Entry(
    'How it is Diagnosed',
    <Entry>[
      Entry('Detailed description about what is it'),
    ]
  ),
    Entry(
    'Prognosis',
    <Entry>[
      Entry('Detailed description about what is it'),
    ]
  ),
    Entry(
    'Staging',
    <Entry>[
      Entry('Detailed description about what is it'),
    ]
  ),
    Entry(
    'Treatment',
    <Entry>[
      Entry('Detailed description about what is it'),
    ]
  ),
    Entry(
    'Follow Up',
    <Entry>[
      Entry('Detailed description about what is it'),
    ]
  )
];


class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTiles(Entry root){
    if(root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }  



  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}