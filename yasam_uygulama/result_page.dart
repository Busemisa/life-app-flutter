import 'package:deneme2/yasam_uygulama/constants.dart';
import 'package:deneme2/yasam_uygulama/hesap.dart';
import 'package:deneme2/yasam_uygulama/user_data.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  final UserData _userData;
  ResultPage(this._userData);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //!sonuç sayfası yazısı en üst kısım
        title: Text('Sonuc Sayfası'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch ,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              //!kullanıcıdan alınan bilginin sonuç sayfasının tam ortasında gösterileceği alan başlangıcı
              child: Text(
                Hesap(_userData).hesaplama().toString(),
                style: kMetinStili,
                )
                ),
          ),
          Expanded(
            flex: 1,
              child: TextButton(
                //!sayfanın en altında geri dönmek için geri dön butonu başlangıcı
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
              Navigator.pop(context); //sayfadan geriye dönmemizi sağlayan koddur 

            },
            child: Text(
              'GERİ DÖN',
              style: kMetinStili,
            ),
          )),
        ],
      ),
    );
  }
}
