import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:abo_shokor_home/custom_widget/custom_text_form_field.dart';
import 'package:abo_shokor_home/screens/loginscreen.dart';
import 'package:abo_shokor_home/menu/navbar.dart';

class SingUpScreen extends StatelessWidget {
  SingUpScreen({super.key});

  String? _username, _phonenumber, _password, _conformPassword;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 131, 24, 138),
          title: const Text(
            "أبو شكر ستور",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ]),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      "تسجيل حساب جديد",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    Card(
                      elevation: 10,
                      child: CustomTextField.customTextField(
                          "الاسم الكامل",
                          const Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 131, 24, 138),
                          ),
                          20, (value) {
                        _username = value;
                      }, (value) {
                        if (value == null || value.isEmpty) {
                          return " حقل فارغ أدخل الاسم";
                        }
                        return null;
                      }),
                    ),
                    Card(
                      elevation: 10,
                      child: CustomTextField.customTextField(
                          "رقم الهاتف",
                          const Icon(
                            Icons.phone,
                            color: Color.fromARGB(255, 131, 24, 138),
                          ),
                          20, (value) {
                        _phonenumber = value;
                      }, (value) {
                        if (value == null || value.isEmpty) {
                          return "حقل فارغ أدخل رقم الهاتف";
                        }
                        return null;
                      }),
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.grey,
                      child: CustomTextField.customTextField(
                          "كلمه المرور",
                          const Icon(
                            Icons.password,
                            color: Color.fromARGB(255, 131, 24, 138),
                          ),
                          20, (value) {
                        _password = value;
                      }, (value) {
                        if (value == null || value.isEmpty) {
                          return "حقل فارغ أدخل كلمه المرور";
                        }
                        return null;
                      }),
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.grey,
                      child: CustomTextField.customTextField(
                        "تأكيد كلمه المرور",
                        const Icon(
                          Icons.password,
                          color: Color.fromARGB(255, 131, 24, 138),
                        ),
                        20,
                        (value) {
                          _conformPassword = value;
                        },
                        (value) {
                          if (value == null || value.isEmpty) {
                            return "حقل فارغ أدخل كلمه المرور";
                          }
                          if (_password != _conformPassword) {
                            return "كلمه المرور غير متطابقة";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 131, 24, 138))),
                          onPressed: () {
                            Get.off(const LoginScreen());
                          },
                          icon: const Icon(Icons.login),
                          label: const Text("تسجيل")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
