import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BedBath extends StatefulWidget {
  bool selected = false;

  @override
  _BedBathState createState() => _BedBathState();
}

class _BedBathState extends State<BedBath> {
  int _value = 0;
  int _value1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Beds ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
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
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20)),
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
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20)),
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
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20)),
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
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20)),
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
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20)),
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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () => {},
                            child: Text(
                              'CANCEL',
                              style: TextStyle(fontSize: 20),
                            )),
                        TextButton(
                            onPressed: () => {
                                  //TO-DO
                                },
                            child: Text(
                              'Reset',
                              style: TextStyle(fontSize: 20),
                            )),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          onPressed: () {
                            //TO-DO
                          },
                          child: Text('View Results',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }

  Widget bedBath() {
    return Column(children: [
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
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ChoiceChip(
              backgroundColor: Colors.transparent,
              selectedColor: Colors.red,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(300))),
              label: Text("Any", style: TextStyle(fontSize: 20)),
              selected: widget.selected,
              onSelected: (selected) {
                setState(() {
                  widget.selected = selected;
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
              selected: widget.selected,
              onSelected: (selected) {
                setState(() {
                  widget.selected = selected;
                });
              },
            ),
            ChoiceChip(
              backgroundColor: Colors.transparent,
              selectedColor: Colors.red,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(300))),
              label:
                  Text('1', style: TextStyle(color: Colors.grey, fontSize: 20)),
              selected: widget.selected,
              onSelected: (selected) {
                setState(() {
                  widget.selected = selected;
                });
              },
            ),
            ChoiceChip(
              backgroundColor: Colors.transparent,
              selectedColor: Colors.red,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(300))),
              label:
                  Text('2', style: TextStyle(color: Colors.grey, fontSize: 20)),
              selected: widget.selected,
              onSelected: (selected) {
                setState(() {
                  widget.selected = selected;
                });
              },
            ),
            ChoiceChip(
              backgroundColor: Colors.transparent,
              selectedColor: Colors.red,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(300))),
              label:
                  Text('3', style: TextStyle(color: Colors.grey, fontSize: 20)),
              selected: widget.selected,
              onSelected: (selected) {
                setState(() {
                  widget.selected = selected;
                });
              },
            ),
            ChoiceChip(
              backgroundColor: Colors.transparent,
              selectedColor: Colors.red,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(300))),
              label:
                  Text('4', style: TextStyle(color: Colors.grey, fontSize: 20)),
              selected: widget.selected,
              onSelected: (selected) {
                setState(() {
                  widget.selected = selected;
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
              selected: widget.selected,
              onSelected: (selected) {
                setState(() {
                  widget.selected = selected;
                });
              },
            ),
          ]),
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
                      selected: widget.selected,
                      onSelected: (selected) {
                        setState(() {
                          widget.selected = selected;
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
                      selected: widget.selected,
                      onSelected: (selected) {
                        setState(() {
                          widget.selected = selected;
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
                      selected: widget.selected,
                      onSelected: (selected) {
                        setState(() {
                          widget.selected = selected;
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
                      selected: widget.selected,
                      onSelected: (selected) {
                        setState(() {
                          widget.selected = selected;
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
                      selected: widget.selected,
                      onSelected: (selected) {
                        setState(() {
                          widget.selected = selected;
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
                      selected: widget.selected,
                      onSelected: (selected) {
                        setState(() {
                          widget.selected = selected;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () => {},
                    child: Text(
                      'CANCEL',
                      style: TextStyle(fontSize: 20),
                    )),
                TextButton(
                    onPressed: () => {
                          //TO-DO
                        },
                    child: Text(
                      'Reset',
                      style: TextStyle(fontSize: 20),
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.red,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {
                    //TO-DO
                  },
                  child: Text('View Results',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ],
            )
          ],
        )
      ])
    ]);
  }
}
