import 'package:flutter/material.dart';

class RegisterConcluded extends StatelessWidget {
  const RegisterConcluded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Text(
                    'Cadastro concluído!',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat-SemiBold',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(40),
                  child: Container(
                    height: 55,
                    width: 175,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed('/list');
                      },
                      child: Text(
                        'Começar',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat-SemiBold',
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
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
          Container(
            width: 500,
            height: 190,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(190),
                topRight: Radius.circular(190),
              ),
            ),
            child: Container(
              height: 200,
              width: 200,
              child: Image.asset(
                'lib/images/owlfly.png',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 35,
            ),
            child: Text(
              'Os ventos da programação estão indo até você',
              style: TextStyle(
                color: Color.fromRGBO(49, 1, 185, 1),
                fontFamily: 'tahoma',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
