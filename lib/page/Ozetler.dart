import 'package:flutter/material.dart';
import 'package:kpssuygulamasi/Utils/Enum.dart';
import 'package:kpssuygulamasi/models/OzetlerData.dart';
import 'package:kpssuygulamasi/page/OzetlerDetay.dart';

class Ozetler extends StatefulWidget {
  var seciliDers;
  Ozetler({this.seciliDers});
  @override
  _OzetlerState createState() => _OzetlerState();
}

class _OzetlerState extends State<Ozetler> {
  kpssOzetler seciliOzet = kpssOzetler.WithId(0, "", "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Türkçe Özetler" + widget.seciliDers.toString()),
      ),
      body: Column(
        children: <Widget>[
          builVeriler(widget.seciliDers),
        ],
      ),
    );
  }

  Widget builVeriler(var seciliDers) {
    if (seciliDers == kpssDersler.turkce) {
      return Expanded(
        child: ListView.builder(
            itemCount: turkceOzetlerData.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(1.0),
                  margin: EdgeInsets.all(7.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFEEEAEA), Color(0xFFEEEAEA)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: ListTile(
                    title: Text(
                      turkceOzetlerData[index].Adi,
                      style: TextStyle(),
                      // textAlign: Alignment.center,
                    ),
                    onTap: () {
                      setState(() {
                        seciliOzet = turkceOzetlerData[index];
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  turkceOzetlerDetay(seciliOzet)));
                    },
                    trailing: Icon(
                      Icons.double_arrow_sharp,
                      color: Colors.red,
                    ),
                  ),
                ),
              );
            }),
      );
    } else if (seciliDers == kpssDersler.matematik) {
      return Expanded(
        child: ListView.builder(
            itemCount: matematikOzetlerData.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(1.0),
                  margin: EdgeInsets.all(7.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFEEEAEA), Color(0xFFEEEAEA)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: ListTile(
                    title: Text(
                      matematikOzetlerData[index].Adi,
                      style: TextStyle(),
                      // textAlign: Alignment.center,
                    ),
                    onTap: () {
                      setState(() {
                        seciliOzet = matematikOzetlerData[index];
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  turkceOzetlerDetay(seciliOzet)));
                    },
                    trailing: Icon(
                      Icons.double_arrow_sharp,
                      color: Colors.red,
                    ),
                  ),
                ),
              );
            }),
      );
    }
  }
}
