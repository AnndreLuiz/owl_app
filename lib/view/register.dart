import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 130,
                bottom: 20,
              ),
              child: Text(
                'Vamos começar!',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Montserrat-SemiBold',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
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
                        hintText: 'Nome',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(49, 1, 185, 1),
                          fontFamily: 'Tahoma',
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
                        hintText: 'Número de telefone, email ou CPF',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(49, 1, 185, 1),
                          fontFamily: 'Tahoma',
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
                          fontFamily: 'Tahoma',
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
                        hintText: 'Confirmar senha',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(49, 1, 185, 1),
                          fontFamily: 'Tahoma',
                          fontWeight: FontWeight.bold,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(45),
                      child: Container(
                        width: 170,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/concluded');
                          },
                          child: Text(
                            'Cadastrar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontFamily: 'Montserrat-SemiBold',
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
            )
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
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
                    'Já possui cadastro? ',
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
                          color: Color.fromRGBO(255, 214, 0, 1)),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).popAndPushNamed('/');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
