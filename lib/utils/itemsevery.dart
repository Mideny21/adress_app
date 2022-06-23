// int ad_count = items.length ~/ 6; // divide by number of entries between every ad
// int showed_ads = 0; // counter variable

// GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2),
//             itemCount: items.length + ad_count,
//             itemBuilder: (BuildContext ctx, index) {
//               if((index+1)%ad_count == 0) // modulo defines the count between every ad
//               {
//                  showed_ads += 1;
//                  return AdBanner(); // your AdBanner class here
//               }
//               return Container(
//                     color: Colors.black,
//                     margin: const EdgeInsets.only(top: 10),
//                     child: ProductCard(data: item[index-showed_ads]));
//             }),