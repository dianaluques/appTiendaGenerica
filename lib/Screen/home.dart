import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person,size: 50.0,),
              ),
              accountName: Text('Usuario'),
              accountEmail: Text('PepitoPerez@gmail.com'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title: Text("Ajustes de perfil"),
              onTap: (){

              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title: Text("Busquedas de tiendas"),
              onTap: (){

              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.help_outline,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title: Text("Acerca de nosotros"),
              onTap: (){
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.cached,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title: Text("Volver"),
              onTap: (){
                Navigator.pushNamed(context, '/login');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.exit_to_app,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title: Text("Salir"),
            ),
          ],
        ),
      ),

      appBar: AppBar(
        title: Text("Tienda Generica 2.0"),
        centerTitle: true,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Color(0xff6bceff),),
            title: Text('Home',style: TextStyle(
              color: Color(0xff6bceff),
            ),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('Historial de compra'),
          ),
        ],
      ),
    );
  }
}

