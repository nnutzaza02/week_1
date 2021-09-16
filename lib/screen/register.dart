import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formKey = GlobalKey<FormState>();
  final Ppassword = TextEditingController();
  final Conpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSurname(),
                txtEmail(),
                txtPassword(),
                txtConfirmPassword(),
                btnSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: TextStyle(
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Name:',
          icon: Icon(Icons.account_circle),
          hintText: 'Input your name',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาใส่ข้อมูลด้วย';
          } else if (value.length < 8) {
            return 'กรุณาใส่ข้อมูลมากกว่า 8 ตัวอักษร';
          }
        },
        onSaved: (value) {
          name = value;
        },
      ),
    );
  }

  Widget txtSurname() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: TextStyle(
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Surname:',
          icon: Icon(Icons.add_reaction_sharp),
          hintText: 'Input your surname',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณากรอกข้อมูล';
          }
        },
        onSaved: (value) {
          surname = value!.trim();
        },
      ),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Email:',
          icon: Icon(Icons.email),
          hintText: 'Input your email',
        ),
        validator: (value) {
          if (!(value!.contains('@'))) {
            return 'กรุณากรอกข้อมูลตามรูปแบบอีเมลด้วย';
          } else if (!(value.contains('.'))) {
            return 'กรุณากรอกข้อมูลตามรูปแบบอีเมลด้วย';
          }
        },
        onSaved: (value) {
          email = value;
        },
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Password:',
          icon: Icon(Icons.lock),
          hintText: 'Input your password',
        ),
        controller: Ppassword,
        onSaved: (value) {
          password = value;
        },
      ),
    );
  }

  Widget txtConfirmPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Password :',
          icon: Icon(Icons.lock_outlined),
          hintText: 'Input your Password',
        ),
        controller: Conpass,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your Confirm Password';
          } else if (value != Ppassword.text) {
            return 'Password not match';
          }
        },
        onSaved: (value) {
          password = value!.trim();
        },
      ),
    );
  }

  Widget btnSubmit() => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: oColor,
        ),
        onPressed: () {
          print("Successfully !!");
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            print(
                "Name : $name Surname : $surname Emai : $email Password : $password ");
            print("Register Complete!");
            formKey.currentState!.reset();
          }
        },
        child: Text('Register'),
      );
}
