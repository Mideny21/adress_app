import 'package:flutter/material.dart';

import '../widgets/category.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<Map> _categories = [
    {
      'name': 'Clothing',
    },
    {
      'name': 'Construction',
    },
    {
      'name': 'Goverments',
    },
    {
      'name': 'IT Services',
    },
    {
      'name': 'Real Estate',
    },
    {
      'name': 'Hotels',
    },
    {
      'name': 'Lawyers',
    },
    {
      'name': 'Restraunts',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text("Category",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
          const SizedBox(height: 8),
          GridView.builder(
            padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: MediaQuery.of(context).size.height / 480,
            ),
            itemCount: 8 + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == 9 - 1) {
                return GestureDetector(
                  onTap: () {},
                  child: Center(
                      child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Color(0xffd9f3ff)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("More",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                          Icon(Icons.more_horiz, color: Color(0xff42C2FF)),
                        ],
                      ),
                    ),
                  )),
                );
              }
              return Container(
                decoration: BoxDecoration(color: Color(0xffD9F3FF)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/Icons/dish(1).png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(_categories[index]['name'],
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black))
                    ]),
              );
            },
          ),
        ],
      ),
    );
  }
}
