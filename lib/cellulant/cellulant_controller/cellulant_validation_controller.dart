import 'package:cellulant/cellulant.dart';
import 'package:cellulant/cellulant/cellulant_modules/cellulant_modules.dart' show CellulantValidationModule;
import 'package:cellulant/cellulant/cellulant_serializers/cellulant_serializers.dart' show CellulantValidationSerializer;

class CellulantValidationController extends ResourceController{
  @Operation.post()
  Future<Response> validate(@Bind.body(require: ['accountNumber', 'serviceID']) CellulantValidationSerializer cellulantValidationSerializer)async{
    final CellulantValidationModule _cellulantValidationModule = CellulantValidationModule(
      accountNumber: cellulantValidationSerializer.accountNumber,
      serviceID: cellulantValidationSerializer.serviceID,
    );
    _cellulantValidationModule.validate();

    return Response.accepted();
  }
}