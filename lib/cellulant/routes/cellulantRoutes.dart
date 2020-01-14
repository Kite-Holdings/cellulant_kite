import 'package:cellulant/cellulant.dart';
import 'package:cellulant/cellulant/controller/cellulant_controllers.dart';

Router cellulantRoutes(Router router){
  const String baseUrl = '/cellulant';
  router
    .route('$baseUrl/queryBill')
    .link(()=> CellulantQueryBillController()); 

  router
    .route('$baseUrl/validation')
    .link(()=> CellulantValidationController()); 

  router
    .route('$baseUrl/payment')
    .link(()=> CellulantPaymentController()); 
  

  return router;
}