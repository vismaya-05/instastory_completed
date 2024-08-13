import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myDataList = [
      {
        "name": "vismaya",
        "dp":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgzu8tNmDlBRW3CyEM9qZoq2i7Kw5qu9V2eg&s",
        "bg":
            "https://static01.nyt.com/images/2020/10/29/style/28MOON-01/oakImage-1603985177355-superJumbo.jpg"
      },
      {
        "name": "alex",
        "dp":
            "https://images.pexels.com/photos/20659792/pexels-photo-20659792/free-photo-of-portrait-of-geese.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
        "bg":
            "https://images.pexels.com/photos/27224216/pexels-photo-27224216/free-photo-of-agua-pura.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "samantha",
        "dp":
            "https://images.pexels.com/photos/11746032/pexels-photo-11746032.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/25561067/pexels-photo-25561067/free-photo-of-white-flowers-in-nature.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
      },
      {
        "name": "john",
        "dp":
            "https://images.pexels.com/photos/27308315/pexels-photo-27308315/free-photo-of-a-small-house-sits-on-a-grassy-hillside-near-a-lake.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/27563723/pexels-photo-27563723/free-photo-of-the-view-of-a-building-with-a-reflection-of-the-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "emily",
        "dp":
            "https://images.pexels.com/photos/27495241/pexels-photo-27495241/free-photo-of-tree-with-men.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/27496512/pexels-photo-27496512/free-photo-of-a-cup-of-coffee-on-top-of-a-grassy-field.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      }
    ];

    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: myDataList.length,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(myDataList[index]["bg"]))),
            child: Column(
              children: [
                Divider(
                  color: Colors.grey,
                  thickness: 3,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(myDataList[index]["bg"]),
                  ),
                  title: Text(
                    "_vis__mayaah",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "user_name",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 1.5),
                        ),
                        child: Text(
                          "Send Message",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
