import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 230,
                width: 411,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(190),
                    bottomRight: Radius.circular(190),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        'lib/images/owl.png',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 1),
                      child: Text(
                        'Lovepeople',
                        style: TextStyle(
                          color: Color.fromRGBO(49, 1, 185, 1),
                          fontFamily: 'Montserrat-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 5),
                      child: Text(
                        'Que bom que voltou!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat-SemiBold',
                          fontSize: 30,
                          height: 3,
                        ),
                      ),
                    ),
                    Form(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(11),
                                  ),
                                ),
                                hintText: 'Número de telefone, email ou CPF',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(49, 1, 185, 1),
                                  fontFamily: 'tahoma',
                                  fontWeight: FontWeight.bold,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(11),
                                  ),
                                ),
                                hintText: 'Senha',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(49, 1, 185, 1),
                                  fontFamily: 'tahoma',
                                  fontWeight: FontWeight.bold,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Esqueceu seu login ou senha? ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Tahoma',
                                  ),
                                ),
                                InkWell(
                                  child: Text(
                                    'Clique aqui',
                                    style: TextStyle(
                                      fontFamily: 'Tahoma',
                                      color: Color.fromRGBO(255, 214, 0, 1),
                                    ),
                                  ),
                                  onTap: () {},
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(35),
                              child: Container(
                                height: 50,
                                width: 105,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/list');
                                  },
                                  child: Text(
                                    'Entrar',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Montserrat-SemiBold'),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(49, 1, 185, 1),
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 4.0,
              dashColor: Colors.white,
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Não possui cadastro?  ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'tahoma',
                    ),
                  ),
                ),
                InkWell(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Clique aqui',
                      style: TextStyle(
                        fontFamily: 'tahoma',
                        color: Color.fromRGBO(255, 214, 0, 1),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/regis');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
