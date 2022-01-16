import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:realacres/Screens/homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Country _selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CountryPicker(
                  dense: false,
                  showFlag: true,
                  showDialingCode: true,
                  showName: true,
                  showCurrencyISO: true,
                  onChanged: (Country country) {
                    setState(() {
                      _selected = country;
                    });
                  },
                  selectedCountry: _selected,
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    // LanguagePickerDropdown(
                    //   initialValue: 'Eng',
                    //   // itemBuilder: _buildDropdownItem,
                    //   onValuePicked: (Language language) {},
                    // ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text('Get Started',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                        // ElevatedButton(
                        //   child: Text('Get Started'),
                        //   style: ElevatedButton.styleFrom(
                        //     primary: Colors.teal,
                        //     onPrimary: Colors.white,
                        //     shadowColor: Colors.red,
                        //     elevation: 5,
                        //   ),
                        //   onPressed: () {
                        //     Navigator.of(context).pushReplacement(
                        //         MaterialPageRoute(
                        //             builder: (context) => HomePage()));
                        //   },
                        // ]
                        //   ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
