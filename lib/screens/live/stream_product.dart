import 'package:flutter/material.dart';

class Golive extends StatelessWidget {
  const Golive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1647464884405-42bbd541bc17?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  ),
                  fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [Spacer(), buildSideButton()],
                  ),
                ),
                buildBottomPart(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

buildSideButton() {
  return Padding(
    padding: const EdgeInsets.only(right: 15, bottom: 60, top: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(onTap: (){
          print("dash");
        },
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.cameraswitch_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Text("Flip", style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {},
                icon:
                    Icon(Icons.speed_outlined, size: 30, color: Colors.white)),
            Text("Speed", style: TextStyle(color: Colors.white))
          ],
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.palette_outlined,
                    size: 30, color: Colors.white)),
            Text("Filters", style: TextStyle(color: Colors.white))
          ],
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.photo_filter_outlined,
                    size: 30, color: Colors.white)),
            Text(
              "Beautify",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {},
                icon:
                    Icon(Icons.timer_outlined, size: 30, color: Colors.white)),
            Text("Timer", style: TextStyle(color: Colors.white))
          ],
        )
      ],
    ),
  );
}

buildBottomPart() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ksh 123",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Buy now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white)),
                  )),
            ),
          ],
        ),
        SizedBox(
          width: 70,
          height: 70,
          child: ElevatedButton(
              onPressed: () {},
              child: null,
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: CircleBorder(),
              )),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=362&q=80"),
                  fit: BoxFit.fill)),
          width: 70,
          height: 70,
        )
      ],
    ),
  );
}