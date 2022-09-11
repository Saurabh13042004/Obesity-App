import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.theme.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: context.screenWidth,
                  color: context.theme.cardColor,
                  child: Column(children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make()
                        .p(16),
                    catalog.desc.text.xl
                        .textStyle(context.captionStyle)
                        .make()
                        .p(16),
                    Image.network(catalog.img1).p(16),
                    catalog.desc1.text.xl
                        .textStyle(context.captionStyle)
                        .make()
                        .p(16),
                    catalog.desc2.text.xl
                        .textStyle(context.captionStyle)
                        .make()
                        .p(16),
                    Image.network(catalog.img2).p(16),
                    catalog.subh.text.xl4
                        .color(context.accentColor)
                        .make()
                        .p(16),
                    catalog.desc4.text.xl
                        .textStyle(context.captionStyle)
                        .make()
                        .p(16),
                    Image.asset(catalog.img5).p(16),
                    catalog.subh2.text.xl4
                        .color(context.accentColor)
                        .make()
                        .p(16),
                    catalog.desc5.text.xl
                        .textStyle(context.captionStyle)
                        .make()
                        .p(16),
                    Image.asset(catalog.img3).p(16),
                    catalog.desc6.text.xl
                        .textStyle(context.captionStyle)
                        .make()
                        .p(16),
                    Image.asset(catalog.img4).p(16),
                    10.heightBox,
                    
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
