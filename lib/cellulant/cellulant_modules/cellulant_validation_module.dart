import 'dart:convert';

import 'package:cellulant/cellulant/cellulant_configs/cellulant_configs.dart';
import 'package:http/http.dart' as http;

class CellulantValidationModule{
  CellulantValidationModule({this.accountNumber, this.serviceID});

  final String accountNumber;
  final int serviceID;
  void validate()async{
    // final Map<String, dynamic> _payload = {
    //   "function": "BEEP.queryBill",
    //   "payload": {
    //     "credentials": {
    //       "username": cellulantUsername,
    //       "password": cellulantPassword,
    //     },
    //     "packet": [{
    //       "serviceID": serviceID,
    //       "accountNumber": accountNumber,
    //       "requestExtraData": ""
    //     }]
    //   }
    // };
    final Map<String, dynamic> _payload = {
      "function": "BEEP.validateAccount",
      "payload": {
        "credentials": {
          "username": cellulantUsername,
          "password": cellulantPassword,
        },
        "packet": [{
          "serviceID": serviceID,
          "accountNumber": accountNumber,
          "requestExtraData": ""
        }]
      }
    };

    try {
      final http.Response _res = await http.post(cellulantValidationUrl, body: json.encode(_payload));
      print(_res.statusCode);
      print(_res.body);
    } catch (e) {
      print(e);
    }
    
  }

  

}