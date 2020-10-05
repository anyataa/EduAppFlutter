import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SimulatorMikrometer100 extends StatefulWidget {
  @override
  _SimulatorMikrometer100State createState() => _SimulatorMikrometer100State();
}

class _SimulatorMikrometer100State extends State<SimulatorMikrometer100> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Material(
        elevation: 2.0,
        color: Color(0xff4f73b6),
        borderRadius: BorderRadius.circular(5.0),
        child: MaterialButton(
          onPressed: () async {
            final url =
                'https://iwant2study.org/lookangejss/01_measurement/ejss_model_Micrometer02/Micrometer02_Simulation.xhtml';
            if (await canLaunch(url)) {
              await launch(
                url,
                forceSafariVC: false,
              );
            }
          },
          child: Text(
            'Simulator Mikrometer 1/100',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
