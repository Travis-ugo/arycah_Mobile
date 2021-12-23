import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            IconlyBold.arrow_left,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Wishlist',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Container(),
          FloatingActionButton(
            elevation: 0.0,
            onPressed: () {},
            child: const Icon(
              Icons.add,
            
            ),
          )
        ],
      ),
    );
  }
}
