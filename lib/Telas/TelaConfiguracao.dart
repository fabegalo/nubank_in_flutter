import 'package:flutter/material.dart';
import '../Componentes/ContainerWidget.dart';
import 'dart:async';

class TelaConfiguracao extends StatefulWidget {
  @override
  _TelaConfiguracaoState createState() => _TelaConfiguracaoState();
}

class _TelaConfiguracaoState extends State<TelaConfiguracao> {
  dynamic colorConteudo131 = Colors.purple[400];
  dynamic colorConteudo132 = Colors.white;

  dynamic colorConteudo21 = Colors.white;
  dynamic colorConteudo22 = Colors.white;

  var boolChange = true;

  bool _isLoading = false;

  bool isHidden = true;

  @override
  void initState() {
    super.initState();
    //recuperaDados();
  }

  Widget tela() {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        //------------------------------------------------- Conteudo 1 --------------------------------------------------------------------------------//
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: containerShadowHeightAndWidth(
                  context,
                  Text('Olá, Vinicius',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'GothamBold')),
                  Color(0xff8a05be),
                  size.height / 20,
                  size.width / 999,
                  top: 60,
                  left: 15),
            ),
            GestureDetector(
              child: containerShadowHeightAndWidth(context, Text(''),
                  Color(0xff9823c7), size.height / 20, size.width / 10,
                  top: 40,
                  left: 5,
                  right: 10,
                  shape: BoxShape.circle,
                  icon: Icon(Icons.close, color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        //------------------------------------------------- Conteudo 2 --------------------------------------------------------------------------------//
        Expanded(
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(Icons.qr_code_scanner_sharp,
                          color: Colors.white, size: 140),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    containerShadowHeightAndWidth(
                        context,
                        Text('Agência 0001 Conta 6904229-9',
                            style: TextStyle(color: Colors.white)),
                        Color(0xff8a05be),
                        size.height / 50,
                        size.width / 1.5,
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0),
                    containerShadowHeightAndWidth(
                        context,
                        Text('Banco 260 - Nu Pagamentos S.A.',
                            style: TextStyle(color: Colors.white)),
                        Color(0xff8a05be),
                        size.height / 50,
                        size.width / 1.5,
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 20),
                  ],
                ),
                Container(
                    width: size.width / 1.1,
                    child: Divider(
                        color: Colors.white, thickness: 0.0, height: 15)),
                containerShadowHeightAndWidth(
                    context,
                    Text('Me Ajuda', style: TextStyle(color: Colors.white)),
                    Color(0xff8a05be),
                    size.height / 30,
                    size.width / 1.2,
                    top: 5,
                    left: 0,
                    right: 0,
                    bottom: 5,
                    arrowNext: true,
                    arrowLeft: 170,
                    incoBeforeText:
                        Icon(Icons.help_outline, color: Colors.white)),
                Container(
                    width: size.width / 1.1,
                    child: Divider(
                        color: Colors.white, thickness: 0.0, height: 15)),
                containerShadowHeightAndWidth(
                    context,
                    Text('Perfil', style: TextStyle(color: Colors.white)),
                    Color(0xff8a05be),
                    size.height / 30,
                    size.width / 1.2,
                    top: 5,
                    left: 0,
                    right: 0,
                    bottom: 5,
                    arrowNext: true,
                    arrowLeft: 200,
                    incoBeforeText:
                        Icon(Icons.perm_identity_outlined, color: Colors.white)),
                Container(
                    width: size.width / 1.1,
                    child: Divider(
                        color: Colors.white, thickness: 0.0, height: 15)),
                containerShadowHeightAndWidth(
                    context,
                    Text('Configurar conta',
                        style: TextStyle(color: Colors.white)),
                    Color(0xff8a05be),
                    size.height / 30,
                    size.width / 1.2,
                    top: 5,
                    left: 0,
                    right: 0,
                    bottom: 5,
                    arrowNext: true,
                    arrowLeft: 118,
                    incoBeforeText: Icon(Icons.build, color: Colors.white)),
                Container(
                    width: size.width / 1.1,
                    child: Divider(
                        color: Colors.white, thickness: 0.0, height: 15)),
                containerShadowHeightAndWidth(
                    context,
                    Text('Configurar cartão',
                        style: TextStyle(color: Colors.white)),
                    Color(0xff8a05be),
                    size.height / 30,
                    size.width / 1.2,
                    top: 5,
                    left: 0,
                    right: 0,
                    bottom: 5,
                    arrowNext: true,
                    arrowLeft: 112,
                    incoBeforeText:
                        Icon(Icons.credit_card_outlined, color: Colors.white)),
                Container(
                    width: size.width / 1.1,
                    child: Divider(
                        color: Colors.white, thickness: 0.0, height: 15)),
                containerShadowHeightAndWidth(
                    context,
                    Text('Pedir conta PJ',
                        style: TextStyle(color: Colors.white)),
                    Color(0xff8a05be),
                    size.height / 30,
                    size.width / 1.2,
                    top: 5,
                    left: 0,
                    right: 0,
                    bottom: 5,
                    arrowNext: true,
                    arrowLeft: 136,
                    incoBeforeText: Icon(Icons.store_mall_directory_outlined, color: Colors.white)),
                Container(
                    width: size.width / 1.1,
                    child: Divider(
                        color: Colors.white, thickness: 0.0, height: 15)),
                containerShadowHeightAndWidth(
                    context,
                    Text('Participe da nossa promo',
                        style: TextStyle(color: Colors.white)),
                    Color(0xff8a05be),
                    size.height / 30,
                    size.width / 1.2,
                    top: 5,
                    left: 0,
                    right: 0,
                    bottom: 5,
                    arrowNext: true,
                    arrowLeft: 57,
                    incoBeforeText:
                        Icon(Icons.star_outline, color: Colors.white)),
                Container(
                    width: size.width / 1.1,
                    child: Divider(
                        color: Colors.white, thickness: 0.0, height: 15)),
                containerShadowHeightAndWidth(
                    context,
                    Text('Configurar notificações',
                        style: TextStyle(color: Colors.white)),
                    Color(0xff8a05be),
                    size.height / 30,
                    size.width / 1.2,
                    top: 5,
                    left: 0,
                    right: 0,
                    bottom: 5,
                    arrowNext: true,
                    arrowLeft: 72,
                    incoBeforeText:
                        Icon(Icons.email_outlined, color: Colors.white)),
                Container(
                    width: size.width / 1.1,
                    child: Divider(
                        color: Colors.white, thickness: 0.0, height: 15)),
                containerShadowHeightAndWidth(
                    context,
                    Text('Configurações do app',
                        style: TextStyle(color: Colors.white)),
                    Color(0xff8a05be),
                    size.height / 30,
                    size.width / 1.2,
                    top: 5,
                    left: 0,
                    right: 0,
                    bottom: 5,
                    arrowNext: true,
                    arrowLeft: 81,
                    incoBeforeText:
                        Icon(Icons.phone_android, color: Colors.white)),
                Container(
                    width: size.width / 1.1,
                    child: Divider(
                        color: Colors.white, thickness: 0.0, height: 15)),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: size.width / 1.1,
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                    textColor: Colors.white,
                    color: Colors.white,
                    child: Text('SAIR DO APP',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff8a05be),
        child: tela(),
      ),
    );
  }
}
