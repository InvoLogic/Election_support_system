import 'package:flutter/material.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Dr.SIDDARDHA NAIDU'),
            accountEmail: Text('Siddardha.naidu@hotmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/sidhu.jpg'),
              ),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(217, 255, 153, 0),
                image: DecorationImage(
                  image: AssetImage('assets/bg1.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            iconColor: Color.fromARGB(215, 78, 6, 247),
            title: Text('Voters'),
            onTap: () => Null,
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            iconColor: Color.fromARGB(204, 174, 7, 203),
            title: Text(' Add New Voters'),
            onTap: () => Null,
          ),
          ListTile(
            leading: Icon(Icons.new_releases),
            iconColor: Color.fromARGB(175, 234, 6, 105),
            title: Text('Micro Manifest'),
            onTap: () => Null,
          ),
          ListTile(
            leading: Icon(Icons.event_available),
            iconColor: Color.fromARGB(225, 8, 210, 38),
            title: Text('Events'),
            onTap: () => Null,
          ),
          ListTile(
            leading: Icon(Icons.tab),
            iconColor: Color.fromARGB(220, 7, 73, 205),
            title: Text('Opinions'),
            onTap: () => Null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            iconColor: Color.fromARGB(255, 241, 138, 48),
            title: Text('Settings'),
            onTap: () => Null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            iconColor: Color.fromARGB(255, 241, 138, 48),
            title: Text('Notifications'),
            onTap: () => Null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            iconColor: Colors.red,
            title: Text('Sign Out'),
            onTap: () => Null,
          ),
        ],
      ),
    );
  }
}
