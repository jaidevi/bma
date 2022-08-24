import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
   Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu,
              size: 40, color: Colors.red), // change this size and style
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Book My Aqua',
          style: TextStyle(color: Colors.red),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,

          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: (Colors.white)),
              accountName: Text(
                "provider",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "provider@gmail.com",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: (Colors.black)),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Earning'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Review'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('History'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('price'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('signout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            AboutListTile(
              // <-- SEE HERE
              icon: Icon(
                Icons.info,
              ),
              child: Text('About app'),
              applicationIcon: Icon(
                Icons.local_play,
              ),
              applicationName: 'My Cool App',
              applicationVersion: '1.0.25',
              applicationLegalese: '© 2019 Company',
              aboutBoxChildren: [
                ///Content goes here...
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("data"),
              ModalBottomSheetDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

class ModalBottomSheetDemo extends StatelessWidget {
  const ModalBottomSheetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // REPLACED: RaisedButton class with Elevated button class.
      // Raisedbutton is deprecatred and shouldn't be used.

      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          // adding some properties
          showModalBottomSheet(
            context: context,
            // color is applied to main screen when modal bottom screen is displayed
           
            //background color for modal bottom screen
            backgroundColor: Colors.yellow,
            //elevates modal bottom screen
            elevation: 10,
            // gives rounded corner to modal bottom screen
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            builder: (BuildContext context) {
              // UDE : SizedBox instead of Container for whitespaces
              return SizedBox(
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text('GeeksforGeeks'),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
class ModalBottomSheet {
  static void _moreModalBottomSheet(context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ListView(
                physics: ClampingScrollPhysics(),
                children: [
                  //content of modal bottomsheet
                ],
              ),
            ),
          );
        });
  }
}