import 'package:carousel_slider/carousel_slider.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:realacres/Screens/More_detail.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
          backgroundColor: Colors.white,
          expandedHeight: 250,
          pinned: true,
          floating: false,
          primary: false,
          snap: false,
          title: Text(
            'Title of App Bar',
            style: TextStyle(color: Colors.black),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: CarouselSlider(
              items: [
                Container(
                  child: Image(
                    image: AssetImage('assets/h1.png'),
                    fit: BoxFit.cover,
                  ),
                ),

                //2nd Image of Slider
                Container(
                  child: Image(
                    image: AssetImage('assets/h2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                //3rd Image of Slider
                Container(
                  child: Image(
                    image: AssetImage('assets/h3.png'),
                    fit: BoxFit.cover,
                  ),
                ),

                //4th Image of Slider
                Container(
                  child: Image(
                    image: AssetImage('assets/h4.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),

                //5th Image of Slider
                Container(
                  child: Image(
                    image: AssetImage('assets/h5.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 250,
                enlargeCenterPage: true,
                autoPlay: true,
                // aspectRatio: 16 / 9,
                initialPage: 0,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 1,
              ),
            ),
          )),
      SliverFillRemaining(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Container(
                      child: mainConatiner(context),
                    ),
                    Divider(
                      height: 2,
                      thickness: 1,
                    ),
                    ExpansionTileCard(
                      title: Text(
                        "Description of the house",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Text(
                        "Subtitle of description of the house",
                        style: TextStyle(fontSize: 12),
                      ),
                      children: <Widget>[
                        Divider(
                          thickness: 1.0,
                          height: 1.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Text(
                              'Complete description of the house',
                              // style: Theme.of(context)
                              //     .textTheme
                              //     .bodyText2
                              //     .copyWith(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTileCard(
                      // baseColor: Colors.cyan[50],
                      // expandedColor: Colors.red[50],
                      // key: cardA,
                      // leading:
                      // CircleAvatar(child: Image.asset("assets/images/devs.jpg")),
                      title: Text(
                        "Open houses",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Text("None scheduled",
                          style: TextStyle(fontSize: 12)),
                      children: <Widget>[
                        Divider(
                          thickness: 1.0,
                          height: 1.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Text(
                              'Contact an agent for a private showing',
                              // style: Theme.of(context)
                              //     .textTheme
                              //     .bodyText2
                              //     .copyWith(fontSize: 16),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
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
                            child: Text('Request a private showing',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ExpansionTileCard(
                      // baseColor: Colors.cyan[50],
                      // expandedColor: Colors.red[50],
                      // key: cardA,
                      // leading:
                      // CircleAvatar(child: Image.asset("assets/images/devs.jpg")),
                      title: Text(
                        "Neighbourhood information",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Text("Neighbourhood information not available ",
                          style: TextStyle(fontSize: 12)),
                      children: <Widget>[
                        Divider(
                          thickness: 1.0,
                          height: 1.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Text(
                              'Information of the neighbourhood',
                              // style: Theme.of(context)
                              //     .textTheme
                              //     .bodyText2
                              //     .copyWith(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                              filled: true,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              filled: true,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Message',
                              hintMaxLines: 5,
                              filled: true,
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 40.0),
                            ),
                          ),
                          SizedBox(height: 20),
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
                            child: Text('Submit',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                )),
                          ),
                        ],
                      ),
                    )
                  ])),
            ],
          ),
        ),
      )
    ]));
  }

  Widget expansionTile() {
    ExpansionTile(
      title: Text(
        'This is the Heading of Expansion tile',
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            'This is the title of expansion tile',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }

  Widget expansionTileCard() {
    ExpansionTileCard(
      baseColor: Colors.cyan[50],
      expandedColor: Colors.red[50],
      // key: cardA,
      leading: CircleAvatar(child: Image.asset("assets/images/devs.jpg")),
      title: Text("Flutter Dev's"),
      subtitle: Text("FLUTTER DEVELOPMENT COMPANY"),
      children: <Widget>[
        Divider(
          thickness: 1.0,
          height: 1.0,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Text(
              "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
              " creative and leading-edge flutter app development solutions for customers all around the globe.",
              // style: Theme.of(context)
              //     .textTheme
              //     .bodyText2
              //     .copyWith(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }

  Widget contactForm() {
    TextField(
      decoration: InputDecoration(
        hintText: 'Name',
        filled: true,
      ),
    );
    TextField(
      decoration: InputDecoration(
        hintText: 'Email',
        filled: true,
      ),
    );
    TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
        hintText: 'Message',
        hintMaxLines: 5,
        filled: true,
      ),
    );
  }

  Widget mainConatiner(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('365,904',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () => {
                        //TO-DO
                      }),
              IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () => {
                        //TO-DO
                      }),
            ],
          )
        ],
      ),
      Column(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Address and location of the house',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            thickness: 1.0,
            height: 1.0,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('5',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('beds'),
                    ],
                  ),
                  VerticalDivider(
                    thickness: 2,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text('0',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('baths'),
                    ],
                  ),
                  VerticalDivider(
                    thickness: 2,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text('45',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('sqft'),
                    ],
                  ),
                  VerticalDivider(
                    thickness: 2,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text('4.20',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('acre lot'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            thickness: 1.0,
            height: 1.0,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'How much home can you afford?',
                    style: TextStyle(color: Colors.blue[200], fontSize: 20),
                  )
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.satellite_outlined),
              Text('For Sale'),
              SizedBox(
                width: 140,
              ),
              Icon(Icons.date_range),
              Text('61 days on Real Acres'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.label_outlined),
              Text('Land'),
              SizedBox(
                width: 160,
              ),
              Icon(Icons.sensor_door_outlined),
              Text('Style'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MoreDetail()),
                    );
                  },
                  child: Text(
                    'More Details',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue[200],
                    ),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 30),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.purple,
                          width: 1,
                          style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: () {
                  //TO-DO
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Contact an agent',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.purple, fontSize: 20)),
                ),
              ),
            ],
          ),
        )
      ])
    ]);
  }
}
