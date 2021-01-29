import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/app_screens/home/components/sectiontitle.dart';
import 'package:shopping/models.dart';

class PopularProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular)
                  return ProductCard(
                      product: demoProducts[index], press: () {});
                return SizedBox.shrink();
              })
            ],
          ),
        )
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  ProductCard({Key key, @required this.product, @required this.press})
      : super(key: key);

  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: SizedBox(
          width: 140,
          child: GestureDetector(
            onTap: press,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                width: 130,
                height: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(
                        product.images[0],
                        fit: BoxFit.scaleDown,
                      ),
                      Container(
                        decoration:
                            BoxDecoration(color: Colors.grey.withOpacity(0.1)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepOrange),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.all(8.0),
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: product.isFavourite
                                ? Colors.deepOrange.withOpacity(0.15)
                                : Colors.grey.withOpacity(0.1)),
                        child: SvgPicture.asset(
                          "assets/icons/Heart Icon_2.svg",
                          color:
                              product.isFavourite ? Colors.red : Colors.white,
                        )),
                  ),
                ],
              ),
            ]),
          )),
    );
  }
}
