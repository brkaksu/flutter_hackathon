import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> isimler = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menü"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[

          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: Colors.red,width: 3),
              ),
              child: ListView.builder(
                itemBuilder: _listeElemanlariniOlustur,
                itemCount: isimler.length,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Colors.orange,
                child: Text("Eleman ekle"),
                onPressed:_elemanEkle,
              ),
              RaisedButton(
                color: Colors.red,
                child: Text("Eleman sil"),
                onPressed:_elemanSil,
              ),

            ],
          )

        ],
      ),
    );
  }

  Widget _listeElemanlariniOlustur(BuildContext context, int index) {
    return Card(
      color: (index % 2 == 0) ? Colors.grey[600] : Colors.grey,
      child: ListTile(
        leading: Icon(Icons.home),
        title: Text("$index. eleman"),
        subtitle: Text("alt başlık"),
        trailing: Icon(Icons.arrow_forward),
      ),
    );

  }

  void _elemanEkle() {
    setState(() {
      isimler.add("Merhaba");
    });
  }

  void _elemanSil() {
    setState(() {
      isimler.remove(isimler.last);
    });
  }
}
