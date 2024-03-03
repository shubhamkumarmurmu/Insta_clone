import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_clone/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black87,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                  width: 500,
                  child: Image.asset('assets/image/logo.png')),
              SizedBox(height: 20),
              Container(
                height: 45,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Phone number,e-mail or username'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 45,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: TextButton(onPressed: (){},
                    child: Text('Forget Password?')),
              ),
              Container(
                height: 45,
                width: 380,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context) => homepage()));
                },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)
                    ),
                    child: Text('Log In',
                      style: TextStyle(
                        color: Colors.white
                      ),) ),
              ),
              SizedBox(height: 100,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text("Don't have account?",style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                  TextButton(onPressed: (){},
                      child: Text('Sign Up')
                  )
                ],
              )
            ],
          ),
        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}