import 'package:flutter/material.dart';
import 'package:flutter_sunflower/d/provider.dart';
import 'package:provider/provider.dart';
class PlatListPage extends StatelessWidget {
  const PlatListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = context.read<SunFlowerProvider>();
    return GridView.builder(
      itemCount: list.plant.length,
      itemBuilder: (context, index) => Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(90.0),
          bottomLeft: Radius.circular(90.0),
        ),
      ),
        child: Column(
          children: [
            GridTile(
            child: Container(height:70,child: Image.network('${list.plants[index]}',fit: BoxFit.fill,)),
            ),
            Text('${list.plant[index]}')
          ],
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
    );
  }
}
