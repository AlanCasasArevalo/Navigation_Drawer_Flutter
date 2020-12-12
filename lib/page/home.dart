import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator Drawer'),
      ),
      drawer: _drawerProvider(context),
    );
  }

  Drawer _drawerProvider(BuildContext context) {
    ListView _listView = ListView(
      children: [
        _header(),
        _info(),
        _getListTitleItem(Icon(Icons.home), 'Home', '/'),
        _getListTitleItem(Icon(Icons.settings), 'Settings', '/settings'),
        _getListTitleItem(
            Icon(Icons.add_a_photo_outlined), 'Add Photo', '/account')
      ],
    );

    return Drawer(
      child: _listView,
    );
  }

  DrawerHeader _header() {
    return DrawerHeader(child: Text('Opciones'));
  }

  AboutListTile _info() {
    return AboutListTile(
      child: Text('Mas información de la aplicación'),
      icon: Icon(Icons.info),
      applicationIcon: Icon(Icons.favorite),
      applicationName: 'Drawer',
      applicationVersion: '1.0.0',
    );
  }

  ListTile _getListTitleItem(Icon icon, String title, String route) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 25),
      ),
      leading: icon,
      onTap: () {
        setState(() {
          Navigator.of(context).pushNamed(route);
        });
      },
    );
  }
}
