import 'package:flutter/material.dart';
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
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Text('data');
        },
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
        body: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                    [googlemap(), quickconnect(), foodbudies()]),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                delegate: SliverChildListDelegate([
                  Container(
                    decoration: BoxDecoration(
                      
                    ),
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext conntext,int index){
                        return Container(
                          child: Text('data'),
                        );
                      },
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
