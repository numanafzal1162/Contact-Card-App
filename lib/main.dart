import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey,
          body: ContactCard(),
        ),
      ),
    ),
  );
}

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("images/profile.jpeg"),
            radius: 50,
          ),
          const Text(
            "Numan Afzal",
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "ZenKurenaido"),
          ),
          const Text(
            "(Student of BSIT)",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Lato",
                letterSpacing: 3),
          ),
          const SizedBox(height: 20),
          Card(
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                ),
                Icon(Icons.phone, color: Colors.grey),
                SizedBox(width: 20),
                Text("+923061684555"),
              ],
            ),
          ),
          Card(
            child: Row(
              children: const [
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
                Icon(Icons.email, color: Colors.grey),
                SizedBox(width: 20),
                Text("numanshykh@gmail.com"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
