import 'package:flutter/material.dart';
import 'singup.dart';

void main() {
  runApp(const MyApp()); //Inicia la app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
                margin: const EdgeInsets.all(20),
                child: Image.asset("images/image2.png")),
            // Spacer(),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.all(10),
              child: const Text(
                "First Log in / Sign in using Flutter",
                textAlign: TextAlign.center, //alinear el texto al centro
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            //Spacer(),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.all(10),
              child: const Text(
                  textAlign: TextAlign.center,
                  "You will be able to see an explample of a Log In and Sign In Using Google or Facebook"),
            ),
            // Spacer()
            Container(
                // decoration: BoxDecoration(color: Colors.pink),

                height: 50,
                width: screenSize.width - 40,
                margin: const EdgeInsets.only(top: 45, left: 20, right: 20),
                child: FilledButton(
                    style: FilledButton.styleFrom(
                        // backgroundColor: Colors.red,

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text("Sign In"))),
            Container(
                // decoration: BoxDecoration(color: Colors.pink),
                height: 50,
                width: screenSize.width - 40,
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 2.0, color: Colors.blue),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SingUp())), //Redirige a la pantalla de registro
                    child: const Text('Sign Up')))
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


