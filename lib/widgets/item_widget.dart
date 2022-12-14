import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {

  final Item item;
 
  const ItemWidget({Key? key,required this.item}) 
  // ignore: unnecessary_null_comparison
  :assert(item!= null),
  super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        
      ),
    );
  }
}