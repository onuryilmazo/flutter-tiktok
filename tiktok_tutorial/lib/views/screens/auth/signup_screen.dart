import 'package:flutter/material.dart';
import 'package:tiktok_tutorial/constants.dart';
import 'package:tiktok_tutorial/controllers/auth_controller.dart';
import 'package:tiktok_tutorial/views/screens/auth/login_screen.dart';
import '../../widgets/text_input_filed.dart';


class SignupScreen extends StatelessWidget{
  SignupScreen({Key? key}) : super(key:key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment:  Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //bu kod ile merkeze hizaladık bundan önce merkerzde ama yukarıdaydı şimdi tam ortada
          children: [
            Text('Serdar Ortaçın Sövmediği',
              style:  TextStyle(
                fontSize: 35,
                color: buttonColor,
                fontWeight: FontWeight.w900,
              ),
            ),

            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage('https://img-s3.onedio.com/id-588e55296495c51a5d21e335/rev-0/w-600/h-644/f-jpg/s-f5f51bc6882d0ff8515f2e5ab53e90dd6d485ebb.jpg'),
                  backgroundColor: Colors.black,
                ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: () => authController.pickImage(),
                    icon: const Icon(
                    Icons.add_a_photo,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10, // bunlar aralardaki boşluklar mesela bu register yazısıyla username arasındaki boşluk bir alttali Sized bok username ve email arasındaki
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _usernameController,
                icon: Icons.person,
                labelText: 'Username',
              ) ,
            ),
            const SizedBox(
              height: 10,
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
              height: 10,
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
              height: 20,
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
                onTap: () => authController.registerUser(_usernameController.text, _emailController.text, _passwordController.text, authController.profilePhoto),
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?', style: TextStyle(fontSize: 20),),
                InkWell(
                  onTap: (){
                    print('navigating user');
                  },
                  child:
                  Text(
                    'Login',
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