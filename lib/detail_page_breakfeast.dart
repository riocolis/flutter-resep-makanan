import 'package:flutter/material.dart';

class DetailPageBreakfeast extends StatelessWidget {
  final String name, image, ket;

  const DetailPageBreakfeast({Key key, this.name, this.image, this.ket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail BreakFest'),
        backgroundColor: Colors.red[100],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=> Navigator.pop(context,false),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 100.0,
            child: Hero(
              tag: name,
              child: Material(
                child: InkWell( ///image assets Image.network
                  child: Image.asset(
                    'image/$image',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          NamePart(
            name:name,
          ),
          KetPart(
            ket:ket,
          )
        ],
      ),
    );
  }
}
class NamePart extends StatelessWidget {
  final String name;

  const NamePart({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.blue[100],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.star,
                size: 35.0,
                color: Colors.amberAccent,
              ),
              Text(
                '5',
                style: TextStyle(
                  fontSize: 18.0
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class KetPart extends StatelessWidget {
  final String ket;

  const KetPart({Key key, this.ket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            ket,
            style: TextStyle(
              fontSize: 18.0
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}