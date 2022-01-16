import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class AddProperty extends StatefulWidget {
  @override
  _AddPropertyState createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty>
    with SingleTickerProviderStateMixin {
  int _value = 0;
  String _value1, _value2, _value3;
  TabController _controller;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'pak';
  PhoneNumber number = PhoneNumber(isoCode: 'pak');

  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Country _selected;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Property',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        elevation: 5,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () => {
                      //T)-Do
                    },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
          )
        ],
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              //TO-DO
            }),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Column(children: [
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                //  color: Colors.brown,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.black,
                              ),
                              Text(
                                'Locations',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Adding in  ',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Lahore',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              TextButton(
                                  onPressed: () => {
                                        //T)-Do
                                      },
                                  child: Text(
                                    'Change City',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: _searchBar('Search Location'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.5,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.home_work_outlined),
                          Text(
                            'Property Types',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurple),
                        child: new TabBar(
                          controller: _controller,
                          tabs: [
                            new Tab(
                              text: 'Homes',
                            ),
                            new Tab(
                              text: 'Plots',
                            ),
                            new Tab(
                              text: 'Commercial',
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      height: 80.0,
                      child: new TabBarView(controller: _controller, children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ChoiceChip(
                              pressElevation: 0.0,
                              selectedColor: Colors.green[300],
                              backgroundColor: Colors.grey[100],
                              label: Text("House",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                              selected: _value == 0,
                              onSelected: (bool selected) {
                                setState(() {
                                  _value = selected ? 0 : null;
                                });
                              },
                            ),
                            ChoiceChip(
                              pressElevation: 0.0,
                              selectedColor: Colors.green[300],
                              backgroundColor: Colors.grey[100],
                              label: Text("Flat",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                              selected: _value == 1,
                              onSelected: (bool selected) {
                                setState(() {
                                  _value = selected ? 1 : null;
                                });
                              },
                            ),
                            ChoiceChip(
                              pressElevation: 0.0,
                              selectedColor: Colors.green[300],
                              backgroundColor: Colors.grey[100],
                              label: Text("Upper Portion",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                              selected: _value == 2,
                              onSelected: (bool selected) {
                                setState(() {
                                  _value = selected ? 2 : null;
                                });
                              },
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ChoiceChip(
                              pressElevation: 0.0,
                              selectedColor: Colors.green[300],
                              backgroundColor: Colors.grey[100],
                              label: Text("Residential",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                              selected: _value == 0,
                              onSelected: (bool selected) {
                                setState(() {
                                  _value = selected ? 0 : null;
                                });
                              },
                            ),
                            ChoiceChip(
                              pressElevation: 0.0,
                              selectedColor: Colors.green[300],
                              backgroundColor: Colors.grey[100],
                              label: Text("Commercial",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                              selected: _value == 1,
                              onSelected: (bool selected) {
                                setState(() {
                                  _value = selected ? 1 : null;
                                });
                              },
                            ),
                            ChoiceChip(
                              pressElevation: 0.0,
                              selectedColor: Colors.green[300],
                              backgroundColor: Colors.grey[100],
                              label: Text("Agriculture",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                              selected: _value == 2,
                              onSelected: (bool selected) {
                                setState(() {
                                  _value = selected ? 2 : null;
                                });
                              },
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ChoiceChip(
                              pressElevation: 0.0,
                              selectedColor: Colors.green[300],
                              backgroundColor: Colors.grey[100],
                              label: Text("Office",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                              selected: _value == 0,
                              onSelected: (bool selected) {
                                setState(() {
                                  _value = selected ? 0 : null;
                                });
                              },
                            ),
                            ChoiceChip(
                              pressElevation: 0.0,
                              selectedColor: Colors.green[300],
                              backgroundColor: Colors.grey[100],
                              label: Text("Shop",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                              selected: _value == 1,
                              onSelected: (bool selected) {
                                setState(() {
                                  _value = selected ? 1 : null;
                                });
                              },
                            ),
                            ChoiceChip(
                              pressElevation: 0.0,
                              selectedColor: Colors.green[300],
                              backgroundColor: Colors.grey[100],
                              label: Text("Wear House",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                              selected: _value == 2,
                              onSelected: (bool selected) {
                                setState(() {
                                  _value = selected ? 2 : null;
                                });
                              },
                            )
                          ],
                        ),
                      ]),
                    )
                  ])),
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 7,
                //  color: Colors.brown,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.public_sharp,
                                color: Colors.black,
                              ),
                              Text(
                                'Purpose',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                          style: BorderStyle.none),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  //TO-DO
                                },
                                child: Text('Sell',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                          style: BorderStyle.none),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  //TO-DO
                                },
                                child: Text('Rent',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                          style: BorderStyle.none),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  //TO-DO
                                },
                                child: Text('Wanted',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                //  color: Colors.brown,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.local_movies,
                                color: Colors.black,
                              ),
                              Text(
                                'property Details',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _searchBar('Property title*'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _searchBar('Property description*'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6,
                //  color: Colors.brown,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.article_sharp,
                                color: Colors.black,
                              ),
                              Text(
                                'Area',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Container(
                              width: 120,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "Area*",
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(20.0))),
                              )),
                          new Container(
                              width: 120,
                              height: 50,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[200],
                                  border: Border.all()),
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                hint: Text('Area'),
                                value: _value1,
                                onChanged: (value) {
                                  setState(() {
                                    _value1 = value;
                                  });
                                },
                                items: <String>[
                                  'Sq. Ft.',
                                  'Sq. M.',
                                  'Sq. Yd',
                                  'Marla',
                                  'Kanal'
                                ].map((String user) {
                                  return new DropdownMenuItem<String>(
                                    value: user,
                                    child: new Text(
                                      user,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  );
                                }).toList(),
                              )))
                        ]),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6,
                //  color: Colors.brown,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.perm_device_info_outlined,
                                color: Colors.black,
                              ),
                              Text(
                                'Price',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Container(
                              width: 120,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "Price*",
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(20.0))),
                              )),
                          new Container(
                              width: 120,
                              height: 50,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[200],
                                  border: Border.all()),
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                hint: Text('PKR'),
                                // value: _value,
                                // onChanged: (value) {
                                //   setState(() {
                                //     _value = value;
                                //   });
                                // },
                                // items: <String>[
                                //   'Sq. Ft.',
                                //   'Sq. M.',
                                //   'Sq. Yd',
                                //   'Marla',
                                //   'Kanal'
                                // ].map((String user) {
                                //   return new DropdownMenuItem<String>(
                                //     value: user,
                                //     child: new Text(
                                //       user,
                                //       style: TextStyle(color: Colors.black),
                                //     ),
                                //   );
                                // }).toList(),
                              )))
                        ]),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6,
                //  color: Colors.brown,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.batch_prediction_rounded,
                                color: Colors.black,
                              ),
                              Text(
                                'Bedrooms',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Container(
                              width: 300,
                              height: 50,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                  border: Border.all()),
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                hint: Text('Please Select'),
                                value: _value2,
                                onChanged: (value) {
                                  setState(() {
                                    _value2 = value;
                                  });
                                },
                                items: <String>[
                                  'Studio',
                                  '1',
                                  '2',
                                  '3',
                                  '4',
                                  '5',
                                  '6',
                                  '7',
                                  '8',
                                  '9',
                                  '10',
                                  '11',
                                  '12',
                                ].map((String user) {
                                  return new DropdownMenuItem<String>(
                                    value: user,
                                    child: new Text(
                                      user,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  );
                                }).toList(),
                              )))
                        ]),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6,
                //  color: Colors.brown,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bathtub,
                                color: Colors.black,
                              ),
                              Text(
                                'Baths',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Container(
                              width: 300,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "Type number of bathrooms*",
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(5.0))),
                              )),
                        ]),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                //  color: Colors.brown,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.black,
                              ),
                              Text(
                                'Contact Details',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            new Container(
                                width: 300,
                                child: TextFormField(
                                    cursorColor: Colors.black,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w300),
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      contentPadding: EdgeInsets.all(10),
                                      hintText: "Email*",
                                      // border: OutlineInputBorder(
                                      //     borderSide:
                                      //         BorderSide(color: Colors.grey),
                                      //     borderRadius:
                                      //         BorderRadius.circular(20.0))),
                                    ))),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Form(
                          key: formKey,
                          child: Container(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  InternationalPhoneNumberInput(
                                    onInputChanged: (PhoneNumber number) {
                                      print(number.phoneNumber);
                                    },
                                    onInputValidated: (bool value) {
                                      print(value);
                                    },
                                    selectorConfig: SelectorConfig(
                                      selectorType:
                                          PhoneInputSelectorType.BOTTOM_SHEET,
                                    ),
                                    ignoreBlank: false,
                                    autoValidateMode: AutovalidateMode.disabled,
                                    selectorTextStyle:
                                        TextStyle(color: Colors.black),
                                    initialValue: number,
                                    textFieldController: controller,
                                    formatInput: false,
                                    keyboardType:
                                        TextInputType.numberWithOptions(
                                            signed: true, decimal: true),
                                    inputBorder: OutlineInputBorder(),
                                    onSaved: (PhoneNumber number) {
                                      print('On Saved: $number');
                                    },
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                //  color: Colors.brown,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.perm_device_info_outlined,
                                color: Colors.black,
                              ),
                              Text(
                                'Property Images',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                            iconSize: 80,
                            icon: Icon(Icons.add_a_photo),
                            onPressed: () => {
                                  getImage(),
                                })
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ]),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.red,
          ),
          label: '',
          // backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_box_rounded,
          ),
          label: '',
          backgroundColor: Colors.red,
        ),
      ]),
    );
  }

  Widget _searchBar(String title) {
    return TextFormField(
      cursorColor: Colors.black,
      style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 15.0,
          fontWeight: FontWeight.w300),
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.all(10),
          hintText: "$title",
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(5.0))),
    );
  }

  Widget _tabBar1() {
    Row(
      children: [
        ChoiceChip(
          pressElevation: 0.0,
          selectedColor: Colors.blue,
          backgroundColor: Colors.grey[100],
          label: Text("Phones"),
          selected: _value == 0,
          onSelected: (bool selected) {
            setState(() {
              _value = selected ? 0 : null;
            });
          },
        ),
        ChoiceChip(
          pressElevation: 0.0,
          selectedColor: Colors.blue,
          backgroundColor: Colors.grey[100],
          label: Text("Computers"),
          selected: _value == 1,
          onSelected: (bool selected) {
            setState(() {
              _value = selected ? 1 : null;
            });
          },
        ),
        ChoiceChip(
          pressElevation: 0.0,
          selectedColor: Colors.blue,
          backgroundColor: Colors.grey[100],
          label: Text("Accesories"),
          selected: _value == 2,
          onSelected: (bool selected) {
            setState(() {
              _value = selected ? 2 : null;
            });
          },
        )
      ],
    );
  }
}
