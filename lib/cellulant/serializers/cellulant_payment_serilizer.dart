import 'package:cellulant/cellulant.dart';

class CellulantPaymentSerializer extends Serializable{
  String accountNumber;
  String amount;
  int serviceID;
  @override
  Map<String, dynamic> asMap()=> {
    'accountNumber': accountNumber,
    'serviceID': serviceID,
    'amount': amount,
  };

  @override
  void readFromMap(Map<String, dynamic> object) {
    amount = object['amount'].toString();
    accountNumber = object['accountNumber'].toString();
    serviceID = int.parse(object['serviceID'].toString());
  }

  @override
  void read(Map<String, dynamic> object, {Iterable<String> ignore, Iterable<String> reject, Iterable<String> require}) {
    Iterable<String> _reject;
    try {
      int.parse(object['serviceID'].toString());
      _reject = reject;
    } catch (e) {
      _reject = ['serviceID'];
    }


    super.read(object, ignore: ignore, reject: _reject, require: require);
  }

}