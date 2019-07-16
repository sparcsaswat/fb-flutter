import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../utils/bottomnavigtor.dart';

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<String> timeList = [
    '8 AM',
    '9 AM',
    '10 AM',
    '11 AM',
    '12 AM',
    '1 PM',
    '2 PM',
    '3 PM',
    '4 PM',
    '5 PM',
    '6 PM',
    '7 PM',
    '8 PM'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget interestview() {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
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
              childCount: 5,
            ),
          ),
          const SliverAppBar(
            pinned: true,
            backgroundColor: Color.fromRGBO(239, 239, 239, 1),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Food Preference',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
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
                  color: Colors.white,
                  child: Text('Containt'),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget preferenceview() {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
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
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }

  Widget calenderview() {
    return Container(
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  child: Text(
                    'Free timing :',
                    style: TextStyle(
                        color: Color.fromRGBO(45, 72, 156, 1),
                        fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.all(10.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 28,
                    ),
                    Text('SUN'),
                    Text('MON'),
                    Text('TUE'),
                    Text('WED'),
                    Text('THU'),
                    Text('FRI'),
                    Text('SAT'),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(height: 14),
                        ...timeList
                            .map((time) => SizedBox(
                                  height: 52,
                                  child: Text(time),
                                ))
                            .toList(),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 58,
                      child: GridView.builder(
                        itemCount: 91,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 7),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            child: Card(
                              color: Colors.green,
                              elevation: 5.0,
                              child: Container(
                                alignment: Alignment.center,
                              ),
                            ),
                            // onTap: () {
                            //   setState(() {
                            //     isSelected = _languageIndex == index;
                            //   });
                            // },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 239, 239, 1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: flotingbotton(context),
      bottomNavigationBar: buoomnavigationbar(context),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              color: Color.fromRGBO(45, 72, 156, 1),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 5.2,
                  left: 10.0,
                  right: 10.0),
              height: MediaQuery.of(context).size.height / 6.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          Text(
                            'Saswat Saubhagya Rout',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Icon(Icons.location_on),
                              ),
                              Text('India', style: TextStyle())
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30.0),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '389',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.restaurant_menu,
                                          size: 18.0,
                                        ),
                                        Text(
                                          'Foodprint',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  103, 108, 115, 1)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text('4',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.restaurant_menu,
                                          size: 18.0,
                                        ),
                                        Text('Cuisine',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  103, 108, 115, 1),
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '389',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.person,
                                          size: 18.0,
                                        ),
                                        Text(
                                          'Buddies',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                103, 108, 115, 1),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.7,
                  left: 10.0,
                  right: 10.0),
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromRGBO(45, 72, 156, 1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                style:
                    TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: '  Write something About Yourself ',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 30.0, top: MediaQuery.of(context).size.height / 7),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img4.jpg'),
                radius: 40,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(205, 209, 216, 1),
                borderRadius: BorderRadius.circular(25.0),
              ),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.3,
                  left: 10.0,
                  right: 10.0),
              child: TabBar(
                controller: _tabController,
                unselectedLabelColor: Color.fromRGBO(45, 72, 156, 1),
                indicator: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25.0)),
                tabs: <Widget>[
                  Tab(
                    text: 'Interest',
                  ),
                  Tab(
                    text: 'Preference',
                  ),
                  Tab(
                    text: 'Calender',
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2,
              ),
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  interestview(),
                  preferenceview(),
                  calenderview(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
