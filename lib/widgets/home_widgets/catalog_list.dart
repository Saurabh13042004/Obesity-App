  
  
  
  import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/pages/home_details_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/themes.dart';
import 'catalog_images.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

    
  
    @override
    Widget build(BuildContext context) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context,index){
          final catalog = CatalogModel.items[index];
          return InkWell(
            // onTap: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context)=>HomeDetailPage(
            //     catalog: catalog,
            //     ),
            //     ),
            // ),
            child: CatalogItem(
              catalog : catalog
              ));
        },
      );
    }
  }



  class CatalogItem extends StatelessWidget {
 final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catalog.name.text.lg.color(context.theme.accentColor).bold.make(),
               
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,

                  children: [
                 
                    ElevatedButton(
                      onPressed: () =>Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context)=>HomeDetailPage(catalog: catalog))), 
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                        shape: MaterialStateProperty.all(const StadiumBorder(),)),
                        child: Icon(Icons.arrow_forward_ios_rounded) 
                      )
                      
                      
                  ],
                ).pOnly(left: 100)

              ],
            )
          )
        ],
      )

    ).color(context.theme.cardColor).rounded.square(150).make().py16();
  }
}