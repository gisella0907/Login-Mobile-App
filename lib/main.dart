import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //Inicia la app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  //tasks.map((e) => Container(child: Text("Hola"))).toList()

  @override
  Widget build(BuildContext context) {
    final Size screenSize =
        MediaQuery.of(context).size; //Obtener el tamaño de la pantalla
    // screenSize.width el ancho de la pantalla del cel
    // screenSize.height el ancho de la pantalla del cel

    return Scaffold(
        body: Center(
      //Para centrar column
      child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, //Para centrar los widgets dentor del column de manera vertical
          children: [
            //Spacer(),
            Container(
                margin: EdgeInsets.all(20),
                child: Image.asset("images/image2.png")),
            // Spacer(),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.all(10),
              child: Text(
                "Mudah dalam bertransakisi, dengan Jumot",
                textAlign: TextAlign.center, //alinear el texto al centro
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            //Spacer(),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.all(10),
              child: Text(
                  textAlign: TextAlign.center,
                  "njsnjks ijadadjjdw klsajda niadiwad insilndiwa nandi niNDI"),
            ),
            // Spacer()
            Container(
                // decoration: BoxDecoration(color: Colors.pink),

                height: 50,
                width: screenSize.width - 40,
                margin: EdgeInsets.only(top: 45, left: 20, right: 20),
                child: FilledButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Masuk"))),
            Container(
                // decoration: BoxDecoration(color: Colors.pink),
                height: 50,
                width: screenSize.width - 40,
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 2.0, color: Colors.blue),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text('Mendaftar')))
          ]),
    ));
  }
}

/*
ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    primary: Colors.black, // Background color
    onPrimary: Colors.amber, // Text Color (Foreground color)
  ),
  child: const Text(
    'Elevated Button',
    style: TextStyle(fontSize: 40),
  ),
)
*/


