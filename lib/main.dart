import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:maa_gauri_dairy/components/horizontal_listview.dart';

void main() {
  int? couldBeNullButIsnt = 1;
  runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
  );  
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/c1.jpeg'),
          AssetImage('assets/m1.jpeg'),
          AssetImage('assets/w3.jpeg'),
          AssetImage('assets/w4.jpeg'),
          AssetImage('assets/m2.jpeg'),
          AssetImage('assets/w1.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.grey,
        indicatorBgPadding: 5.0,
      ),
    );
        return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white12,
          title: Text('Maa Gauri Dairy Products'),
          actions: [
            new IconButton(icon: Icon(Icons.search), onPressed: (){}),
            new IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){},)
          ],
        ),
          drawer: new Drawer(
            child: new ListView(
             children: <Widget>[
               new UserAccountsDrawerHeader(accountName: Text('Aman Rathore'), accountEmail: Text('rowdyrathore@gmail.com'),
               currentAccountPicture: GestureDetector(
                 child: new CircleAvatar(
                   backgroundColor: Colors.blueGrey,
                   child: Icon(Icons.person, color: Colors.white,),
                 ),
               ),
               decoration: new BoxDecoration(
                 color: Colors.red
               ),

               ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
              ),

               InkWell(
                 onTap: (){},
                 child: ListTile(
                   title: Text('My Account'),
                   leading: Icon(Icons.person),
                 ),
               ),


               InkWell(
                 onTap: (){},
                 child: ListTile(
                   title: Text('My Orders'),
                   leading: Icon(Icons.shopping_basket),
                 ),
               ),

               InkWell(
                 onTap: (){},
                 child: ListTile(
                   title: Text('Categories'),
                   leading: Icon(Icons.dashboard),
                 ),
               ),


               InkWell(
                 onTap: (){},
                 child: ListTile(
                   title: Text('Favourites'),
                   leading: Icon(Icons.favorite),
                 ),
               ),

               Divider(),

               InkWell(
                 onTap: (){},
                 child: ListTile(
                   title: Text('Settings'),
                   leading: Icon(Icons.settings),
                 ),
               ),

               InkWell(
                 onTap: (){},
                 child: ListTile(
                   title: Text('About'),
                   leading: Icon(Icons.help, color: Colors.amberAccent),
                 ),
               ),

             ],

            )
          ),
          body: new ListView(
            children:<Widget>[
              image_carousel,
              new Padding(padding: const EdgeInsets.all(8.0),
                child: new Text('Categories'),
    ),
              HorizontalList(),
            ]
          ),
        );
  }
}
