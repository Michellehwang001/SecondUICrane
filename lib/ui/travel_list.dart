import 'package:flutter/material.dart';

class TravelList extends StatelessWidget {
  const TravelList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Text(
            'Explore Flights by Destination',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          ListTile(
            leading: Image(image: AssetImage('images/bg1.jpeg'), width: 90,),
            title: Text('Khumbu Valley, Nepal', style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Nonstop - 5h 16m+', style: Theme.of(context).textTheme.bodyText2,),
            minLeadingWidth: 100,
          ),
          Divider(thickness: 2,),
          ListTile(
            leading: Image(image: AssetImage('images/bg2.jpeg'),),
            title: Text('Khumbu Valley, Nepal', style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Nonstop - 5h 16m+', style: Theme.of(context).textTheme.bodyText2,),
            minLeadingWidth: 100,
          ),
          Divider(thickness: 2,),
          ListTile(
            leading: Image(image: AssetImage('images/bg3.jpeg'),),
            title: Text('Khumbu Valley, Nepal', style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Nonstop - 5h 16m+', style: Theme.of(context).textTheme.bodyText2,),
            minLeadingWidth: 100,
          ),
          Divider(thickness: 2,),
          ListTile(
            leading: Image(image: AssetImage('images/bg4.jpeg'),),
            title: Text('Khumbu Valley, Nepal', style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Nonstop - 5h 16m+', style: Theme.of(context).textTheme.bodyText2,),
            minLeadingWidth: 100,
          ),
          Divider(thickness: 2,),
          ListTile(
            leading: Image(image: AssetImage('images/bg5.jpeg'),),
            title: Text('Khumbu Valley, Nepal', style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Nonstop - 5h 16m+', style: Theme.of(context).textTheme.bodyText2,),
            minLeadingWidth: 100,
          ),
          Divider(thickness: 2,),
          ListTile(
            leading: Image(image: AssetImage('images/bg6.jpeg'),),
            title: Text('Khumbu Valley, Nepal', style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Nonstop - 5h 16m+', style: Theme.of(context).textTheme.bodyText2,),
            minLeadingWidth: 100,
          ),
          Divider(thickness: 2,),
          ListTile(
            leading: Image(image: AssetImage('images/bg7.jpeg'),),
            title: Text('Khumbu Valley, Nepal', style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Nonstop - 5h 16m+', style: Theme.of(context).textTheme.bodyText2,),
            minLeadingWidth: 100,
          ),
          Divider(thickness: 2,),
          ListTile(
            leading: Image(image: AssetImage('images/bg8.jpeg'),),
            title: Text('Khumbu Valley, Nepal', style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Nonstop - 5h 16m+', style: Theme.of(context).textTheme.bodyText2,),
            minLeadingWidth: 100,
          ),
          Divider(thickness: 2,),
          ListTile(
            leading: Image(image: AssetImage('images/bg9.jpeg'),),
            title: Text('Khumbu Valley, Nepal', style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Nonstop - 5h 16m+', style: Theme.of(context).textTheme.bodyText2,),
            minLeadingWidth: 100,
          ),
          Divider(thickness: 2,),
          ListTile(
            leading: Image(image: AssetImage('images/bg10.jpeg'),),
            title: Text('Khumbu Valley, Nepal', style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Nonstop - 5h 16m+', style: Theme.of(context).textTheme.bodyText2,),
            minLeadingWidth: 100,
          ),
          Divider(thickness: 2,),
        ],
    );

  }
}
