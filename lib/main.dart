import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BusinessCard());
  }
}

class BusinessCard extends StatefulWidget {
  const BusinessCard({super.key});

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.lightBlue),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.38,
                  width: MediaQuery.of(context).size.width * 0.86,
                  decoration: BoxDecoration(
                      color: Colors.teal.shade400,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/logo1.png',
                            height: 80,
                            width: 80,
                          ),
                          Column(
                            children: [
                              Text(
                                'Shahzaib Khan',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Software Developer',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text(
                          '+923252674265',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.badge_outlined),
                        title: Text(
                          'Flutter Developer',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text(
                          'Karachi, Pakistan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
