import 'package:enplugged/investor/detailsI.dart';
import 'package:flutter/material.dart';

class DashboardI extends StatefulWidget {
  DashboardI({Key key}) : super(key: key);

  @override
  _DashboardIState createState() => _DashboardIState();
}

class _DashboardIState extends State<DashboardI> {
  static List<String> entries = <String>[
    'Ahish',
    'Binod',
    'Chaman',
    'Dinesh',
    'Enzo',
    'Frodo',
    'Ghasita Lal',
    'Hitman Rohit',
    'Inqualab',
    'Jagdish',
    'Kohli',
    'Lalsan'
  ];
  static List<String> date = <String>[
    '12 Jan 2019',
    '14 Feb 2020',
    '15 Mar 2021',
    '17 Apr 2019',
    '20 May 2021',
    '23 Jun 2020',
    '24 Jul 2019',
    '17 Aug 2018',
    '23 Sep 2021',
    '29 Oct 2022',
    '28 Nov 2020',
    '31 Dec 2019'
  ];
  static List<String> occupation = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L'
  ];
  static List<String> post = <String>[
    'The greatest glory in living lies not in never falling, but in rising every time we fall.',
    'The way to get started is to quit talking and begin doing.',
    'If life were predictable it would cease to be life, and be without flavor.',
    'If you set your goals ridiculously high and its a failure, you will fail above everyone else success.',
    'Life is what happens when youre busy making other plans',
    'The greatest glory in living lies not in never falling, but in rising every time we fall.',
    'The way to get started is to quit talking and begin doing.',
    'If life were predictable it would cease to be life, and be without flavor.',
    'If you set your goals ridiculously high and its a failure, you will fail above everyone else success.',
    'Life is what happens when youre busy making other plans',
    'If you set your goals ridiculously high and its a failure, you will fail above everyone else success.',
    'Life is what happens when youre busy making other plans',
  ];
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    ListView.builder(
        padding: const EdgeInsets.fromLTRB(2, 28, 2, 2),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ]),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text(
                        '${occupation[index]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(
                      '${entries[index]}',
                      style: TextStyle(color: Colors.blue, fontSize: 19),
                    ),
                    subtitle: Text(
                      "${post[index]}",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DetailsI()));
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('${date[index]}',
                          style: TextStyle(color: Colors.grey[700])),
                      const SizedBox(width: 8),
                      const SizedBox(width: 8),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  )
                ],
              ),
            ),
          );
        }),
    Text('Investor Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Guide Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Padding(
      padding: EdgeInsets.fromLTRB(1, 50, 2, 2),
      child: Column(
        children: <Widget>[
          Card(
            color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      'En',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  title: Text('Entrepreneur',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Lobster")),
                  subtitle: Text(
                      'Search any Entrepreneur Registered with Us...',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Lobster")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    const SizedBox(width: 8),
                    RaisedButton(
                      color: Colors.white,
                      child: const Text('SEARCH',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lobster")),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      'In',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  title: Text('Investor',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Lobster")),
                  subtitle: Text('Search any Investor Registered with Us...',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Lobster")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    const SizedBox(width: 8),
                    RaisedButton(
                      color: Colors.white,
                      child: const Text('SEARCH',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lobster")),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      'Gu',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  title: Text('Guide',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Lobster")),
                  subtitle: Text('Search any Guide Registered with Us...',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Lobster")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    const SizedBox(width: 8),
                    RaisedButton(
                      color: Colors.white,
                      child: const Text('SEARCH',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lobster")),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    //profile Section
    //

    //profile Section
    //
    SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue[900], Colors.blue[200]])),
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40.0,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://media.beam.usnews.com/d1/d8/8501ba714a21aed9a7327e02ade1/180515-10thingselonmusk-editorial.jpg",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Elon Musk",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 22.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "TurnOver",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "120000",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "Success",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "Since",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "1957",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(1, 20, 2, 2),
            child: Column(
              children: <Widget>[
                Card(
                  color: Colors.indigo.shade600,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.fiveblocks.com/wp-content/uploads/2018/01/edit-wikipedia.png'),
                        ),
                        title: Text('Edit Your Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Lobster")),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          const SizedBox(width: 8),
                          RaisedButton(
                            color: Colors.white,
                            child: const Text('Edit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Lobster")),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.indigo.shade600,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://aneliteresume.com/wp-content/uploads/2019/09/Make-Connections-When-You-Don%E2%80%99t-Have-the-Natural-%E2%80%9CIn%E2%80%9D.jpg'),
                        ),
                        title: Text('Connections Made',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Lobster")),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          const SizedBox(width: 8),
                          RaisedButton(
                            color: Colors.white,
                            child: const Text('Connect',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Lobster")),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.indigo.shade600,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.masscommunicationtalk.com/wp-content/uploads/2016/02/writing-1.jpg'),
                        ),
                        title: Text('Posts Made',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Lobster")),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          const SizedBox(width: 8),
                          RaisedButton(
                            color: Colors.white,
                            child: const Text('View',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Lobster")),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                    color: Colors.indigo.shade600,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://www.logodesign.net/logo/abstract-cuboid-building-4519ld.png'),
                          ),
                          title: Text('Enter Company Logo',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Lobster")),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            const SizedBox(width: 8),
                            RaisedButton(
                              color: Colors.white,
                              child: const Text('Link',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Lobster")),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          )
        ],
      ),
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showToast() =>
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Posted"),
          duration: Duration(
            milliseconds: 1000,
          )));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(),
          child: _widgetOptions.elementAt(_selectedIndex),
        )),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.featured_play_list),
                  title: Text('Post'),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.engineering),
                  title: Text('Entrepreneur'),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assistant_navigation),
                  title: Text('Guide'),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('Search'),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.blue,
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: 25,
            onTap: _onItemTapped,
            elevation: 5),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: Text(
                        'Post Your Thoughts',
                        style: TextStyle(color: Colors.blue),
                      ),
                      content: TextFormField(
                        maxLines: 3,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Fill this Section';
                          }
                          return null;
                        },
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            labelText: "Thought Section",
                            labelStyle: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 25,
                              horizontal: 25,
                            ),
                            focusColor: Color(0xff0962ff),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                      actions: <Widget>[
                        // ignore: deprecated_member_use
                        OutlineButton(
                          onPressed: () {
                            _showToast();
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Post',
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ));
          },
          child: const Icon(Icons.edit),
        ));
  }
}
