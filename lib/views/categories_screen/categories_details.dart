import 'package:ecommerceapp/consts/consts.dart';
import 'package:ecommerceapp/widget_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CategoryDetails extends StatelessWidget {
  final String title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWiget(
      child: Scaffold(
        appBar: AppBar(
          title: title.text.fontFamily(bold).make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => "Baby Clothing"
                        .text
                        .size(12)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .rounded
                        .size(120, 60)
                        .margin(
                          const EdgeInsets.symmetric(horizontal: 4),
                        )
                        .make(),
                  ),
                ),
              ),

              20.heightBox,
              //item Container
              Expanded(
                child: Container(
                  color: lightGrey,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 300,
                    ),
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        10.heightBox,
                        "Laptop 4GB/64GB"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$600"
                            .text
                            .fontFamily(bold)
                            .size(16)
                            .color(redColor)
                            .make(),
                      ],
                    )
                        .box
                        .white
                        .margin(
                          const EdgeInsets.symmetric(horizontal: 4),
                        )
                        .roundedSM
                        .outerShadowSm
                        .padding(
                          const EdgeInsets.all(14),
                        )
                        .make(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
