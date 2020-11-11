class User{
String tarih1;
String saat1;

String enlem1;
 
User(

  this.enlem1,
  this.saat1,
  this.tarih1




);

User.fromJson(Map<String, dynamic> json){
    tarih1 = json[' tarih'];
    saat1 = json['saat'];
    enlem1 = json['enlem'];
   
  }







}