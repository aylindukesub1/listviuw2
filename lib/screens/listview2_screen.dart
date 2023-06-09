import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  var games = ["pow", "fornite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo2'),
        ),
        body: ListView.separated(
          itemCount: games.length,
          itemBuilder: (context, index) => ListTile(
              title: Text(games[index]),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.purple),
              onTap: () {
                var seleccion = games[index];
                print(seleccion);
              }),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
