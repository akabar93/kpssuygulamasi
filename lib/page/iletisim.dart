import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kpssuygulamasi/models/iletisimData.dart';

class iletisim extends StatefulWidget {
  @override
  _iletisimState createState() => _iletisimState();
}

class _iletisimState extends State<iletisim> {
  List<kpssiletisim> kpssMesajlar;
  var mesaj = kpssiletisim.withoutInfo();
  var formkey = GlobalKey<FormState>();
  List mesajlar = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mesaj Gönderme Formu"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: formkey,
          child: Column(
            children: <Widget>[
              buildAdiniz(),
              buildeposta(),
              buildtelefon(),
              buildmesaj(),
              SizedBox(
                height: 35,
                width: 45,
              ),
              buildKaydet(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAdiniz() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Adınız:"),
      validator: (value) {
        return value.isEmpty ? "Bu alan Boş Geçilemez" : null;
      },
      onSaved: (String value) {
        mesaj.adi = value;
        mesajGoster(context, value);
        print("Adi:" + mesaj.adi);
      },
    );
  }

  Widget buildeposta() {
    return TextFormField(
      decoration: InputDecoration(labelText: "E-Posta:"),
      validator: (value) {
        return value.isEmpty ? "Bu alan Boş Geçilemez" : null;
      },
      onSaved: (String value) {
        mesaj.eposta = value;
        print("E Posta Adresi:" + mesaj.eposta);
      },
    );
  }

  Widget buildtelefon() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Telefon:"),
      validator: (value) {
        return value.isEmpty ? "Bu alan Boş Geçilemez" : null;
      },
      onSaved: (String value) {
        mesaj.telefon = value;
        print("Telefon Numarası:" + mesaj.telefon);
      },
    );
  }

  Widget buildmesaj() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Mesaj:"),
      validator: (value) {
        return value.isEmpty ? "Bu alan Boş Geçilemez" : null;
      },
      onSaved: (String value) {
        mesaj.mesaj = value;

        print("Mesajı :" + mesaj.mesaj);
      },
    );
  }

  Widget buildKaydet() {
    return SizedBox(
      width: 120,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(),
        child: Row(
          children: <Widget>[Icon(Icons.save), Text("Kaydet")],
        ),
        onPressed: () {
          if (formkey.currentState.validate()) {
            formkey.currentState.save();
            kpssMesajlar.add(mesaj);
          }
        },
      ),
    );
  }

  void mesajGoster(BuildContext context, String veri) {
    var alert = AlertDialog(
        title: Text("Başarılı"),
        content: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text("Sn:" + veri),
                Text("Mesajınız İçin Teşekkürler"),
              ],
            ),
          ),
        ));
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
