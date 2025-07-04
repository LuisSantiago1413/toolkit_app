
import 'package:flutter/material.dart';
import 'gender_page.dart';
import 'age_page.dart';
import 'universities_page.dart';
import 'weather_page.dart';
import 'pokemon_page.dart';
import 'wordpress_page.dart';
import 'about_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Caja de Herramientas')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.jpg'),
                    radius: 40,
                  ),
                  SizedBox(height: 10),
                  Text('Luis Antonio', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            ListTile(
              title: Text('Predicción de Género'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GenderPage()));
              },
            ),
            ListTile(
              title: Text('Predicción de Edad'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AgePage()));
              },
            ),
            ListTile(
              title: Text('Universidades por País'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UniversitiesPage()));
              },
            ),
            ListTile(
              title: Text('Clima en RD'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherPage()));
              },
            ),
            ListTile(
              title: Text('Pokémon Info'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PokemonPage()));
              },
            ),
            ListTile(
              title: Text('Noticias WordPress'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WordPressPage()));
              },
            ),
            ListTile(
              title: Text('Acerca de mí'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.jpg', width: 150),
            SizedBox(height: 20),
            Text(
              'Bienvenido a tu caja de herramientas',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
