import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
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
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'RESET',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
            backgroundColor: Colors.red,
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: image(),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: image(),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: image(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'An MLS ID number is a unique number given to homes listed in the multiple listings service (MLS) used by Real Estate Professionals'),
              )
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
}
