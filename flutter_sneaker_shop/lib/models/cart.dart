import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Taylor All Star",
      price: "75",
      imgPath: "lib/image/black.jpg",
      description:
          "These sneakers already have a long history. It's up to you to write the rest.",
    ),
    Shoe(
        name: "Lopez Pro Canvas",
        price: "75",
        imgPath: "lib/image/blue.jpg",
        description:
            "The CX foam sockliner provides cushioning and impact protection, while the rubber outsole provides grip."),
    Shoe(
        name: "All Star Leather",
        price: "80",
        imgPath: "lib/image/white.jpg",
        description:
            "In ultra-soft leather. It's up to you to write the story."),
    Shoe(
        name: "Star Player 76",
        price: "75",
        imgPath: "lib/image/black-s.jpg",
        description:
            "A gem from the archives, designed for sport and redesigned for the streets."),
    Shoe(
      name: "Taylor All Star",
      price: "75",
      imgPath: "lib/image/red.jpg",
      description:
          "These sneakers already have a long history. It's up to you to write the rest.",
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to the cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
