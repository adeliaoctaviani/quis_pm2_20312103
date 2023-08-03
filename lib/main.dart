import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: formInput(),
    );
  }
}

class formInput extends StatefulWidget {
  const formInput({super.key});

  @override
  State<formInput> createState() => _formInputState();
}

class _formInputState extends State<formInput> {
  TextEditingController var_nama = TextEditingController();
  TextEditingController var_pass = TextEditingController();

  Future<void> kirimData(BuildContext context) {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              content: Container(
            height: 200,
            child: Column(children: <Widget>[
              Text("Username : ${var_nama.text}"),
              Text("Password : ${var_pass.text}"),
            ]),
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text('Login',
            style: TextStyle(color: Color.fromARGB(255, 255, 243, 243))),
        backgroundColor: Color.fromARGB(255, 121, 14, 7),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Image.asset('assets/images/tekno.png', width: 100, height: 100),
            Text(
              "Universitas Teknokrat Indonesia",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: var_nama,
              decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: var_pass,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 212, 131, 8)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Lupa Password?",
                textAlign: TextAlign.center,
              ),
              Text(
                "Klik disini",
                style: TextStyle(color: Colors.red),
              )
            ]),
            SizedBox(
              height: 500,
            ),
            Text(
              "Adelia Octaviani(20312103)",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
