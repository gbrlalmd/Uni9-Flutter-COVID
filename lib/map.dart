import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'webaccessor.dart';

class MapPage extends StatefulWidget {
  MapPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late Future<Summary> futureSummary;
  late String searchString;

  @override
  void initState() {
    super.initState();
    futureSummary = WebAccessor().fetchSummary();
    searchString = "";
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.lightGreen[300],
        ),
        body: FutureBuilder<Summary>(
            future: futureSummary,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                snapshot.data!.countries.sort(
                    (a, b) => b.totalConfirmed.compareTo(a.totalConfirmed));
                return Container(
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            searchString = value;
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                      Expanded(
                          child: ListView.builder(
                              // scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data!.countries.length,
                              itemBuilder: (context, index) {
                                return snapshot.data!.countries[index].country
                                        .toUpperCase()
                                        .contains(searchString.toUpperCase())
                                    ? Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 10, 0),
                                        height: 220,
                                        width: double.maxFinite,
                                        child: Card(
                                          elevation: 5,
                                          child: Padding(
                                            padding: EdgeInsets.all(7),
                                            child: Stack(children: <Widget>[
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                top: 5),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                countryIcon(snapshot
                                                                    .data!
                                                                    .countries[
                                                                        index]
                                                                    .countryCode),
                                                                SizedBox(
                                                                  height: 10,
                                                                ),
                                                                cardTitle(
                                                                    snapshot
                                                                        .data!
                                                                        .countries[
                                                                            index]
                                                                        .country,
                                                                    snapshot
                                                                        .data!
                                                                        .countries[
                                                                            index]
                                                                        .countryCode)
                                                              ],
                                                            ),
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                cardTotalBody(snapshot
                                                                    .data!
                                                                    .countries[
                                                                        index]
                                                                    .totalConfirmed)
                                                              ],
                                                            )
                                                          ],
                                                        ))
                                                  ],
                                                ),
                                              )
                                            ]),
                                          ),
                                        ))
                                    : Container();
                              }))
                    ]));
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default, show a loading spinner.
              return Center(
                  child:
                      CircularProgressIndicator(color: Colors.lightGreen[300]));
            }));
  }
}

Widget cardTitle(country, countryCode) {
  return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: AutoSizeText.rich(
            TextSpan(
              text: country,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                    text: '\n$countryCode',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            maxLines: 1),
      ));
}

Widget countryIcon(countryCode) {
  return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
              'icons/flags/png/${countryCode.toString().toLowerCase()}.png',
              package: 'country_icons',
              scale: 2)));
}

Widget cardTotalBody(count) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: '\n${count.toString()}',
              style: TextStyle(
                color: Colors.green,
                fontSize: 35,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: '\ncasos',
                    style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
