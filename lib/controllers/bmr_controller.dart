import '../models/body_profile.dart';
import '../services/bmr_service.dart';

class BmrController {
  final BmrService _bmrService;
  BmrController({BmrService? bmrService})
    : _bmrService = bmrService ?? BmrService();
  double processBmrCalculation(BodyProfile profile) {
    try {
      double bmrResult = _bmrService.calculateBMR(
        profile.weight,
        profile.height,
        profile.age,
        profile.gender,
      );
      return bmrResult;
    } catch (e) {
      rethrow; 
    }
  }
}
