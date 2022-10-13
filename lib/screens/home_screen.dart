import 'package:fit_food/widgets/build_list.dart';
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
                          icon: const Icon(Icons.account_circle),
                          label: const Text(
                            "Perfil",
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite),
                          label: const Text("Favoritos",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.explore),
                          label: const Text("Explorar",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.settings),
                          label: const Text("Configurações",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Fit Food",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 200),
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.green,
                image: const DecorationImage(
                  image: AssetImage("assets/images/fit_food.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(200),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Fit Food"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 200),
                  width: 200,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/fit_food.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Alimentos", style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => BuildList(label: "Alimentos ${index}", text: "Alguma coisa"),),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Biotipos", style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => BuildList(label: "Biotipos ${index}", text: "Alguma coisa"),),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Dietas", style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => BuildList(label: "Algo ${index}", text: "Aham"),)
          ],
        ),
      ),
    );
  }
}
