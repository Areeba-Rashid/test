import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Page(),
    );
  }
}

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  Widget Box(IconData firstIcon, String text){
    return Container(padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(firstIcon),
          SizedBox(width: 20,),
          Text(text, textAlign: TextAlign.left,),
          Icon(Icons.arrow_forward_ios_outlined,)
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 120,
            width: 120,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.orange),
              borderRadius: BorderRadius.all(Radius.circular(70))
            ),
            child: Icon(Icons.person_2_outlined, color: Colors.orange,size: 50,),
          ),
          const SizedBox(height: 20,),
          const Text(
            'John Doe',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),),
          const SizedBox(height: 10,),
          const Text(
              'john.doe@gmail.com',
            style: TextStyle(
              fontSize: 20
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){},
            style: ButtonStyle(

            ),
              child: const Text(
                "Upgrade to pro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
          ),
          const SizedBox(height: 40,),
          Column(

            children: [
              Box(Icons.privacy_tip_outlined, "Privacy"),
              Box(Icons.history, "Purchase History"),
              Box(Icons.help_outline, "Help and Support"),
              Box(Icons.settings_outlined, "Settings"),
              Box(Icons.privacy_tip_outlined, "Invite a friend"),

            ],
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){},

              child:
                Text(
                    'LogOut'
                ),
              style: ButtonStyle(

              ),
          )
        ],
      ),
    );
  }
}

