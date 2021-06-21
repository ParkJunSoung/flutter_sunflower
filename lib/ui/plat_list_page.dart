import 'package:flutter/material.dart';
import 'package:flutter_sunflower/d/provider.dart';
import 'package:provider/provider.dart';

class PlatListPage extends StatelessWidget {
  const PlatListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = context.read<SunFlowerProvider>();
    return GridView.builder(
      shrinkWrap: true,
      itemCount: list.plant.length,
      itemBuilder: (context, index) => Card(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("${list.plants[index]}",),
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter)),
          child: Text('${list.plant[index]}'),
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 2),
      ),
    );
  }
}
