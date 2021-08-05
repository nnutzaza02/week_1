void main() {
  //print(callGen(2000));
  // var x = callColor();
  // print(x);
  callWeb("YouTube",protocal: "https",port : 443);
}

//String callGen(int year){

//var year =2000;

// if(year >= 1996){
//   print("Gen Z");
// }else{
//   print("Gen Y");
// }
//                          true      false
//var x = (year >= 1996) ? "Gen Z" : "Gen Y";
//  return x;
//}

//เขียนแบบ Arrow Function 
//ข้อ1                            
String callGen(int year) => (year >= 1996) ? "Gen Z" : "Gen Y";

//ข้อ  2                           สีที่ต้องการเพิ่ม
int callColor([String newColor = "White"]) {

  //                        0       1      2
  List<dynamic> color = ["BLACK", "GREEN", "BLUE"];
  // เพิ่ม สีตัวต่อไป
  color.add(newColor);
  for (var item in color) {
    print(item);
  }
  // ทำตัวนับจำนวนสี
  return color.length;
}

//ข้อ3           ชื่อเว็บ          เลขport        ตัวโปรโตคอล              เรียกโชว์  โปรโตคอล ชื่อเว็บ port
void callWeb(String web , {int port = 80, String protocal = "http"})=>print("$protocal $web $port");

