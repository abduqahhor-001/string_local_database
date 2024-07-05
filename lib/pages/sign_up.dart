import 'package:flutter/material.dart';
import 'package:local_database/services/string_service.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController? _username;
  TextEditingController? _password;
  @override
  void initState() {
    // TODO: implement initState
    _username = TextEditingController();
    _password= TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _username?.dispose();
    _password?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Color.fromARGB(255, 1, 21, 72),
          padding: EdgeInsets.all(30),
        child:SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 68,
              ),
              Container(

                height: 60,
                width: 50,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.contain,

                      image: AssetImage(
                          'assets/images/profileee.jpg'
                      ),
                    )
                ),
              ),
              
              SizedBox(
                height: 15,
              ),
              Text("Welcome Back!" ,style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),

              Text("Sign in to continue" ,style: TextStyle(color: Colors.white, fontSize: 14, )),
              SizedBox(
                height: 35,
              ),
              TextField(
                controller: _username,
                decoration:InputDecoration(
                    prefixIcon: Icon(Icons.person ,color: Colors.white,),
                    labelText: "User Name",
                    labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                ) ,
              ),
              TextField(
                controller: _password,
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.key_sharp , color: Colors.white,),
                    labelText: "Password",
                  labelStyle: TextStyle(color: Colors.white),

                ) ,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Forgot Password?" ,style: TextStyle(color: Colors.white, fontSize: 14, )),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 60,
                height: 60,
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: (){
                    StringService.storageName(_username.toString());
                    var username= StringService.loadName();
                    print(username.toString());

                    StringService.storagePassword(_password.toString());
                    var password= StringService.loadName();
                    print(password.toString());

                  },
                  child: Icon(Icons.arrow_forward,color: Colors.white,),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?" ,style: TextStyle(fontSize: 14,color: Colors.grey),),
                  Text("Sign Up" ,style: TextStyle(fontSize: 14,color: Colors.blue),),
                ],
              ),
            ],
          ),

        ),
        ),
    );
  }
}
