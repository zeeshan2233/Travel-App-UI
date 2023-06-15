import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Travel2 extends StatefulWidget {
  const Travel2({super.key});

  @override
  State<Travel2> createState() => _Travel2State();
}

class _Travel2State extends State<Travel2> {
  List topic = ["Top", "popular", "trending", "Favourite", "Most Visted"];

  String topicChosen = 'Top';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.1),
        elevation: 0,
        toolbarHeight: 80,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sort,
              color: Colors.black.withOpacity(0.7),
            )),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black.withOpacity(0.7),
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/explore2.jpeg"),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 20),
        children: [
          Text(
            "Your Daily ",
            style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Recommendations ",
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 270,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/ocean.jpeg"),
                              fit: BoxFit.cover)),
                      width: 190,
                      child: Text(
                        "Ocean",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }),
          ),

          //
          Container(
            height: 40,
            child: ListView.builder(
                itemCount: topic.length,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          topicChosen = topic[index];
                        });
                      },
                      child: Text(
                        topic[index],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w200),
                      ),
                    ),
                  );
                }),
          ),

          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 30,
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage("assets/beach.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Expanded(
                          flex: 20,
                          child: Column(
                            children: [
                              Text("Kashmir",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                      fontSize: 20)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    Text("very beautiful places, i  like it"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
