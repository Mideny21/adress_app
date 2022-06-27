import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BusinessAddress extends StatefulWidget {
  BusinessAddress({Key? key}) : super(key: key);

  @override
  State<BusinessAddress> createState() => _BusinessAddressState();
}

class _BusinessAddressState extends State<BusinessAddress> {
  List<Map> _business = [
    {
      'id': 100,
      'name': 'B&M Store',
      'rating': 4.0,
      'info':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis malesuada condimentum mattis aliquet est metus, gravida nunc tincidunt. Ut sed nulla fermentum, sed enim, suspendisse. Cursus risus, vel volutpat pellentesque aliquet mattis purus. Adipiscing.',
      'date': "2/01/2022",
      'address': 'Mianzini'
    },
    {
      'id': 100,
      'name': 'Maxin Store',
      'rating': 4.0,
      'info':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis malesuada condimentum mattis aliquet est metus, gravida nunc tincidunt. Ut sed nulla fermentum, sed enim, suspendisse. Cursus risus, vel volutpat pellentesque aliquet mattis purus. Adipiscing.',
      'date': "2/01/2022",
      'address': 'Stand Ndogo'
    },
    {
      'id': 100,
      'name': 'Vunjabei Store',
      'rating': 4.0,
      'info':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis malesuada condimentum mattis aliquet est metus, gravida nunc tincidunt. Ut sed nulla fermentum, sed enim, suspendisse. Cursus risus, vel volutpat pellentesque aliquet mattis purus. Adipiscing.',
      'date': "2/01/2022",
      'address': 'Stand Ndogo'
    },
    {
      'id': 100,
      'name': 'Vunjabei Store',
      'rating': 4.0,
      'info':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis malesuada condimentum mattis aliquet est metus, gravida nunc tincidunt. Ut sed nulla fermentum, sed enim, suspendisse. Cursus risus, vel volutpat pellentesque aliquet mattis purus. Adipiscing.',
      'date': "2/01/2022",
      'address': 'Stand Ndogo'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final imageWidth = MediaQuery.of(context).size.width * 0.29;
    final contentWidth = MediaQuery.of(context).size.width * 0.02;
    return Scaffold(
      appBar: AppBar(
        title: Text('Clothing'),
        backgroundColor: const Color(0xff407BFF),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: _business.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 1.0, right: 0.0),
              child: Card(
                elevation: 1.0,
                child: Row(
                  children: [
                    SizedBox(
                      width: imageWidth,
                      child: Image.asset(
                        'assets/Icons/dish(1).png',
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height * 0.155,
                      ),
                    ),
                    SizedBox(width: contentWidth),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  _business[index]['name'],
                                  style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Spacer(),
                              ],
                            ),
                            const SizedBox(height: 2.0),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,
                                    color: Color(0xffFAD3CC)),
                                Text(_business[index]['address'])
                              ],
                            ),
                            const SizedBox(height: 2.0),
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 4.5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ignoreGestures: true,
                                  itemSize: 20,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 1.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    size: 2,
                                    color: Colors.yellow,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                const SizedBox(width: 8.0),
                              ],
                            ),
                            const SizedBox(height: 2.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Expanded(
                                  child: Chip(
                                    elevation: 2,
                                    padding: EdgeInsets.all(8),
                                    backgroundColor: Color(0xff407BFF),
                                    shadowColor: Colors.black,
                                    avatar: Icon(Icons.call,
                                        color: Colors.white,
                                        size: 16), //CircleAvatar
                                    label: Text(
                                      'Call',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ), //Text
                                  ),
                                ),
                                Expanded(
                                  child: const Chip(
                                    elevation: 2,
                                    padding: EdgeInsets.all(8),
                                    backgroundColor: Color(0xff407BFF),
                                    shadowColor: Colors.black,
                                    avatar: Icon(
                                      Icons.visibility,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    label: Text(
                                      'View',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ), //Text
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
