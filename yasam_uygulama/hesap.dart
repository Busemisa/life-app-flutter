import 'package:deneme2/yasam_uygulama/user_data.dart';

class Hesap {
  UserData _userData;

  Hesap(this._userData);

  int? hesaplama() {
    if (_userData.sporGunu != null && _userData.icilenSigara != null) {
      double sonuc = 90 + _userData.sporGunu! - _userData.icilenSigara!;
      return sonuc.toInt();
    } else {
      return null;
    }
  }
}
