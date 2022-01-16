import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  bool status = false;
  bool selected = false;
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int _value = 0;
  int _value1 = 0;
  int _value2 = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                //TO-DO
              }),
          title: Text('Filter'),
          actions: [
            // IconButton(
            //     icon: Icon(Icons.map, color: Colors.black),
            //     onPressed: () {
            //       //TO-DO
            //     })
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () => {
                    //TO-DO
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ))
          ],
          backgroundColor: Colors.deepPurple,
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'BUY',
              ),
              Tab(text: 'RENT'),
              Tab(text: 'SOLD'),
              Tab(text: 'MLS ID'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buy(),
            rent(),
            sold(),
            Tab(icon: Icon(Icons.mail_sharp)),
          ],
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
      ),
    );
  }

  Widget _searchBar() {
    return TextFormField(
      cursorColor: Colors.black,
      style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 15.0,
          fontWeight: FontWeight.w300),
      decoration: InputDecoration(
          fillColor: Colors.white,
          prefixIcon: Padding(
            padding: EdgeInsets.all(0.0),
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ), // icon is 48px widget.
          ),
          filled: true,
          contentPadding: EdgeInsets.all(10),
          hintText: "Search your location",
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5.0))),
    );
  }

  Widget image() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Image(
                  image: AssetImage('assets/pic.png'),
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill),
            ],
          ),
          Column(
            children: [
              Image(
                  image: AssetImage('assets/pics.png'),
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill),
            ],
          )
        ],
      ),
    );
  }

  Widget buy() {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            _searchBar(),
          ],
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Price',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'Min \$',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                    width: 100,
                    child: TextField(
                      maxLength: 8,
                    )),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'to Max \$',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                    width: 100,
                    child: TextField(
                      maxLength: 8,
                    )),
              ],
            ),
          ),
        ],
      ),
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text('Beds ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text('(Tap two numbers to select a range)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey)),
            ],
          ),
        ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text("Any", style: TextStyle(fontSize: 20)),
                    selected: _value == 0,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 0 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('Studio',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 1,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 1 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('1',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 2,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 2 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('2',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 3,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 3 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('3',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 4,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 4 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('4',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 5,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 5 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('5+',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 6,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 6 : null;
                      });
                    },
                  ),
                ]),
          ),
        ]),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Baths ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text("Any", style: TextStyle(fontSize: 20)),
                      selected: _value1 == 0,
                      onSelected: (bool selected) {
                        setState(() {
                          _value1 = selected ? 0 : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text('1',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      selected: _value1 == 1,
                      onSelected: (bool selected) {
                        setState(() {
                          _value1 = selected ? 1 : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text('2',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      selected: _value1 == 2,
                      onSelected: (bool selected) {
                        setState(() {
                          _value1 = selected ? 2 : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text('3',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      selected: _value1 == 3,
                      onSelected: (bool selected) {
                        setState(() {
                          _value1 = selected ? 3 : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text('4',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      selected: _value1 == 4,
                      onSelected: (bool selected) {
                        setState(() {
                          _value1 = selected ? 4 : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text('5+',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      selected: _value1 == 5,
                      onSelected: (bool selected) {
                        setState(() {
                          _value1 = selected ? 5 : null;
                        });
                      },
                    ),
                  ]),
            ),
            Row(
              children: [
                Container(
                  child: Divider(
                    thickness: 1,
                    height: 5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hide Pending/Contingent',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Switch(
                    activeColor: Colors.red,
                    value: _value2 == 0,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value ? 0 : null;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Contruction Only',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Switch(
                    activeColor: Colors.red,
                    value: _value2 == 1,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value ? 1 : null;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hide home not yet build',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Switch(
                    activeColor: Colors.red,
                    value: _value2 == 2,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value ? 2 : null;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Foreclosures Only',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Switch(
                    activeColor: Colors.red,
                    value: _value2 == 3,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value ? 3 : null;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hide Foreclosures',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Switch(
                    activeColor: Colors.red,
                    value: _value2 == 4,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value ? 4 : null;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Open houses only',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Switch(
                    activeColor: Colors.red,
                    value: _value2 == 5,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value ? 5 : null;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price reduced only',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Switch(
                    activeColor: Colors.red,
                    value: _value2 == 6,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value ? 6 : null;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Virtual Tours only',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Switch(
                    activeColor: Colors.red,
                    value: _value2 == 7,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value ? 7 : null;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '3D Tours only',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Switch(
                    activeColor: Colors.red,
                    value: _value2 == 8,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value ? 8 : null;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ])
    ]));
  }

  Widget rent() {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            _searchBar(),
          ],
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Price',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'Min \$',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                    width: 100,
                    child: TextField(
                      maxLength: 8,
                    )),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'to Max \$',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                    width: 100,
                    child: TextField(
                      maxLength: 8,
                    )),
              ],
            ),
          ),
        ],
      ),
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text('Beds ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text('(Tap two numbers to select a range)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey)),
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text("Any", style: TextStyle(fontSize: 20)),
                      selected: _value == 0,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? 0 : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text('Studio',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      selected: _value == 1,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? 1 : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text('1',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      selected: _value == 2,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? 2 : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text('2',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      selected: _value == 3,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? 3 : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text('3',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      selected: _value == 4,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? 4 : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text('4',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      selected: _value == 5,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? 5 : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selectedColor: Colors.red,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(300))),
                      label: Text('5+',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      selected: _value == 6,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? 6 : null;
                        });
                      },
                    ),
                  ]),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Baths ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text("Any", style: TextStyle(fontSize: 20)),
                    selected: _value1 == 0,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 0 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('1',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value1 == 1,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 1 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('2',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value1 == 2,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 2 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('3',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value1 == 3,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 3 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('4',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value1 == 4,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 4 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('5+',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value1 == 5,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 5 : null;
                      });
                    },
                  ),
                ]),
          ),
        ])
      ])
    ]));
  }

  Widget sold() {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            _searchBar(),
          ],
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Price',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'Min \$',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                    width: 100,
                    child: TextField(
                      maxLength: 8,
                    )),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'to Max \$',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                    width: 100,
                    child: TextField(
                      maxLength: 8,
                    )),
              ],
            ),
          ),
        ],
      ),
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text('Beds ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text('(Tap two numbers to select a range)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey)),
            ],
          ),
        ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text("Any", style: TextStyle(fontSize: 20)),
                    selected: _value == 0,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 0 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('Studio',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 1,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 1 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('1',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 2,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 2 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('2',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 3,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 3 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('3',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 4,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 4 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('4',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 5,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 5 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('5+',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value == 6,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? 6 : null;
                      });
                    },
                  ),
                ]),
          ),
        ]),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Baths ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text("Any", style: TextStyle(fontSize: 20)),
                    selected: _value1 == 0,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 0 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('1',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value1 == 1,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 1 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('2',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value1 == 2,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 2 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('3',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value1 == 3,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 3 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('4',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value1 == 4,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 4 : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.red,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(300))),
                    label: Text('5+',
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                    selected: _value1 == 5,
                    onSelected: (bool selected) {
                      setState(() {
                        _value1 = selected ? 5 : null;
                      });
                    },
                  ),
                ]),
          )
        ])
      ])
    ]));
  }

  Widget mlsId() {}
}
