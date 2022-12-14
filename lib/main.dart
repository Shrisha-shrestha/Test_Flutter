import 'package:flutter/material.dart';
    void main(){
  runApp(AboutPage());
    }
    class AboutPage extends StatefulWidget{
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
      @override
      Widget build(BuildContext context){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text(
                'about page',
              ),
              actions: [
                Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.red,
                ),
              ],
              leading:Builder(builder: (ctx){

                return IconButton(
                  icon:Icon(Icons.construction),
                  onPressed: (){
                    Scaffold.of(ctx).openDrawer();
                  },
                                  );}
              ),
            ),
            body: Center(
              child: Text(
                'anju'
              ),
            ),
            drawer: Drawer(
              child: ListView(
                children: [
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,color: Colors.black,
                      ),
                      title: Text(
                        'gmail'
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.all_inbox,color:Colors.black
                      ),
                      title: Text(
                          'all inboxes'
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.inbox_rounded
                      ),
                      title: Text(
                          ' primary'
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading:Icon(
                        Icons.ad_units_sharp ,color: Colors.black,
                      ),
                      title: Text(
                          'promotions'
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
}
