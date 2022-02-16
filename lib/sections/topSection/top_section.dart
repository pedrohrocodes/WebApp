import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'components/logo_and_blur_box.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //         fit: BoxFit.cover,
      //         image: AssetImage("assets/images/background.png"))),
      child: Container(
          margin: EdgeInsets.only(top: kDefaultPadding),
          width: 1200,
          child: Stack(
            children: [
              LogoAndBlurBox(size: size),
              Positioned(bottom: 0, child: Menu())
            ],
          )),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;

  List<String> menuItems = [
    "Início",
    "Sobre Nós",
    "Serviços",
    "Portfólio",
    "Comentários",
    "Contato"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          boxShadow: [kDefaultShadow]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
            List.generate(menuItems.length, (index) => buildMenuItem(index)),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: TextStyle(fontSize: 20, color: kTextColor),
              ),
              AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom:
                      selectedIndex != index && hoverIndex == index ? -20 : -32,
                  child: Image.asset("assets/images/Hover.png")),
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -2 : -32,
                child: Image.asset("assets/images/Hover.png"),
              )
            ],
          ),
        ),
      );
}
