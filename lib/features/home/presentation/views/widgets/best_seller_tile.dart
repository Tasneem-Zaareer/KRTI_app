import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../constants.dart';
import '../../models/card_model.dart';
import '../../../../product/presentation/views/product_details_page.dart';

class HorizontalListTile extends StatelessWidget {
  const HorizontalListTile({super.key, required this.cart});

  final MyCard cart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProductDetailsPage(card: cart,);
                  },
                ),
              );
            },
            child: Container(
              // width: 200,
              width: MediaQuery.of(context).size.width * .27,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: NetworkImage(cart.imagePath),
                  // image: AssetImage(gift.imagePath),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kPaintingColor,
            ),
            onPressed: () {
             // String url = 'https://amzn.to/44YYhj2';
              //String url = 'google.com';
              String url = cart.url;

              //launchURL(url);
              launchURL3(url);
              //launchURL2(url);

            },
            child: Text(
              'Buy Now',
              style: TextStyle(color: Colors.grey.shade800),
            ),
          )
        ],
      ),
    );
  }


  Future<void> launchURL3(String url) async {
    //go to product page on amazon
    //final url = Uri.parse('https://amzn.to/44YYhj2');
    final uri = Uri.parse(url);
    if(await canLaunchUrl(uri)){
      await launchUrl(uri);
      //print('done =============');
    }

  }
  Future<void> launchURL2(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }
  Future<void> launchURL(String url) async {
     //final Uri uri = Uri(scheme: "https", host: url);
    final Uri uri = Uri(host: url);

    if(!await launchUrl(
      uri,
     mode: LaunchMode.externalApplication,
    )
    ){
      throw "Cannot launch url";
    }
  }
}
