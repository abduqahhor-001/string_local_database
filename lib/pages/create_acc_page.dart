import 'package:flutter/material.dart';
import 'package:local_database/services/string_service.dart';

class CreateAccPage extends StatefulWidget {
  const CreateAccPage({super.key});

  @override
  State<CreateAccPage> createState() => _CreateAccPageState();
}

class _CreateAccPageState extends State<CreateAccPage> {
  TextEditingController? _username;
  TextEditingController? _password;
  TextEditingController? _phone;
  TextEditingController? _email;
  @override
  void initState() {
    // TODO: implement initState
    _username = TextEditingController();
    _password= TextEditingController();
    _phone = TextEditingController();
    _email= TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _username?.dispose();
    _password?.dispose();
    _phone?.dispose();
    _email?.dispose();
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


              SizedBox(
                height: 15,
              ),
              Text("Create" ,style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
              Text("Account" ,style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),

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
                controller: _email,
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.email , color: Colors.white,),
                  labelText: "E-mail",
                  labelStyle: TextStyle(color: Colors.white),

                ) ,
              ),
              TextField(
                controller: _phone,
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.phone ,color: Colors.white,),
                  labelText: "Phone Number",
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
                height: 25,
              ),
              Container(
                width: 60,
                height: 60,
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: (){
                    StringService.createName(_username.toString());
                    var username = StringService.getName();
                    print(username.toString());

                    StringService.createEmail(_email.toString());
                    var email = StringService.getName();
                    print(email.toString());

                    StringService.createPhone(_phone.toString());
                    var phone = StringService.getName();
                    print(phone.toString());

                    StringService.createPassword(_password.toString());
                    var password = StringService.getName();
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
                  Text("Already have an account?" ,style: TextStyle(fontSize: 14,color: Colors.grey),),
                  Text("Sign In" ,style: TextStyle(fontSize: 14,color: Colors.blue),),
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}
