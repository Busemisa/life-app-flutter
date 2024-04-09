import 'package:deneme2/yasam_uygulama/constants.dart';
import 'package:deneme2/yasam_uygulama/result_page.dart';
import 'package:deneme2/yasam_uygulama/user_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './icon_cinsiyet.dart';
import './my_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet = '';
  double icilenSigara = 15;
  double sporGunu = 3;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // AppBar'ın arka plan rengi
          title: Text(
            'YAŞAM BEKLENTİSİ',
            style: kMetinStili,
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    //!boy ve kilo bölümü başlangıcı
                    child: MyContainer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'BOY',
                              style: kMetinStili,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              boy.toString(),
                              style: kSayiStili,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            0), // Kenarların keskin olması için 0 değeri
                                      ),
                                    ),
                                  ),
                                  
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 10,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      boy++;
                                    });

                                    print('ustteki buton basıldı');
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                width: 20,
                              ),
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            0), // Kenarların keskin olması için 0 değeri
                                      ),
                                    ),
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 10,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      boy--;
                                    });

                                    print('alttaki buton basıldı');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //!boy ve kilo bölümü bitişi
                  ),
                  Expanded(
                    //!boy ve kilo bölümü 2. kısım başlangıcı
                    child: MyContainer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'KİLO',
                              style: kMetinStili,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              kilo.toString(),
                              style: kSayiStili,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            0), // Kenarların keskin olması için 0 değeri
                                      ),
                                    ),
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 10,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      kilo++;
                                    });

                                    print('ustteki buton basıldı');
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                width: 20,
                              ),
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            0), // Kenarların keskin olması için 0 değeri
                                      ),
                                    ),
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 10,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      kilo--;
                                    });

                                    print('alttaki buton basıldı');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //!boy ve kilo bölümü 2. kısım başlangıcı
                  ),
                ],
              ),
            ),
            Expanded(
              //!spor slider başlangıcı
              child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Haftada Kaç Gün Spor Yapıyorsunuz',
                      style: kMetinStili,
                    ),
                    Text(
                      '${sporGunu.round()}',
                      style: kSayiStili,
                    ),
                    Slider(
                      activeColor: Colors.blue,
                      min: 0,
                      max: 7,
                      divisions: 7,
                      value: sporGunu,
                      onChanged: (double newValue) {
                        setState(() {
                          sporGunu = newValue;
                        });
                      },
                    )
                  ],
                ),
              ),
              //!spor slider bitişi
            ),
            Expanded(
              //!sigara içme slider başlangıcı
              child: MyContainer(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Günde Kaç Sigara İçiyorsunuz?',
                        style: kMetinStili,
                      ),
                      Text(
                        '${icilenSigara.round()}',
                        style: kSayiStili,
                      ),
                      Slider(
                        activeColor: Colors.blue,
                        min: 0,
                        max: 30,
                        value: icilenSigara,
                        onChanged: (double newValue) {
                          setState(() {
                            icilenSigara = newValue;
                          });
                        },
                      )
                    ]),
              ),
              //!sigara içme slider bitişi
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    //!KADIN SEMBOL BAŞLANGICI
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'KADIN';
                        });
                      },
                      renk: seciliCinsiyet == 'KADIN'
                          ? Colors.lightBlue[100]!
                          : Colors.white,
                      child: IconCinsiyet(
                        cinsiyet: 'KADIN',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                    //!KADIN SEMBOL BİTİŞİ
                  ),
                  Expanded(
                    //!ERKEK SEMBOLU BAŞLANGICI
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'ERKEK';
                        });
                      },
                      renk: seciliCinsiyet == 'ERKEK'
                          ? Colors.lightBlue[100]!
                          : Colors.white,
                      child: IconCinsiyet(
                        cinsiyet: 'ERKEK',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                    //!ERKEK SEMBOLU BİTİŞİ
                  ),
                ],
              ),
            ),
            //!en alttaki hesapla butonu başlangıcı
            ButtonTheme(
              height: 50,
              child: TextButton(
                
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>ResultPage(
                   UserData(kilo: kilo,boy: boy,seciliCinsiyet: seciliCinsiyet,sporGunu: sporGunu,icilenSigara: icilenSigara) 
                  )));







                 
                },
                child: Text('HESAPLA',style: kMetinStili,),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          0), // Kenarların keskin olması için 0 değeri
                    ),
                  ),
                ),
              ),
            ),
            //!en alttaki hesapla butonu bitişi
          ],
        ));
  }
}
