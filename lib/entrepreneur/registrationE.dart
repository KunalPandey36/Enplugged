import 'package:enplugged/entrepreneur/dashboardE.dart';
import 'package:flutter/material.dart';

class RegistrationEntrepreneur extends StatefulWidget {
  RegistrationEntrepreneur({Key key}) : super(key: key);

  @override
  _RegistrationEntrepreneurState createState() =>
      _RegistrationEntrepreneurState();
}

class _RegistrationEntrepreneurState extends State<RegistrationEntrepreneur> {
  final _formkey = GlobalKey<FormState>();
  String valueChoose;
  String valueKind;
  String status;
  String valueyesno;
  String valueyesno2;
  String startsucc;
  String edu;
  List listItem = [
    "Select your Profession",
    "Profession as Entreprenuer",
    "Profession as Investor",
    "Profession as Guide"
  ];
  List education = ["Bachelor Degree", "Master's Degree", "Phd"];
  List yesno = [
    "YES",
    "NO",
  ];
  List kind = ["Product Based", "Service Based", "Both"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Welcome Entrepreneur..",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Register Your Company For Better Result",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "For The Founder",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            LinearProgressIndicator(
                              backgroundColor: Colors.blue,
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                  Colors.white),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            TextFormField(
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
                                  labelText: 'StartUp Name',
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
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            TextFormField(
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
                                  labelText: "Idea Of StartUp",
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
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            TextFormField(
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
                                  labelText: 'Area Of Work',
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
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Empty Section';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  labelText: 'Enter Funding Amount',
                                  labelStyle: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 27,
                                    horizontal: 25,
                                  ),
                                  focusColor: Color(0xff0962ff),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 3, left: 3),
                                child: Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(color: Colors.black),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.transparent,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 6.0,
                                          ),
                                        ]),
                                    child: DropdownButtonHideUnderline(
                                        child: Center(
                                      child: DropdownButton(
                                        iconEnabledColor: Colors.transparent,
                                        hint: Text(
                                          "Kind Of StartUp",
                                        ),
                                        dropdownColor: Colors.white,
                                        value: valueKind,
                                        onChanged: (newValue) {
                                          setState(() {
                                            valueKind = newValue;
                                          });
                                        },
                                        items: kind.map((valueItem) {
                                          return DropdownMenuItem(
                                              value: valueItem,
                                              child: Center(
                                                child: Text(
                                                  valueItem,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ));
                                        }).toList(),
                                      ),
                                    )))),
                            SizedBox(
                              height: 14,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Fill this Section';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  labelText: "Age of Company",
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
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Fill this Section';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  labelText: 'Total Number Of Employee',
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
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 3, left: 3),
                                child: Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(color: Colors.black),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.transparent,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 6.0,
                                          ),
                                        ]),
                                    child: DropdownButtonHideUnderline(
                                        child: Center(
                                      child: DropdownButton(
                                        iconEnabledColor: Colors.transparent,
                                        hint: Text(
                                          "Was Part of Startup",
                                        ),
                                        dropdownColor: Colors.white,
                                        value: valueyesno,
                                        onChanged: (newValue) {
                                          setState(() {
                                            valueyesno = newValue;
                                          });
                                        },
                                        items: yesno.map((valueItem) {
                                          return DropdownMenuItem(
                                              value: valueItem,
                                              child: Center(
                                                child: Text(
                                                  valueItem +
                                                      " Part Of StartUp",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ));
                                        }).toList(),
                                      ),
                                    )))),
                            SizedBox(
                              height: 14,
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 3, left: 3),
                                child: Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(color: Colors.black),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.transparent,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 6.0,
                                          ),
                                        ]),
                                    child: DropdownButtonHideUnderline(
                                        child: Center(
                                      child: DropdownButton(
                                        iconEnabledColor: Colors.transparent,
                                        hint: Text(
                                          "Was Startup successfull",
                                        ),
                                        dropdownColor: Colors.white,
                                        value: startsucc,
                                        onChanged: (newValue) {
                                          setState(() {
                                            startsucc = newValue;
                                          });
                                        },
                                        items: yesno.map((valueItem) {
                                          return DropdownMenuItem(
                                              value: valueItem,
                                              child: Center(
                                                child: Text(
                                                  valueItem,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ));
                                        }).toList(),
                                      ),
                                    )))),
                            SizedBox(
                              height: 14,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Fill this Section';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  labelText: 'Total Number Advisors',
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
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 3, left: 3),
                                child: Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(color: Colors.black),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.transparent,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 6.0,
                                          ),
                                        ]),
                                    child: DropdownButtonHideUnderline(
                                        child: Center(
                                      child: DropdownButton(
                                        iconEnabledColor: Colors.transparent,
                                        hint: Text(
                                          "Worked in Top Companies",
                                        ),
                                        dropdownColor: Colors.white,
                                        value: valueyesno2,
                                        onChanged: (newValue) {
                                          setState(() {
                                            valueyesno2 = newValue;
                                          });
                                        },
                                        items: yesno.map((valueItem) {
                                          return DropdownMenuItem(
                                              value: valueItem,
                                              child: Center(
                                                child: Text(
                                                  valueItem +
                                                      " Worked with Top Company",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ));
                                        }).toList(),
                                      ),
                                    )))),
                            SizedBox(
                              height: 14,
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 3, left: 3),
                                child: Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(color: Colors.black),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.transparent,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 6.0,
                                          ),
                                        ]),
                                    child: DropdownButtonHideUnderline(
                                        child: Center(
                                      child: DropdownButton(
                                        iconEnabledColor: Colors.transparent,
                                        hint: Text(
                                          "Educational Qualification",
                                        ),
                                        dropdownColor: Colors.white,
                                        value: edu,
                                        onChanged: (newValue) {
                                          setState(() {
                                            edu = newValue;
                                          });
                                        },
                                        items: education.map((valueItem) {
                                          return DropdownMenuItem(
                                              value: valueItem,
                                              child: Center(
                                                child: Text(
                                                  valueItem,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ));
                                        }).toList(),
                                      ),
                                    )))),
                            SizedBox(
                              height: 14,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Container(
                                padding: EdgeInsets.only(top: 3, left: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border(
                                      bottom: BorderSide(color: Colors.black),
                                      top: BorderSide(color: Colors.black),
                                      left: BorderSide(color: Colors.black),
                                      right: BorderSide(color: Colors.black),
                                    )),
                                child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 60,
                                  onPressed: () {
                                    if (_formkey.currentState.validate()) {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DashboardE()));
                                    }
                                  },
                                  color: Color(0xff0095FF),
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
