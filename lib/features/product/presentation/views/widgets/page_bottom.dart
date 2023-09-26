import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../home/presentation/models/card_model.dart';

class PageBottom extends StatelessWidget {
  const PageBottom({super.key, required this.card});
  final MyCard card;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: BuyOnAmazonButton(card: card,),
    );
  }
}

class BuyOnAmazonButton extends StatelessWidget {
  const BuyOnAmazonButton({
    super.key, required this.card,
  });
  final MyCard card;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //String url = 'https://${card.url}';
        String url = card.url;

        launchURL3(url);
        print('Go yalla');
      },
      child: Container(
        //height: 100,
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade400,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Container(
          padding: const EdgeInsets.all(25),
          child: const Center(
            child: Text(
              'Buy Now on Amazon',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
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
    final Uri uri = Uri(scheme: "https", host: url);
    //final Uri uri = Uri(host: url);

    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )
    ){
      throw "Cannot launch url";
    }
  }
}

class Price extends StatelessWidget {
  const Price({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.favorite,
            color: Colors.pinkAccent,
          ),
          onPressed: () {},
        ),
        const Text('\$' '90'),
      ],
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white24,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              //decrementQuantity();
            },
          ),
        ),
        const SizedBox(
          width: 40,
          child: Center(
            child: Text('0'),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white24,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              //incrementQuantity();
            },
          ),
        ),
      ],
    );
  }
}
