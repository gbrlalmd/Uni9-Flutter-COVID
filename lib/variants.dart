import 'package:flutter/material.dart';
import 'infopages.dart';

class VariantsPage extends StatefulWidget {
  VariantsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _VariantsPageState createState() => _VariantsPageState();
}

class _VariantsPageState extends State<VariantsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ONECLICK - Central COVID-19'),
        backgroundColor: Colors.lightGreen[300],
      ),
      body: Table(border: TableBorder.symmetric(), columnWidths: {
        0: FlexColumnWidth(30),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(30),
      }, children: [
        TableRow(children: <Widget>[
          SizedBox(
            height: 10,
          ),
          SizedBox(height: 10),
          SizedBox(height: 10)
        ]),
        TableRow(children: [
          InkWell(
              child: Container(
                  child: Center(
                      child: Column(children: <Widget>[
                        Icon(Icons.help),
                        Text('O que é COVID-19')
                      ]),
                      heightFactor: 3),
                  decoration: BoxDecoration(
                      color: Colors.lightGreen[100],
                      borderRadius: BorderRadius.circular(10))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SobrePage(title: widget.title)),
                );
              },
              customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          SizedBox(),
          InkWell(
              child: Container(
                  child: Center(
                      child: Column(children: <Widget>[
                        Icon(Icons.sick),
                        Text('Sintomas do COVID-19')
                      ]),
                      heightFactor: 3),
                  decoration: BoxDecoration(
                      color: Colors.lightGreen[100],
                      borderRadius: BorderRadius.circular(10))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SintomasPage(title: widget.title)),
                );
              },
              customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))
        ]),
        TableRow(children: <Widget>[
          SizedBox(
            height: 5,
          ),
          SizedBox(height: 5),
          SizedBox(height: 5),
        ]),
        TableRow(children: [
          InkWell(
              child: Container(
                  child: Center(
                      child: Column(children: <Widget>[
                        Icon(Icons.shield),
                        Text('Como se proteger')
                      ]),
                      heightFactor: 3),
                  decoration: BoxDecoration(
                      color: Colors.lightGreen[100],
                      borderRadius: BorderRadius.circular(10))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PrevenPage(title: widget.title)),
                );
              },
              customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          SizedBox(),
          InkWell(
              child: Container(
                  child: Center(
                      child: Column(children: <Widget>[
                        Icon(Icons.coronavirus),
                        Text('Variantes do COVID-19')
                      ]),
                      heightFactor: 3),
                  decoration: BoxDecoration(
                      color: Colors.lightGreen[100],
                      borderRadius: BorderRadius.circular(10))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VariantesPage(title: widget.title)),
                );
              },
              customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))
        ]),
        TableRow(children: <Widget>[
          SizedBox(
            height: 5,
          ),
          SizedBox(height: 5),
          SizedBox(height: 5)
        ]),
        TableRow(children: [
          InkWell(
              child: Container(
                  child: Center(
                      child: Column(children: <Widget>[
                        Icon(Icons.biotech),
                        Text('Vacinas')
                      ]),
                      heightFactor: 3),
                  decoration: BoxDecoration(
                      color: Colors.lightGreen[100],
                      borderRadius: BorderRadius.circular(10))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VacinaPage(title: widget.title)),
                );
              },
              customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          SizedBox(),
          InkWell(
              child: Container(
                  child: Center(
                      child: Column(children: <Widget>[
                        Icon(Icons.info),
                        Text('Sobre a ONECLICK')
                      ]),
                      heightFactor: 3),
                  decoration: BoxDecoration(
                      color: Colors.lightGreen[100],
                      borderRadius: BorderRadius.circular(10))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InfoPage(title: widget.title)),
                );
              },
              customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))
        ])
      ]),
    );
  }
}
