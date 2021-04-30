import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kpssuygulamasi/models/OzetlerData.dart';

class turkceOzetlerDetay extends StatefulWidget {
  kpssOzetler seciliOzet;
  turkceOzetlerDetay(kpssOzetler seciliOzet) {
    this.seciliOzet = seciliOzet;
  }
  @override
  _turkceOzetlerDetayState createState() =>
      _turkceOzetlerDetayState(seciliOzet);
}

class _turkceOzetlerDetayState extends State<turkceOzetlerDetay> {
  kpssOzetler seciliOzet;
  _turkceOzetlerDetayState(kpssOzetler seciliOzet) {
    this.seciliOzet = seciliOzet;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(seciliOzet.Adi),
      ),
      body: Container(
        child: Scrollbar(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(seciliOzet.Icerik),
              );
            },
          ),
        ),
      ),
    );
  }
}
