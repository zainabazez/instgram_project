import 'package:flutter/material.dart';

class HomeFrutePage extends StatelessWidget {
  const HomeFrutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: ListTile(
              leading: Text(
                "Explore",
                style: TextStyle(
                    color: Color(0xff050505),
                    fontWeight: FontWeight.w600,
                    fontSize: 34,
                    fontFamily: "Montserrat"),
              ),
              trailing: Icon(
                Icons.search,
                color: Color(0xff050505),
                size: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const BuildCategory(),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              BuildCategory2(
                color: const Color(0xffffd982),
                text1: "LEMON",
                text2: "\$15.7",
                img: "assets/images/img1.png",
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("DetailsFruitePage");
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 150,
                  ),
                  child: BuildCategory2(
                    color: const Color(0xff43aa9c),
                    text1: "AVOCADO",
                    text2: "\$10.2",
                    img: "assets/images/img2.png",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 300,
                ),
                child: BuildCategory2(
                  color: const Color(0xffffc1a8),
                  text1: "PEACH",
                  text2: "\$15.2",
                  img: "assets/images/img3.png",
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class BuildCategory2 extends StatelessWidget {
  BuildCategory2(
      {super.key,
      required this.color,
      required this.text1,
      required this.text2,
      required this.img});
  Color color;
  String text1, text2;
  String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(60))),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        fontFamily: "Montserrat"),
                  ),
                  Text(
                    text2,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 27,
                        fontFamily: "Montserrat"),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              width: 120,
              margin: const EdgeInsets.only(bottom: 20),
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(img))),
            ),
          ],

          // trailing:Image.asset("assets/images/img1.png",fit:BoxFit.fill,),
        ),
      ),
    );
  }
}

class BuildCategory extends StatefulWidget {
  const BuildCategory({
    super.key,
  });

  @override
  State<BuildCategory> createState() => _BuildCategoryState();
}

class _BuildCategoryState extends State<BuildCategory> {
  List<String> items = ["Fruits", "Vegetables", "Foods", "Drink"];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                current = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Text(
                    items[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      color: current == index
                          ? const Color(0xff343434)
                          : const Color(0xffc1c1c1),
                    ),
                  ),
                  Container(
                    height: 8,
                    width: 15,
                    decoration: BoxDecoration(
                        color: current == index
                            ? const Color(0xffe15846)
                            : Colors.white,
                        shape: BoxShape.circle),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
