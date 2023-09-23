import 'package:abo_shokor_home/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:abo_shokor_home/menu/navbar.dart';
import 'package:abo_shokor_home/screens/cart.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> item = [
    "أدوات منزليه",
    "أدوات مطبخ",
    "تحف وهدايا",
    "أثاث حدائق",
    "ورد صناعي",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 131, 24, 138),
          title: const Text(
            "أبو شكر ستور",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              },
              icon: const Icon(Icons.shopping_cart),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
                icon: const Icon(Icons.search)),
          ]),
      body: Container(
        margin: const EdgeInsets.all(5),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "الأقسام",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            /*Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Enabled'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Enabled'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Enabled'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Enabled'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Enabled'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Enabled'),
                ),
              ],
            ),*/
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                itemCount: item.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            width: 3,
                            color: const Color.fromARGB(255, 131, 24, 138))),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text(
                        item[index],
                        style: const TextStyle(
                            color: Color.fromARGB(255, 131, 24, 138),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Text(
              "عشوائيات",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
                //padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                // decoration: BoxDecoration(
                // color: Colors.white,
                //borderRadius: BorderRadius.circular(20),
                ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(90),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 112, 109, 112),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(90),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 112, 109, 112),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),

                    /*const Icon(
                      Icons.favorite_border,
                      color: Color.fromARGB(255, 131, 24, 138),
                    )*/
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
