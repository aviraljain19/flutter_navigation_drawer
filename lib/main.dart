import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFF4E74F9)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complex Navigation Drawer'),
      ),
      body: Center(
        child: Text('Main Content'),
      ),
      drawer: CustomDrawer(), // Use the custom drawer here
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hoverColor = Colors.white70;
    return Drawer(
      child: Material(
        color: Color(0xFF4E74F9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 64, left: 15, right: 0, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Image.asset(
                          'assets/profile_image.png', // Replace with your image asset path
                          width: 80,
                          height: 80,
                        ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shiksha.Tech',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Text(
                            'shiksha.tech@example.com',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chat,
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () {
                      // Handle chat option
                      // Add your chat logic here
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
                size: 24,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 18,),

              ),
              hoverColor: hoverColor,
              onTap: () {
                // Handle navigation to the Home screen
                Navigator.pop(context); // Close the drawer
                // Add your navigation logic here
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
            ),

            ListTile(
              leading: Icon(
                Icons.format_list_bulleted,
                color: Colors.white,
                size: 24,
              ),
              title: Text(
                'My Schemes',
                style: TextStyle(color: Colors.white, fontSize: 18,),

              ),
              hoverColor: hoverColor,
              onTap: () {
                // Handle navigation to the Home screen
                Navigator.pop(context); // Close the drawer
                // Add your navigation logic here
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
            ),

            ListTile(
              leading: Icon(
                Icons.edit_note_sharp,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Notes',
                style: TextStyle(color: Colors.white, fontSize: 18,),

              ),
              hoverColor: hoverColor,
              onTap: () {
                // Handle navigation to the Home screen
                Navigator.pop(context); // Close the drawer
                // Add your navigation logic here
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
            ),

            Divider(
              color: Colors.white70,
            ),

            ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.white,
                size: 24,
              ),
              title: Text(
                'About Us',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              hoverColor: hoverColor,
              onTap: () {
                // Handle navigation to the Settings screen
                Navigator.pop(context); // Close the drawer
                // Add your navigation logic here
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
            ),

            ListTile(
              leading: Icon(
                Icons.contact_phone,
                color: Colors.white,
                size: 24,
              ),
              title: Text(
                'Contact Us',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              hoverColor: hoverColor,
              onTap: () {
                // Handle navigation to the Settings screen
                Navigator.pop(context); // Close the drawer
                // Add your navigation logic here
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
            ),

            Divider(
              color: Colors.white70,
            ),

            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
                size: 24,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              hoverColor: hoverColor,
              onTap: () {
                // Handle navigation to the Settings screen
                Navigator.pop(context); // Close the drawer
                // Add your navigation logic here
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
            ),

            ListTile(
              leading: Icon(
                Icons.rate_review,
                color: Colors.white,
                size: 24,
              ),
              title: Text(
                'Rate Us',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              hoverColor: hoverColor,
              onTap: () {
                // Handle navigation to the Settings screen
                Navigator.pop(context); // Close the drawer
                // Add your navigation logic here
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
            ),

            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
                size: 24,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              hoverColor: hoverColor,
              onTap: () {
                // Handle logout action
                Navigator.pop(context); // Close the drawer
                // Add your logout logic here
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),
              child: Text(
                'Shiksha.Tech',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
