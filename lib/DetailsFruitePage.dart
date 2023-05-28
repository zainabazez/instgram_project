import 'package:flutter/material.dart';

class DetailsFruitePage extends StatelessWidget {
  const DetailsFruitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff43aa9c),
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Center(
                    child: Image.asset(
                      "assets/images/img4.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 50),
                  child: ListTile(
                    // leading:Icon(Icons.arrow_back_ios_sharp,color:Colors.white,),
                    title: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Fruits",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontFamily: "Montserrat",
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const ListTile(
              title: Text(
                "AVOCADO",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: "Montserrat"),
              ),
              subtitle: Text(
                "\$10.2",
                style: TextStyle(
                    color: Color(0xfff7f2c8),
                    fontWeight: FontWeight.w500,
                    fontSize: 27,
                    fontFamily: "Montserrat"),
              ),
              trailing: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Align(
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xfff2551f),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builddetails(
                  text1: "Season",
                  text2: "8-9",
                ),
                const SizedBox(
                  width: 30,
                ),
                const BuildLine(),
                const SizedBox(
                  width: 30,
                ),
                Builddetails(
                  text1: "Fat",
                  text2: "6g",
                ),
                const SizedBox(
                  width: 50,
                ),
                const BuildLine(),
                const SizedBox(
                  width: 50,
                ),
                Builddetails(
                  text1: "Kcal",
                  text2: "171",
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Also known as an alligator pear or butter fruit the versatile avocado is the only fruit that provider a substantial is the only fruit that provides a substantial amount of healthy monounstaurated fatty acids.Avocado are a naturally nutrient-dense food and contain nearly 20 vitamins and minerals...",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    fontFamily: "Montserrat",
                    color: Color(0xff9edcd4)),
              ),
            ),
            const IconMore(),
          ],
        ));
  }
}

class IconMore extends StatelessWidget {
  const IconMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.keyboard_double_arrow_down,
      color:Color(0xffc8ede9),
      size: 40,
    );
  }
}

class BuildLine extends StatelessWidget {
  const BuildLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 2,
      decoration: const BoxDecoration(color: Colors.white),
    );
  }
}

class Builddetails extends StatelessWidget {
  Builddetails({super.key, required this.text1, required this.text2});
  String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              fontFamily: "Montserrat",
              color: Colors.white),
        ),
        Text(
          text2,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 27,
              fontFamily: "Montserrat"),
        ),
      ],
    );
  }
}
