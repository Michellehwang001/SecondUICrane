import 'package:flutter/material.dart';
import 'package:scrollable_panel/scrollable_panel.dart';
import 'package:second_ui_crane/ui/body_top.dart';
import 'package:second_ui_crane/ui/main_appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF571e4d),
        scaffoldBackgroundColor: Color(0xFF571e4d),
        accentColor: Colors.yellowAccent,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPage = 1;
  final PanelController _panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: BodyTop(),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.66,
              maxChildSize: 0.999,
              minChildSize: 0.09,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: _SecondView(),
                );
              }),
          // ScrollablePanel(
          //   defaultPanelState: PanelState.open,
          //   controller: _panelController,
          //   onOpen: () => print('onOpen'),
          //   onClose: () => print('onClose'),
          //   onExpand: () => print('onExpand'),
          //   builder: (context, controller) {
          //     return SingleChildScrollView(
          //       controller: controller,
          //       child: _SecondView(),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}

class _SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double circularBoxHeight = 20.0;
    final Size size = MediaQuery.of(context).size;
    print('size.height->' + size.toString());

    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: size.height,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(circularBoxHeight),
                  topRight: Radius.circular(circularBoxHeight)),
              border: Border.all(color: Colors.white),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Text(
                    'Explore Flights by Destination',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  ListTile(
                    leading: Image(image: AssetImage('images/bg1.jpeg'), width: 90,),
                    title: Text('Khumbu Valley, Nepal'),
                    subtitle: Text('Nonstop - 5h 16m+'),
                    minLeadingWidth: 100,
                  ),
                  Divider(thickness: 2,),
                  ListTile(
                    leading: Image(image: AssetImage('images/bg2.jpeg'),),
                    title: Text('Khumbu Valley, Nepal'),
                    subtitle: Text('Nonstop - 5h 16m+'),
                    minLeadingWidth: 100,
                  ),
                  Divider(thickness: 2,),
                  ListTile(
                    leading: Image(image: AssetImage('images/bg3.jpeg'),),
                    title: Text('Khumbu Valley, Nepal'),
                    subtitle: Text('Nonstop - 5h 16m+'),
                    minLeadingWidth: 100,
                  ),
                  Divider(thickness: 2,),
                  ListTile(
                    leading: Image(image: AssetImage('images/bg4.jpeg'),),
                    title: Text('Khumbu Valley, Nepal'),
                    subtitle: Text('Nonstop - 5h 16m+'),
                    minLeadingWidth: 100,
                  ),
                  Divider(thickness: 2,),
                  ListTile(
                    leading: Image(image: AssetImage('images/bg5.jpeg'),),
                    title: Text('Khumbu Valley, Nepal'),
                    subtitle: Text('Nonstop - 5h 16m+'),
                    minLeadingWidth: 100,
                  ),
                  Divider(thickness: 2,),
                  ListTile(
                    leading: Image(image: AssetImage('images/bg6.jpeg'),),
                    title: Text('Khumbu Valley, Nepal'),
                    subtitle: Text('Nonstop - 5h 16m+'),
                    minLeadingWidth: 100,
                  ),
                  Divider(thickness: 2,),
                  ListTile(
                    leading: Image(image: AssetImage('images/bg7.jpeg'),),
                    title: Text('Khumbu Valley, Nepal'),
                    subtitle: Text('Nonstop - 5h 16m+'),
                    minLeadingWidth: 100,
                  ),
                  Divider(thickness: 2,),
                  ListTile(
                    leading: Image(image: AssetImage('images/bg8.jpeg'),),
                    title: Text('Khumbu Valley, Nepal'),
                    subtitle: Text('Nonstop - 5h 16m+'),
                    minLeadingWidth: 100,
                  ),
                  Divider(thickness: 2,),
                  ListTile(
                    leading: Image(image: AssetImage('images/bg9.jpeg'),),
                    title: Text('Khumbu Valley, Nepal'),
                    subtitle: Text('Nonstop - 5h 16m+'),
                    minLeadingWidth: 100,
                  ),
                  Divider(thickness: 2,),
                  ListTile(
                    leading: Image(image: AssetImage('images/bg10.jpeg'),),
                    title: Text('Khumbu Valley, Nepal'),
                    subtitle: Text('Nonstop - 5h 16m+'),
                    minLeadingWidth: 100,
                  ),
                  Divider(thickness: 2,),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
