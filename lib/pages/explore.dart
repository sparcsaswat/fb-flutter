import 'package:flutter/material.dart';
import 'dart:io';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../utils/bottomnavigtor.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Widget googlemap() {
    return Container(
      //color: Colors.yellow,
      height: MediaQuery.of(context).size.height / 3.5,
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
      ),
    );
  }

  Widget quickconnect() {
    return Container(
      //padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Card(
        elevation: 0.5,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(45, 72, 156, 1),
              borderRadius: BorderRadius.circular(10.0)),
          child: ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('6'),
              ),
            ),
            title: Text(
              'Quick Connect',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: <Widget>[
                Expanded(
                  child: Text('Grab a quick bite right now',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget foodbudies() {
    return Container(
      child: Card(
        elevation: 0.5,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1.0,
                )
              ]),
          child: ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right: new BorderSide(width: 1.0, color: Colors.black))),
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(45, 72, 156, 1),
                child: Text(
                  '6',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            title: Text(
              'Food Buddies',
              style: TextStyle(
                  color: Color.fromRGBO(45, 72, 156, 1),
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: <Widget>[
                Expanded(
                  child: Text('Connect effortlessly with our FoodBuddy network',
                      style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget peoplelist() {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0,top: 10.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Color.fromRGBO(211, 225, 252, 1),
                  child: Text('Containt'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget explorepeopleview() {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
                [googlemap(), quickconnect(), foodbudies()]),
          ),
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            delegate: SliverChildListDelegate([peoplelist()]),
          )
        ],
      ),
    );
  }

  Widget exploreplaceview() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ClipPath(
              clipper: ClippingClass(),
              child: Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: new BoxDecoration(
                  color: Color.fromRGBO(45, 72, 156, 1),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Buddy Suggestion',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              color: Color.fromRGBO(45, 72, 156, 1),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(45, 72, 156, 1)),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    child: Icon(Icons.restaurant),
                                  ),
                                  title: Text(
                                    'Haldirams',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Address',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Food Preference: ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(45, 72, 156, 1),
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      height: Platform.isIOS ? 150.0 : 110.0,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.red),
                            width: 150.0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.blue),
                            width: 160.0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.green),
                            width: 160.0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.yellow),
                            width: 160.0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.orange),
                            width: 160.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(247, 247, 247, 1),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: flotingbotton(context),
        bottomNavigationBar: buoomnavigationbar(context),
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Color.fromRGBO(45, 72, 156, 1),
            indicatorColor: Colors.white,
            indicator: BoxDecoration(
                color: Color.fromRGBO(45, 72, 156, 1),
                borderRadius: BorderRadius.circular(25.0)),
            tabs: <Widget>[
              Tab(
                text: 'Explore People',
              ),
              Tab(
                text: 'Explore Places',
              )
            ],
          ),
          title: Center(
            child: Text(
              'Explore',
              style: TextStyle(color: Color.fromRGBO(45, 72, 156, 1)),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[explorepeopleview(), exploreplaceview()],
        ),
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
