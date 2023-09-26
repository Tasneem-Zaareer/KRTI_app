import 'package:flutter/material.dart';

class PageBottom extends StatelessWidget {
  const PageBottom({super.key});

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
      child: const BuyOnAmazonButton(),
    );
  }
}

class BuyOnAmazonButton extends StatelessWidget {
  const BuyOnAmazonButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade400,
        borderRadius: BorderRadius.circular(50),
      ),
      child: GestureDetector(
        onTap: () {
          launchURL();
        },
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
  void launchURL() {

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
