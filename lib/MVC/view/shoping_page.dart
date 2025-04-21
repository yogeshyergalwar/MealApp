/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled5/controller/shoping_controller.dart';

import '../controller/caerController.dart';

class ShopingPage extends StatelessWidget {
  ShopingPage({super.key});

  final shopingController = Get.put(ShopingController());
  final cartController =Get.put(CardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShopingController>(
                builder: (controller) {
                  return ListView.builder(
                      itemCount: controller.product.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.all(12),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${controller.product[index].ProductName}',
                                          style: TextStyle(fontSize: 24),
                                        ),
                                        Text(
                                            '${controller.product[index].ProductDescription}'),
                                      ],
                                    ),
                                    Text('\$${controller.product[index].Price}',
                                        style: TextStyle(fontSize: 24)),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    cartController
                                        .addcardItem(controller.product[index]);
                                  },

                                  child: Text('Add to Cart'),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
            Obx(() {
              return Text(
                'Total amount: \$ ${cartController.totalPrice}',
                style: TextStyle(fontSize: 32, color: Colors.black),
              );
            }),
            SizedBox(height: 100),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.amber,
        icon: Icon(
          Icons.add_shopping_cart_rounded,
          color: Colors.black,
        ),
        label: GetX<CardController>(builder: (controller) {
          return Text(
            controller.count.toString(),
            style: TextStyle(color: Colors.black, fontSize: 24),
          );
        }),
      ),
    );
  }
}
*/
