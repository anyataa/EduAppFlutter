import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SimulatorMikrometer1000 extends StatefulWidget {
  @override
  _SimulatorMikrometer1000State createState() =>
      _SimulatorMikrometer1000State();
}

class _SimulatorMikrometer1000State extends State<SimulatorMikrometer1000> {
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
                'https://iwant2study.org/lookangejss/01_measurement/ejss_model_AAPTVernierCaliper/AAPTVernierCaliper_Simulation.xhtml';
            if (await canLaunch(url)) {
              await launch(
                url,
                forceSafariVC: false,
              );
            }
          },
          child: Text(
            'Simulator Mikrometer 1/1000',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
    ;
  }
}
