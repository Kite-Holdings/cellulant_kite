import 'package:cellulant/cellulant.dart';
import 'package:cellulant/cellulant/cellulant_controller/cellulant_controllers.dart';

Router cellulantRoutes(Router router){
  const String baseUrl = ' /cellulant';
  router
    .route('$baseUrl/validation')
    .link(()=> CellulantValidationController());
  router
    .route('/validation')
    .link(()=> CellulantValidationController());
  

  return router;
}