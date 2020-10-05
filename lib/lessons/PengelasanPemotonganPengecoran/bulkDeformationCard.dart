import 'package:flutter/material.dart';

class BulkDeformationCard extends StatefulWidget {
  @override
  _BulkDeformationCardState createState() => _BulkDeformationCardState();
}

class _BulkDeformationCardState extends State<BulkDeformationCard> {
  final List<String> entries = <String>[
    'Proses Forging',
    'Proses Extrusion',
    'Proses Rolling',
  ];
  final List<String> image = <String>[
    'images/fabforging.gif',
    'images/fabextrusion.gif',
    'images/fabrolling.gif',
  ];
//
  final List<String> kd1 = <String>[
    '',
    '',
    '',
  ];

  final List<String> tujuan = <String>[
    'Perhatikan Animasi proses forging. Pada forging gaya diberikan dengan menekan balok logam di dalam molding. Balok logam yang ditekan dengan molding lalu akan mengikutigeometri dalam dari moldingnya.',
    'Perhatikan animasi proses extrusion. Pada Extrusion gaya mendorong balok logam ke molding. Arah gaya adalah menekan balok ke molding. Output logam dari molding akan mengikuti bentuk molding. ',
    'Perhatikan animasi proses rolling di atas. Pada rolling gaya diberikan dengan memutarkan roller ke balok logam. Rolling biasa dilakukan untuk proses penipisan. ',
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
