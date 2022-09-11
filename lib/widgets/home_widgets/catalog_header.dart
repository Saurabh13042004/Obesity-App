  import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import '../../widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  
  
    @override
    Widget build(BuildContext context) {
      return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Welcome".text.xl5.bold.color(context.theme.accentColor).make(),
                 "Be A Caring Parent".text.xl2.make()
                
              ],
            );
    }
  }