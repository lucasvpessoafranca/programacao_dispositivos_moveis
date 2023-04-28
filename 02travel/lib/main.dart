import 'package:flutter/material.dart';

main(){
  runApp(TelaInicial());
}

class TelaInicial extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Viagens"),),
          body: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset("images/colosseum.jpg"),
                    const Positioned(
                        bottom: 30,
                        left: 10,
                        child: Text("Roma", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),)
                    ),
                    const Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text("Coliseu", style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),)
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Column(
                            children: [
                              Icon(Icons.place_outlined),
                              Text("Quero Ir")
                            ],
                          )
                      ),
                      TextButton(
                          onPressed: (){},
                          child: Column(
                            children: [
                              Icon(Icons.verified_outlined),
                              Text("Já Fui")
                            ],
                          )
                      ),
                      TextButton(
                          onPressed: (){},
                          child: Column(
                            children: [
                              Icon(Icons.share),
                              Text("Compartilhar")
                            ],
                          )
                      ),
                      TextButton(
                          onPressed: (){},
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star)
                                ],
                              ),
                              Text("Quero Ir")
                            ],
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id purus vel metus varius faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla dictum dolor sed risus egestas, ac congue quam commodo. Donec at neque et tellus pellentesque aliquet. Cras posuere sem sit amet tortor ornare, id tincidunt tortor suscipit. Donec interdum nibh sem, non ultrices sem placerat non. Nullam sem dui, laoreet eget mollis at, sagittis quis mi. Nam commodo pretium laoreet. In vitae auctor velit. ", textAlign: TextAlign.justify,),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text("Pessoas Encontradas", style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),)),
                      TextButton(onPressed: (){}, child: Column(
                        children: [
                          Icon(Icons.filter_alt_rounded),
                          Text("Filtrar")
                        ],
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
