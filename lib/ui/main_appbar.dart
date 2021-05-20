import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget{
  const MainAppbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Image(image: AssetImage('images/logo.png')),
      title: Container(
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.white, width: 2),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                textStyle: TextStyle(
                  fontSize: 18,
                ),
              ),
              onPressed: () {},
              child: Text('Fly'),
            ),
            Text(
              'Sleep',
              style: TextStyle(fontSize: 17, color: Color(0xFFdddddd)),
            ),
            Text(
              'Eat',
              style: TextStyle(fontSize: 17, color: Color(0xFFdddddd)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  //Size get preferredSize => throw UnimplementedError();
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
