import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shoe_title.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // alert the user. shoe successfully added
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            title: Text("Successfully added!"),
            content: Text('Check yout cart')));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // Search
                Container(
                  padding: EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),

                // Message
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Text("everyone flies... some fly longer than others"),
                ),

                // Hot pick
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hot pick 🔥",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Expanded(
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          Shoe shoe = value.getShoeList()[index];
                          return ShoeTitle(
                            shoe: shoe,
                            onTap: () => addShoeToCart(shoe),
                          );
                        })),

                // Padding(
                //   padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                //   child: Divider(
                //     color: Colors.grey[300],
                //   ),
                // )
              ],
            ));
  }
}
