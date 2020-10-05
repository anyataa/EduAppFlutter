import 'package:flutter/material.dart';

class SheetMetalCard extends StatefulWidget {
  @override
  _SheetMetalCardState createState() => _SheetMetalCardState();
}

class _SheetMetalCardState extends State<SheetMetalCard> {
  final List<String> entries = <String>[
    'Deep Drawing',
    'Bending Process',
  ];
  final List<String> image = <String>[
    'images/fabdeepdrawing.gif',
    'images/fabbending.gif',
  ];
//
  final List<String> kd1 = <String>[
    '',
    '',
  ];

  final List<String> tujuan = <String>[
    'Perhatikan animasi dari proses deep drawing. Deep drawing adalah proses menekan pelat pada holder lalu diberikan gaya oleh penekan. Holder memiliki rongga sehingga gaya penekan akan membentuk pelat menurut geometri holder.',
    'Perhatikan animasi dari proses bending. Proses bending akan menekan pelat agar melengkung. Penekanan dilakukan oleh penekan yang sudah didesain khusus agar tidak terjadi crack.',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
//                Navigator.pushNamed(context, button[index]);
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 500,
              width: 400,
//                color: Colors.amber[colorCodes[index]],
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Image.asset('${image[index]}'),
                    ListTile(
                      title: Text(
                        '${entries[index]}',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4f73b6)),
                      ),
                      subtitle: Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Divider(
                              thickness: 1.0,
                              color: Color(0xff4f73b6),
                            ),
                          ),
                          Text(
                            '${tujuan[index]} ',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
