import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kpssuygulamasi/models/OzetlerData.dart';

class OzetlerDetay extends StatefulWidget {
  kpssOzetler seciliOzet;
  OzetlerDetay(kpssOzetler seciliOzet) {
    this.seciliOzet = seciliOzet;
  }
  @override
  _OzetlerDetayState createState() => _OzetlerDetayState(seciliOzet);
}

class _OzetlerDetayState extends State<OzetlerDetay> {
  kpssOzetler seciliOzet;
  _OzetlerDetayState(kpssOzetler seciliOzet) {
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
