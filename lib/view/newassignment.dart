import 'package:flutter/material.dart';

class NewAssignment extends StatefulWidget {
  const NewAssignment({Key? key}) : super(key: key);

  @override
  State<NewAssignment> createState() => _NewAssignmentState();
}

String cor = '$Colors';

class _NewAssignmentState extends State<NewAssignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 8, bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 70,
                        height: 70,
                        child: Image.asset(
                          'lib/images/owl.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    'Nova Tarefa',
                    style: TextStyle(
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              tituloTarefa(),
              SizedBox(
                height: 10,
              ),
              descricaoTarefa(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: SizedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      escolherCor(Color.fromRGBO(255, 242, 204, 1)),
                      escolherCor(Color.fromRGBO(255, 217, 240, 1)),
                      escolherCor(Color.fromRGBO(232, 197, 255, 1)),
                      escolherCor(Color.fromRGBO(202, 251, 255, 1)),
                      escolherCor(Color.fromRGBO(227, 255, 230, 1)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).popAndPushNamed('/list');
                    },
                    child: Image.asset(
                      'lib/images/iconexcluir.png',
                      height: 70,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Image.asset(
                    'lib/images/iconchecked.png',
                    height: 70,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget tituloTarefa() {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          )),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Título da Tarefa',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  Widget descricaoTarefa() {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      height: 210,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: TextField(
        expands: true,
        maxLines: null,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          hintText: 'Escreva uma descrição para sua tarefa.',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  Widget escolherCor(cor) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: cor,
      ),
      child: SizedBox(
        height: 50,
      ),
    );
  }
}
