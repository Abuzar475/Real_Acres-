import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: priceCard(),
    );
  }

  Widget priceCard() {
    return Container(
      color: Colors.white,
      width: 405,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
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
      ),
    );
  }
}
