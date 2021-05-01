import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kpssuygulamasi/Utils/Enum.dart';
import 'package:kpssuygulamasi/page/Bolumler.dart';//android görüntüsü için ekleniyor
import 'package:kpssuygulamasi/page/bottom_nav.dart'; //android görüntüsü için e

void main() {
  runApp(MaterialApp(home: BottomNavScreen()));
}

class KpssUygulamasi extends StatefulWidget {
  const KpssUygulamasi({key}) : super(key: key);

  @override
  _KpssUygulamasiState createState() => _KpssUygulamasiState();
}

class _KpssUygulamasiState extends State<KpssUygulamasi> {
  var seciliDers;

  String title = "Kpss Uygulaması";
  var dersler = ["Türkçe", "Matematik"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: buildBody(context),

      //buildBody(context),
    );
  }

  buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  child: Text("T"),
                ),
                title: Text("Türkçe"),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                  ),
                  child: Text(
                    "Başla",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      seciliDers = kpssDersler.turkce;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Bolumler(
                                  seciliDers: kpssDersler.turkce,
                                )));
                  },
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("M"),
                ),
                title: Text("Matematik"),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                  ),
                  child: Text(
                    "Başla",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      seciliDers = kpssDersler.matematik;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Bolumler(
                                  seciliDers: kpssDersler.matematik,
                                )));
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
