import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Detail Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/photo.jpg',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 0.40,
                          height: MediaQuery.of(context).size.height * 0.25,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text("B&M Store",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipOval(
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration:
                                  BoxDecoration(color: Color(0xff407BFF)),
                              child: Center(
                                child: Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05),
                          ClipOval(
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration:
                                  const BoxDecoration(color: Color(0xff407BFF)),
                              child: Center(
                                child:
                                    Icon(Icons.whatsapp, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05),
                          ClipOval(
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration:
                                  BoxDecoration(color: Color(0xff407BFF)),
                              child: Center(
                                child: Icon(Icons.message, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05),
                          ClipOval(
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration:
                                  const BoxDecoration(color: Color(0xff407BFF)),
                              child: Center(
                                child: FaIcon(FontAwesomeIcons.instagram,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Address',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]))
          ],
        ),
      ),
    );
  }
}
