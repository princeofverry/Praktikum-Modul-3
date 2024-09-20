import 'package:flutter/material.dart';
import 'package:mod3_kel33/widget/navigtion.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  final List<Map<String, String>> teamMembers = [
    {"Nama": "Verry Kurniawan", "NIM": '21120122130062'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color.fromARGB(255, 13, 105, 225),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => NavigationPage()));
            },
            icon: Icon(
              Icons.home,
            ),
          )
        ],
      ),
      body: Stack(alignment: Alignment.center, children: [
        Positioned.fill(
          child: FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.5,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  image: NetworkImage(
                      'https://i0.wp.com/anitrendz.net/news/wp-content/uploads/2023/01/Bocchi-The-Rock.jpg?resize=785%2C420&ssl=1'),
                ),
                color: Color.fromARGB(255, 255, 252, 252).withOpacity(0.5),
              ),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://avatars.githubusercontent.com/u/114798834?v=4",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              for (var member in teamMembers)
                Column(
                  children: [
                    Text(
                      member['Nama'] ?? 'No Name',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      member['NIM'] ?? 'No NIM',
                      style: TextStyle(fontSize: 16.0),
                    )
                  ],
                )
            ],
          ),
        )
      ]),
    );
  }
}
