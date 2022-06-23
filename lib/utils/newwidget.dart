import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  int count = 1;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff403E3D),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xffb6721c),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: screenHeight * 0.02,
                left: screenWidth * 0.42,
                bottom: screenHeight * 0.02),
            child: Text(
              'Orders',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  ListBody(
                    children: [
                      for (int i = 0; i < count; i++) OrderForm(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.02),
            child: Align(
              child: SizedBox(
                width: screenWidth * 0.2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffb6721c),
                  ),
                  onPressed: () {},
                  child: Text('Send'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OrderForm extends StatelessWidget {
  const OrderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(color: Colors.grey),
    );
  }
}
