import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:location/location.dart';
import 'package:realacres/Detail_page.dart';
import 'package:realacres/Screens/AddProperty.dart';
import 'package:realacres/Screens/filters.dart';
import 'package:realacres/Screens/price.dart';
import 'package:realacres/Screens/Bed_Bath.dart';

class HomePage extends StatefulWidget {
  bool pressed = false;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleMapController _controller;
  Location _location = Location();

  void _onMapCreated(GoogleMapController _cntlr) {
    _controller = _cntlr;
    _location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude, l.longitude), zoom: 15),
        ),
      );
    });
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(),
          title: _searchBar(),
          actions: [
            IconButton(
                icon: Icon(Icons.map, color: Colors.black),
                onPressed: () {
                  //TO-DO
                })
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.0, 0.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: _filters(),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.70,
                  width: MediaQuery.of(context).size.width,
                  child: GoogleMap(
                    mapToolbarEnabled: true,
                    buildingsEnabled: true,
                    myLocationEnabled: true,
                    zoomGesturesEnabled: true,
                    zoomControlsEnabled: false,
                    myLocationButtonEnabled: true,
                    mapType: MapType.terrain,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: _onMapCreated,
                  ),
                )
              ],
            ),
            // Column(
            //   children: [
            //     widget.pressed ? priceCard() : SizedBox(),
            //   ],
            // )
          ],
        ),
      ),
      floatingActionButton: _floatingButton(),
      bottomNavigationBar: _bottomNavigation(),
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

  Widget _bottomNavigation() {
    return BottomNavigationBar(
      // currentIndex: _currentIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.red),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_sharp, color: Colors.grey),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active_outlined, color: Colors.grey),
          label: 'Noifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle, color: Colors.grey),
          label: 'Account',
        ),
      ],
      type: BottomNavigationBarType.shifting,
      // currentIndex: _selectedIndex,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      iconSize: 30,
      // onTap: (index) {
      //   setState(() {
      //     _currentIndex = index;
      //   });
      //   _onTap();
      // },
    );
  }

  Widget _filters() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Filter(),
                            ));
                      },
                      child: Text('Filters',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Price(),
                            ));
                      },
                      child: Text('Price',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddProperty(),
                            ));
                      },
                      child: Text('Property Type',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BedBath(),
                            ));
                      },
                      child: Text('Bed/Bath',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          )
        ]);
  }

  Widget _floatingButton() {
    return SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22),
        backgroundColor: Colors.white,
        visible: true,
        curve: Curves.bounceIn,
        children: [
          // B1
          SpeedDialChild(
            child: Icon(Icons.gps_fixed),
            backgroundColor: Colors.white,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage()),
              );
            },
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16.0),
            labelBackgroundColor: Colors.white,
          ),
          // B2
          SpeedDialChild(
              child: Icon(Icons.highlight_alt_rounded),
              backgroundColor: Colors.white,
              onTap: () {
                //TO-DO
              },
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 16.0),
              labelBackgroundColor: Colors.white),

          // B3
          SpeedDialChild(
            child: Icon(Icons.my_library_books_outlined),
            backgroundColor: Colors.white,
            onTap: () {
              //TO-DO
            },
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16.0),
            labelBackgroundColor: Colors.white,
          )
        ]);
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
