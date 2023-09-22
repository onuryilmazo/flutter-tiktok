import 'package:flutter/material.dart';
import 'package:tiktok_tutorial/constants.dart';
import 'package:tiktok_tutorial/views/widgets/text_input_filed.dart';

class LoginScreen extends StatelessWidget{
  LoginScreen({Key? key}) : super(key:key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment:  Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //bu kod ile merkeze hizaladık bundan önce merkerzde ama yukarıdaydı şimdi tam ortada
          children: [
            Text('Serdar Ortaçın Sövmediği Tiktok',
              style:  TextStyle(
                  fontSize: 35,
                  color: buttonColor,
                  fontWeight: FontWeight.w900,
            ),
            ),
            const Text('Login',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                  controller: _emailController,
                  icon: Icons.email,
                  labelText: 'Email',
              ) ,
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _passwordController,
                icon: Icons.lock,
                labelText: 'Password',
              ) ,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width-40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: InkWell(
                onTap: () => authController.loginUSer(
                  _emailController.text,
                  _passwordController.text,
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?', style: TextStyle(fontSize: 20),),
                InkWell(
                  onTap: (){
                    print('navigating user');
                  },
                    child:
                    Text(
                      'Register',
                      style:
                      TextStyle(
                          fontSize: 20,
                          color: buttonColor
                      ),
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}