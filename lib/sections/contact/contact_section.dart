import 'package:flutter/material.dart';
import '/components/default_button.dart';
import '/components/section_title.dart';
import '/constants.dart';
import '/sections/contact/components/social_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding * 2.5,
          ),
          SectionTitle(
            title: "Entre em contato",
            subTitle: "Para orçamento e informações do projeto",
            color: Colors.white,
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "assets/images/skype.png",
                name: 'PedroHROCodes',
                press: () {},
              ),
              SocialCard(
                color: Color(0xFFE4FFC7),
                iconSrc: "assets/images/whatsapp.png",
                name: 'PedroHROCodes',
                press: () {},
              ),
              SocialCard(
                color: Color(0xFFE8F0F9),
                iconSrc: "assets/images/messanger.png",
                name: 'PedroHROCodes',
                press: () {},
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          ContactForm()
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: "Seu nome", hintText: "Entre com seu nome"),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: "Tipo do Projeto",
                  hintText: "Selecione um tipo de projeto"),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: "Orçamento",
                  hintText: "Selecione o orçamento do projeto"),
            ),
          ),
          SizedBox(
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: "Descrição", hintText: "Escreva alguma descrição"),
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Entre em contato conosco!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
