import 'package:flutter/material.dart';

class BlueBar extends StatelessWidget {
  const BlueBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.28,
      decoration: const BoxDecoration(
          color: Color(0xFF407BFF),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(Icons.dehaze)),
            SizedBox(width: MediaQuery.of(context).size.width * 0.2),
            const Text("Home",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500))
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Let's Find",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Text(
                "that Business",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
                color: const Color(0xffD9F3FF),
                borderRadius: BorderRadius.circular(30)),
            child: TextFormField(
                decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: const EdgeInsets.only(
                  left: 15, bottom: 11, top: 11, right: 15),
              hintText: 'Search for a business or Service',
              prefixIcon: IconButton(
                icon: Icon(Icons.search_rounded,
                    size: 24.0, color: Colors.grey[500]),
                onPressed: () {},
              ),
            )),
          ),
        )
      ]),
    );
  }
}
