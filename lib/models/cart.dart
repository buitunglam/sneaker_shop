import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Nike Air Force 1",
        price: "77",
        imagePath: "lib/images/1.png",
        description:
            "Comfortable, durable and timeless—it's number 1 for a reason. "
        // The classic '80s construction is paired with bold details for style that tracks whether you're on the court or on the go."
        ),
    Shoe(
        name: "Nike Air Force 1 '07 XX Studded",
        price: "129",
        imagePath: "lib/images/2.png",
        description:
            "The Nike Air Force 1 '07 XX Studded honours the details of the original in an unexpected way."),
    //  If you look closely at the toe of the original AF-1, you'll see a tiny star pattern integrated into the toe of the rubber outsole. This modern version plays up that design with star rivets scattered around the premium leather upper."),
    Shoe(
        name: "Nike Air Force 1 '07 LX",
        price: "129",
        imagePath: "lib/images/3.png",
        description: "The radiance lives on in the Nike Air Force 1 '07 LX,"),
    //  the b-ball classic that puts a fresh spin on what you know best: stitched overlays, bold details and the perfect amount of hoops style to make heads turn.The removable gold chain with pendants lets you customise your look with flair."),
    Shoe(
        name: "Nike Air Force 1 '07",
        price: "77",
        imagePath: "lib/images/4.png",
        description: "The radiance lives on in the Nike Air Force 1 '07, "),
    // the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine."),
    Shoe(
        name: "Nike Air Force 1 '07",
        price: "77.99",
        imagePath: "lib/images/5.png",
        description:
            "Comfortable and timeless AF-1 construction in rich neutrals"),
    //  is paired with winterized details in this updated classic. Durable, abrasion-resistant CORDURA® fabric provides a warming look and feel that stands the test of time and the elements."),
    Shoe(
        name: "Nike Air Force 1 LE",
        price: "84.99",
        imagePath: "lib/images/6.png",
        description:
            "As cool today as when it first dropped more than 40 years ago,")
    //  the AF-1 is a classic you can count on. Its durable construction and grippy tread will see you through breaktime after breaktime. And while they look great fresh out of the box, they remain cool even when covered in scuffs and scrapes. In fact, they might be even better.")
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // reomve item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
