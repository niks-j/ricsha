import 'package:flutter/material.dart';
import 'package:ricsha/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Clone',
      theme: ThemeData.dark(), // Apply dark mode theme
      initialRoute: '/', // Set initial route
      routes: {
        '/': (context) => const UberHomePage(title: 'RICSHA'), // Home route
        '/register': (context) => RegisterScreen(), // Register route
      },
    );
  }
}

class UberHomePage extends StatefulWidget {
  const UberHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<UberHomePage> createState() => _UberHomePageState();
}

class _UberHomePageState extends State<UberHomePage> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Placeholder for map (you can use Google Maps or other map widgets)
            Container(
              height: 300,
              color: Colors.grey,
              child: Center(
                child: Text('Map Placeholder',
                    style: TextStyle(
                        color:
                            Colors.white)), // Adjust text color for visibility
              ),
            ),
            SizedBox(height: 20),
            // Placeholder for ride options
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Select Ride Type:',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:
                            Colors.white), // Adjust text color for visibility
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('BIKE'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('SCOOTER'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('CAR'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Placeholder for user profile and other options
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person),
              ),
              title: Text('rahul',
                  style: TextStyle(
                      color: Colors.white)), // Adjust text color for visibility
              subtitle: Text('5.0 ★',
                  style: TextStyle(
                      color: Colors.white)), // Adjust text color for visibility
              trailing: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Ride History',
                  style: TextStyle(
                      color: Colors.white)), // Adjust text color for visibility
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment',
                  style: TextStyle(
                      color: Colors.white)), // Adjust text color for visibility
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help',
                  style: TextStyle(
                      color: Colors.white)), // Adjust text color for visibility
              onTap: () {},
            ),
            SizedBox(height: 20),
            // Login button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                },
                child: Text('Login'),
              ),
            ),
            SizedBox(
                height:
                    80), // Add some extra space at the bottom for better scrolling
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/register');
        },
        tooltip: 'Request Ride',
        child: Icon(Icons.app_registration_rounded),
      ),
    );
    var scaffold2 = scaffold;
    return scaffold2;
  }
}
