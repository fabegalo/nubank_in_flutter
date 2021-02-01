import 'dart:io';

import 'package:flutter/material.dart';
import '../Componentes/ContainerWidget.dart';
import '../Componentes/shimmer_indicator.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'dart:async';

class TelaInicio extends StatefulWidget {
  @override
  _TelaInicioState createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  RefreshController _refreshController = RefreshController();

  dynamic colorConteudo131 = Colors.purple[400];
  dynamic colorConteudo132 = Colors.white;

  dynamic colorConteudo21 = Colors.white;
  dynamic colorConteudo22 = Colors.white;

  var boolChange = true;

  bool _isLoading = false;

  bool isHidden = true;

  void recuperaDados() {
    Timer.periodic(Duration(seconds: 5),
      (Timer timer) => setState(
        () {
          setState(() {
            _isLoading = false;

            colorConteudo131 = Colors.purple[400];
            colorConteudo132 = Colors.white;

            colorConteudo21 = Colors.white;
            colorConteudo22 = Colors.white;
          });
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    recuperaDados();
  }

  Widget telaLoading() {
    var timer = Timer.periodic(Duration(seconds: 1), (timer) async {
      if (boolChange) {
        boolChange = false;

        colorConteudo131 = Colors.purple[200];
        colorConteudo132 = Colors.purple[400];

        colorConteudo21 = Colors.white;
        colorConteudo22 = Colors.grey[400];
      } else {
        boolChange = true;

        colorConteudo131 = Colors.purple[400];
        colorConteudo132 = Colors.purple[200];

        colorConteudo21 = Colors.grey[400];
        colorConteudo22 = Colors.white;
      }
      setState(() {});
      if (!_isLoading) {
        
        
        timer.cancel();
      }
    });

    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        //------------------------------------------------- Conteudo 1 --------------------------------------------------------------------------------//
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            containerShadowHeightAndWidth(context, Text(''), colorConteudo131,
                size.height / 20, size.width / 1.5,
                top: 40, right: 10, animate: true, color2: colorConteudo132),
            containerShadowHeightAndWidth(context, Text(''), colorConteudo131,
                size.height / 20, size.width / 10,
                top: 40,
                right: 1,
                shape: BoxShape.circle,
                animate: true,
                color2: colorConteudo132),
            containerShadowHeightAndWidth(context, Text(''), colorConteudo131,
                size.height / 20, size.width / 10,
                top: 40,
                left: 5,
                shape: BoxShape.circle,
                animate: true,
                color2: colorConteudo132),
          ],
        ),
        //------------------------------------------------- Conteudo 2 --------------------------------------------------------------------------------//
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            animateContainer(
              1.1,
              Column(
                children: [
                  containerShadowHeightAndWidth(context, Text(''),
                      Colors.grey[200], size.height / 100, size.width / 1.3,
                      top: 20, right: 10),
                  containerShadowHeightAndWidth(context, Text(''),
                      Colors.grey[200], size.height / 90, size.width / 1.3,
                      top: 20, right: 10),
                  containerShadowHeightAndWidth(context, Text(''),
                      Colors.grey[200], size.height / 20, size.width / 1.3,
                      top: 20, right: 10, bottom: 20),
                ],
              ),
              top: 20,
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            animateContainer(
              1.1,
              Column(
                children: [
                  containerShadowHeightAndWidth(context, Text(''),
                      Colors.grey[200], size.height / 100, size.width / 1.3,
                      top: 20, right: 10),
                  containerShadowHeightAndWidth(context, Text(''),
                      Colors.grey[200], size.height / 90, size.width / 1.3,
                      top: 20, right: 10),
                  containerShadowHeightAndWidth(context, Text(''),
                      Colors.grey[200], size.height / 20, size.width / 1.3,
                      top: 20, right: 10, bottom: 20),
                ],
              ),
              top: 20,
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            animateContainer(
              1.1,
              Column(
                children: [
                  containerShadowHeightAndWidth(context, Text(''),
                      Colors.grey[200], size.height / 100, size.width / 1.3,
                      top: 20, right: 10),
                  containerShadowHeightAndWidth(context, Text(''),
                      Colors.grey[200], size.height / 90, size.width / 1.3,
                      top: 20, right: 10),
                  containerShadowHeightAndWidth(context, Text(''),
                      Colors.grey[200], size.height / 20, size.width / 1.3,
                      top: 20, right: 10, bottom: 20),
                ],
              ),
              top: 20,
            ),
          ],
        ),
        //------------------------------------------------- Conteudo 3 --------------------------------------------------------------------------------//
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: size.width / 5.1,
                  margin: EdgeInsets.only(top: 40, left: 15),
                  color: Colors.purple,
                  child: Column(
                    children: [
                      containerShadowHeightAndWidth(context, Text(''),
                          colorConteudo131, size.height / 30, size.width / 15,
                          top: 5,
                          right: 30,
                          animate: true,
                          color2: colorConteudo132),
                      containerShadowHeightAndWidth(context, Text(''),
                          colorConteudo131, size.height / 60, size.width / 6,
                          top: 25,
                          bottom: 5,
                          animate: true,
                          color2: colorConteudo132),
                    ],
                  ),
                ),
                Container(
                  width: size.width / 5.1,
                  margin: EdgeInsets.only(top: 40, left: 15),
                  color: Colors.purple,
                  child: Column(
                    children: [
                      containerShadowHeightAndWidth(context, Text(''),
                          colorConteudo131, size.height / 30, size.width / 15,
                          top: 5,
                          right: 30,
                          animate: true,
                          color2: colorConteudo132),
                      containerShadowHeightAndWidth(context, Text(''),
                          colorConteudo131, size.height / 60, size.width / 6,
                          top: 25,
                          bottom: 5,
                          animate: true,
                          color2: colorConteudo132),
                    ],
                  ),
                ),
                Container(
                  width: size.width / 5.1,
                  margin: EdgeInsets.only(top: 40, left: 15),
                  color: Colors.purple,
                  child: Column(
                    children: [
                      containerShadowHeightAndWidth(context, Text(''),
                          colorConteudo131, size.height / 30, size.width / 15,
                          top: 5,
                          right: 30,
                          animate: true,
                          color2: colorConteudo132),
                      containerShadowHeightAndWidth(context, Text(''),
                          colorConteudo131, size.height / 60, size.width / 6,
                          top: 25,
                          bottom: 5,
                          animate: true,
                          color2: colorConteudo132),
                    ],
                  ),
                ),
                Container(
                  width: size.width / 5.1,
                  margin: EdgeInsets.only(top: 40, left: 15),
                  color: Colors.purple,
                  child: Column(
                    children: [
                      containerShadowHeightAndWidth(context, Text(''),
                          colorConteudo131, size.height / 30, size.width / 15,
                          top: 5,
                          right: 30,
                          animate: true,
                          color2: colorConteudo132),
                      containerShadowHeightAndWidth(context, Text(''),
                          colorConteudo131, size.height / 60, size.width / 6,
                          top: 25,
                          bottom: 5,
                          animate: true,
                          color2: colorConteudo132),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget animateContainer(double tamanho, Widget conteudo, {double top = 0}) {
    var size = MediaQuery.of(context).size;

    return AnimatedContainer(
      width: size.width / tamanho,
      margin: EdgeInsets.only(top: top),
      // color: corteste,

      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [colorConteudo21, colorConteudo22])
          //color: corteste
          ),

      duration: Duration(seconds: 1),
      //curve: Curves.fastOutSlowIn,
      //curve: Curves.bounceOut,
      //curve: Curves.fastLinearToSlowEaseIn,

      child: Container(child: conteudo),
    );
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
                  Text('Olá, Fabricio',
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
                  right: 1,
                  shape: BoxShape.circle,
                  icon: Icon(
                      isHidden == false
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Colors.white)),
              onTap: () {
                setState(() {
                  if (isHidden) {
                    isHidden = false;
                  } else {
                    isHidden = true;
                  }
                });
              },
            ),
            GestureDetector(
              child: containerShadowHeightAndWidth(context, Text(''),
                  Color(0xff9823c7), size.height / 20, size.width / 10,
                  top: 40,
                  left: 5,
                  right: 10,
                  shape: BoxShape.circle,
                  icon: Icon(Icons.settings_outlined, color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, '/TelaConfiguracao');
              },
            )
          ],
        ),
        //------------------------------------------------- Conteudo 2 --------------------------------------------------------------------------------//
        Expanded(
            flex: 4,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      animateContainer(
                        1.07,
                        Column(
                          children: [
                            containerShadowHeightAndWidth(
                                context,
                                Text('Cartão de Crédito',
                                    style: TextStyle(color: Colors.grey)),
                                Colors.white,
                                size.height / 20,
                                size.width / 1.3,
                                top: 10,
                                right: 10,
                                incoBeforeText: Icon(Icons.credit_card_outlined,
                                    color: Colors.grey, size: 25)),
                            containerShadowHeightAndWidth(
                                context,
                                Text('Fatura Atual',
                                    style: TextStyle(color: Colors.grey)),
                                Colors.white,
                                size.height / 50,
                                size.width / 1.3,
                                top: 10,
                                right: 10),
                            containerShadowHeightAndWidth(
                                context,
                                Text(isHidden == false ? "R\$ 91,80" : '',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 25,
                                        fontFamily: 'GothamBold')),
                                isHidden == false
                                    ? Colors.white
                                    : Colors.grey[200],
                                size.height / 23,
                                size.width / 1.3,
                                top: 15,
                                right: 10,
                                bottom: 0),
                            containerShadowHeightAndWidth(
                                context,
                                Text(''),
                                isHidden == false
                                    ? Colors.white
                                    : Colors.grey[200],
                                size.height / 50,
                                size.width / 1.3,
                                top: 1,
                                right: 10,
                                bottom: 10,
                                richText: RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: isHidden == false
                                            ? "Limite disponível "
                                            : '',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontFamily: "GothamMedium")),
                                    TextSpan(
                                        text: isHidden == false
                                            ? "R\$ 800,00"
                                            : '',
                                        style: TextStyle(
                                          fontFamily: "GothamBold",
                                          color: Color(0xff267a48),
                                          fontSize: 11,
                                        )),
                                  ]),
                                )),
                          ],
                        ),
                        top: 15,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      animateContainer(
                        1.07,
                        Column(
                          children: [
                            containerShadowHeightAndWidth(
                                context,
                                Text('Conta',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey)),
                                Colors.white,
                                size.height / 20,
                                size.width / 1.3,
                                top: 20,
                                right: 10,
                                incoBeforeText: Icon(
                                    Icons.account_balance_wallet,
                                    color: Colors.grey,
                                    size: 25)),
                            containerShadowHeightAndWidth(
                                context,
                                Text('Saldo disponível',
                                    style: TextStyle(color: Colors.grey)),
                                Colors.white,
                                size.height / 50,
                                size.width / 1.3,
                                top: 10,
                                right: 10),
                            containerShadowHeightAndWidth(
                                context,
                                Text(isHidden == false ? 'R\$ 9.990,75' : '',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontFamily: 'GothamBold')),
                                isHidden == false
                                    ? Colors.white
                                    : Colors.grey[200],
                                size.height / 20,
                                size.width / 1.3,
                                top: 20,
                                right: 10,
                                bottom: 5),
                          ],
                        ),
                        top: 15,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      animateContainer(
                        1.07,
                        Column(
                          children: [
                            containerShadowHeightAndWidth(
                                context,
                                Text('Rewards',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.purple)),
                                Colors.white,
                                size.height / 20,
                                size.width / 1.2,
                                top: 20,
                                right: 10,
                                incoBeforeText: Icon(Icons.wallet_giftcard,
                                    color: Colors.purple, size: 25)),
                            containerShadowHeightAndWidth(
                                context,
                                Text(
                                    'Apague compras com pontos que nunca expiram.'),
                                Colors.white,
                                size.height / 20,
                                size.width / 1.2,
                                top: 20,
                                right: 10),
                            containerShadowHeightAndWidth(
                                context,
                                Text('CONHECER',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold)),
                                Colors.white,
                                size.height / 20,
                                size.width / 3.5,
                                top: 5,
                                centerText: true,
                                border: true,
                                borderColor: Colors.purple,
                                right: 200,
                                bottom: 20),
                          ],
                        ),
                        top: 15,
                      ),
                    ],
                  ),
                ],
              ),
            )),
        //------------------------------------------------- Conteudo 3 --------------------------------------------------------------------------------//
        Expanded(
          flex: 1,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 25, left: 0, top: 15),
                  child: Row(
                    children: [
                      Container(
                        width: size.width / 4.5,
                        margin: EdgeInsets.only(bottom: 0, left: 16),
                        color: Color(0xff9823c7),
                        child: Column(
                          children: [
                            Expanded(
                              child: containerShadowHeightAndWidth(
                                  context,
                                  Text(''),
                                  Color(0xff9823c7),
                                  size.height / 30,
                                  size.width / 15,
                                  top: 0,
                                  right: 40,
                                  icon: Icon(Icons.gamepad_outlined,
                                      color: Colors.white)),
                            ),
                            Expanded(
                              child: containerShadowHeightAndWidth(
                                  context,
                                  Text('Pix',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                  Color(0xff9823c7),
                                  size.height / 60,
                                  size.width / 6,
                                  top: 20,
                                  bottom: 5),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 4.5,
                        margin: EdgeInsets.only(bottom: 0, left: 10),
                        color: Color(0xff9823c7),
                        child: Column(
                          children: [
                            Expanded(
                              child: containerShadowHeightAndWidth(
                                  context,
                                  Text(''),
                                  Color(0xff9823c7),
                                  size.height / 30,
                                  size.width / 15,
                                  top: 0,
                                  right: 40,
                                  icon: Icon(Icons.flip, color: Colors.white)),
                            ),
                            Expanded(
                              child: containerShadowHeightAndWidth(
                                  context,
                                  Text('Pagar',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                  Color(0xff9823c7),
                                  size.height / 30,
                                  size.width / 6,
                                  top: 20,
                                  bottom: 5),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 4.5,
                        margin: EdgeInsets.only(bottom: 0, left: 10),
                        color: Color(0xff9823c7),
                        child: Column(
                          children: [
                            Expanded(
                              child: containerShadowHeightAndWidth(
                                  context,
                                  Text(''),
                                  Color(0xff9823c7),
                                  size.height / 30,
                                  size.width / 15,
                                  top: 0,
                                  right: 30,
                                  icon: Icon(Icons.person_add_alt_1_outlined,
                                      color: Colors.white)),
                            ),
                            Expanded(
                              child: containerShadowHeightAndWidth(
                                  context,
                                  Text('Indicar amigos',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                  Color(0xff9823c7),
                                  size.height / 60,
                                  size.width / 6,
                                  top: 10,
                                  bottom: 5),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 4.5,
                        margin: EdgeInsets.only(bottom: 0, left: 10),
                        color: Color(0xff9823c7),
                        child: Column(
                          children: [
                            Expanded(
                              child: containerShadowHeightAndWidth(
                                  context,
                                  Text(''),
                                  Color(0xff9823c7),
                                  size.height / 30,
                                  size.width / 15,
                                  top: 0,
                                  right: 40,
                                  icon: Icon(Icons.monetization_on_outlined,
                                      color: Colors.white)),
                            ),
                            Expanded(
                              child: containerShadowHeightAndWidth(
                                  context,
                                  Text('Transferir',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                  Color(0xff9823c7),
                                  size.height / 60,
                                  size.width / 6,
                                  top: 20,
                                  bottom: 5),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width / 4.5,
                        margin: EdgeInsets.only(bottom: 0, left: 10),
                        color: Color(0xff9823c7),
                        child: Column(
                          children: [
                            Expanded(
                              child: containerShadowHeightAndWidth(
                                  context,
                                  Text(''),
                                  Color(0xff9823c7),
                                  size.height / 30,
                                  size.width / 15,
                                  top: 0,
                                  right: 40,
                                  icon: Icon(Icons.attach_money_outlined,
                                      color: Colors.white)),
                            ),
                            Expanded(
                              child: containerShadowHeightAndWidth(
                                  context,
                                  Text('Depositar',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                  Color(0xff9823c7),
                                  size.height / 60,
                                  size.width / 6,
                                  top: 20,
                                  bottom: 5),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SmartRefresher(
            header: ShimmerHeader(
                text: CircularProgressIndicator(backgroundColor: Colors.white)),
            controller: _refreshController,
            enablePullUp: false,
            enablePullDown: true,
            child: Container(
              color: Color(0xff8a05be),
              child: _isLoading ? telaLoading() : tela(),
            ),
            onRefresh: () async {
              await Future.delayed(Duration(milliseconds: 2000));
              _refreshController.refreshCompleted();
            },
            onLoading: () async {
              await Future.delayed(Duration(milliseconds: 2000));
              for (int i = 0; i < 10; i++) {}
              setState(() {});
              _refreshController.loadComplete();
            }));
  }
}
