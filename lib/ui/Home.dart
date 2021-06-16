import 'package:flutter/material.dart';
import 'package:flutter_sunflower/ui/my_garden_page.dart';
import 'package:flutter_sunflower/ui/plat_list_page.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Icon(Icons.menu,color: Colors.black,),
            ],
            centerTitle: true,
            backgroundColor: Color(0xff48b978),
            bottom: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              tabs: [
                Tab(icon: Icon(Icons.directions_car),text: "MY GARDEN"),
                Tab(icon: Icon(Icons.directions_transit),text: "PLANT LIST"),
              ],
            ),
            title: Text('Sunflower',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal)),
          ),
          body: TabBarView(
            children: [
              MyGardenPage(),
              PlatListPage(),
            ],
          ),
        ),
      ),
    );
  }
}
