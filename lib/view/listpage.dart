import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

TextEditingController _Controller = TextEditingController();

class _ListPageState extends State<ListPage> {
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
                    decoration: BoxDecoration(
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
                    'Suas listagens',
                    style: TextStyle(
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              list2(),
              SizedBox(
                height: 10,
              ),
              _itemlist(Color.fromRGBO(255, 242, 204, 1), 'Limpar a casa',
                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam, quis nostrud etation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat'),
              SizedBox(
                height: 10,
              ),
              _itemlist(Color.fromRGBO(199, 255, 203, 1), 'Pintar a cadeira',
                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam, quis nostrud etation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat'),
              SizedBox(
                height: 10,
              ),
              _itemlist(Color.fromRGBO(232, 197, 255, 1), 'Fazer um lanche',
                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.'),
              SizedBox(
                height: 10,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/new');
                  },
                  child: Image.asset(
                    'lib/images/iconadd.png',
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget list2() {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Busque palavras-chave',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          suffixIcon: Icon(
            Icons.search,
            color: Color(0xFF3101B9),
          ),
          labelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3101B9),
              fontFamily: "tahoma"),
        ),
      ),
    );
  }

  Widget _itemlist(cor, titulo, descricao) {
    return Container(
      height: 120,
      width: 450,
      margin: const EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: InkWell(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Limpar a casa',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3101B9),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ‘erat volutpat. Ut wisi enim ad minim veniam, quis nostrud etation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat',
                    style: TextStyle(
                      color: Color(0xFF3101B9),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'lib/images/iconlixo.png',
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
