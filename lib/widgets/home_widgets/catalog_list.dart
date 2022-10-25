import 'package:codepur/pages/home_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';
import '../themes.dart';
import 'catalog_image.dart';


class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items?.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPosition(index);
        return InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomeDetailPage(
                    catalog: catalog,
                ),
            ),
            ),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  const CatalogItem({super.key, required this.catalog});

  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(
                image: catalog.image,),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    catalog.name.text.xl.color(context.theme.accentColor).bold.make(),
                    catalog.desc.text.xs.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: EdgeInsets.zero,
                      children: [
                        "\$${catalog.price}".text.bold.xl.make(),
                        ElevatedButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                                  shape: MaterialStateProperty.all(StadiumBorder()),
                              ),
                              child: "Add to Cart".text.make()),
                      ],
                    ).pOnly(right: 8.0)
                  ],
                ))
          ],
        )).color(context.cardColor).roundedSM.square(150).make().py16();
  }
}