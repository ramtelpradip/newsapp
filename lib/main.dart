import 'dart:async';
//import 'dart:html';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }

}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomePage()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/pigeon1.jpg',height: 80,),
            SizedBox(height: 10,),
            Text('NewsApp',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
              
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blueGrey),
            )
          ],
        ),
      ),
    );
  }
}
class HomePage extends StatefulWidget{
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  var emailController= TextEditingController();
  var pwController = TextEditingController();
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title:Text('NewsApp') ,
      ),
      body: Center(
        child: Container(
          width: 300,
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                      width: 2,
                    )
                    ,
                  ),
                  prefixText: 'Enter your Email',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {
                      
                    },
                    
                  ),
                  prefixIcon: Icon(Icons.email,color: Colors.blue,)
                ),
               ),
               SizedBox(
                height: 20,
               ),
                TextField(
                 // controller: passText,
                  obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                      width: 2
                    )
                    ,
                  ),
                   prefixText: 'Enter your password',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {
                      
                    },
                ),
               ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {
                  
                 
                }, child: Text('Login'))
             ],
           ), 
           
        ),
      ),
    );
  }
}