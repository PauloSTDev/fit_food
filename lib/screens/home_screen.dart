import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 130,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4.0),
                  ),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/avatar.jpg"),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.account_circle),
                            label: Text("Perfil"),
                        ),
                        SizedBox(height: 10,),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.favorite),
                          label: Text("Favoritos"),
                        ),
                        SizedBox(height: 10,),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.explore),
                          label: Text("Explorar"),
                        ),
                        SizedBox(height: 10,),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.settings),
                          label: Text("Configurações"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Fit Food"),
      ),
    );
  }
}
