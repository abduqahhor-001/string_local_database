import 'package:get_storage/get_storage.dart';

class StringService{

  static var box = GetStorage();

  static storageName(String? name) {
      box.write("name", name);
  }
  static loadName() {
   var name =box.read("name");
   return name;
  }

  static storagePassword(String? password) {
    box.write("password", password);
  }
  static loadPassword() {
    var password =box.read("password");
    return password;
  }

  static createName(String? name){
    box.write("name", name);
  }

  static getName(){
    var getname =box.read("name");
    return getname;
  }

  static createEmail(String? email){
    box.write("email", email);
  }

  static getEmail(){
    var getname =box.read("email");
    return getname;
  }

  static createPhone(String? phone){
    box.write("phone", phone);
  }

  static getPhone(){
    var getname =box.read("phone");
    return getname;
  }
  static createPassword(String? password){
    box.write("password", password);
  }

  static getPassword(){
    var getname =box.read("password");
    return getname;
  }
}