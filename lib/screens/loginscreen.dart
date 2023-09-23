import 'package:abo_shokor_home/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:abo_shokor_home/custom_widget/custom_text_form_field.dart';
import 'package:get/get.dart';
import 'package:abo_shokor_home/screens/signupscreen.dart';
import 'package:abo_shokor_home/menu/navbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _phoneTextController = TextEditingController();
  String? _phonenumber, _password;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ]),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Image(
            image: AssetImage('assets/logo.jpg'),
            height: 300,
            width: 300,
          ),
          /*const 
          Text(
            "تسجيل دخول",
            style: TextStyle(
                color: Color.fromARGB(255, 131, 24, 138),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),*/
          /* const SizedBox(
            height: 30,
          ),
          reusableTextField(
              "رقم الهاتف", Icons.phone, false, _phoneTextController),
          SizedBox(
            height: 20,
          ),
          reusableTextField(
              "كلمه المرور", Icons.password, false, _passwordTextController),
          SizedBox(
            height: 20,
          ),
          signInSignUpButton(context, true, () {})
*/

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  elevation: 10,
                  child: CustomTextField.customTextField(
                    "رقم الهاتف",
                    const Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 131, 24, 138),
                    ),
                    20,
                    (value) {
                      _phonenumber = value;
                    },
                    (value) {
                      if (value == null || value.isEmpty) {
                        return "Phone number cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),
                Card(
                  elevation: 10,
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
                      return "Password cannot be empty";
                    }
                    return null;
                  }),
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 131, 24, 138)),
                      onPressed: () {
                        Get.off(const HomeScreen());
                      },
                      icon: const Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                      label: const Text("تسجيل دخول")),
                ),
                GestureDetector(
                  onTap: () => Get.off(SingUpScreen()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "إنشاء حساب جديد",
                        style: TextStyle(
                            color: Color.fromARGB(255, 147, 144, 144)),
                      ),
                      Text(
                        " لا تمتلك حساب؟",
                        style:
                            TextStyle(color: Color.fromARGB(255, 131, 24, 138)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
