import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sunflower/ui/plat_list_page.dart';

class MyGardenPage extends StatelessWidget {
  const MyGardenPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff48b978),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your garden is empty',
            style: TextStyle(fontSize: 22),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PlatListPage()),
              // );
            },
            child: Text('ADD PLANT',style: TextStyle(color: Colors.black),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xffc8c84e)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ))),
          )
        ],
      ),
    );
  }
}
