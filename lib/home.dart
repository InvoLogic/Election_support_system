import 'package:ess/nav.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List imagelist = [
    "https://images.thequint.com/thequint%2F2022-09%2F247aa87a-5715-477f-9c7d-ef139880c6dd%2F06091_pti09_06_2022_000259b.jpg?auto=format%2Ccompress&fmt=webp&width=720&w=1200",
    "https://swarajya.gumlet.io/swarajya%2F2021-11%2Fab2ff74d-df07-48fc-8e2f-074240379369%2FModi_Shah_Image.png?q=75&auto=format%2Ccompress&w=400&dpr=2.6",
    "https://static.toiimg.com/thumb/resizemode-4,width-1280,height-720,msid-93628840/93628840.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),
      appBar: AppBar(
        title: Text('Election Support System'),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'login');
            },
            icon: Icon(Icons.logout),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  imagelist[index % imagelist.length],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Party Activities',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/voter.png'),
                      color: Color.fromARGB(255, 18, 7, 244),
                      iconSize: 50,
                    ),
                    Text('Voters'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/7th.png'),
                      color: Color.fromARGB(255, 6, 85, 241),
                      iconSize: 50,
                    ),
                    Text('Micro Manifest'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/microservey.png'),
                      color: Color.fromARGB(225, 171, 4, 248),
                      iconSize: 50,
                    ),
                    Text('Micro Servey'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/p1.png'),
                      color: Color.fromARGB(255, 18, 7, 244),
                      iconSize: 50,
                    ),
                    Text('Local\nEvents'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/p1.png'),
                      color: Color.fromARGB(255, 6, 85, 241),
                      iconSize: 50,
                    ),
                    Text('Party\nCards'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/cl.png'),
                      color: Color.fromARGB(225, 171, 4, 248),
                      iconSize: 50,
                    ),
                    Text('Content\nLibrary'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
