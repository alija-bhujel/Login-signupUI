import 'package:flutter/material.dart';

class Mylogin extends StatelessWidget {
  const Mylogin({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'images/login.png',
          height: size.height,
          width: size.height,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 10,
          left: 5,
          child: GestureDetector(
            onTap: () {},
            child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(0),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 20,
                      color: Colors.grey,
                    ))),
          ),
        ),
        // Positioned(
        //     top: 220,
        //     child: Container(
        //       height: size.height - 220,
        //       width: size.width,
        //       decoration: const BoxDecoration(
        //           color: Colors.grey,
        //           borderRadius:
        //               BorderRadius.only(topLeft: Radius.circular(50))),
        //     )),
        const Positioned(
            top: 160,
            left: 40,
            right: 0,
            child: Text(
              'Welcome\nBack !!',
              style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )),
        Container(
          padding: EdgeInsets.only(
              left: 40,
              right: 40,
              top: MediaQuery.of(context).size.height * 0.5),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Username/Email',
                    hintStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.visibility_off),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Enter your password',
                    hintStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(height: 30),

              // const Text(
              //   'Login',
              //   style: TextStyle(
              //       color: Color(0xff4c505b),
              //       fontSize: 30,
              //       fontWeight: FontWeight.w600),
              // ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1000)),
                      primary: Color(0xff4cc505),
                      textStyle: const TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          color: Colors.lightBlue)),
                  onPressed: () {},
                  child: const Text('Log in')),
              // CircleAvatar(
              //   radius: 20,
              //   backgroundColor: const Color(0xff4c505b),
              //   child: IconButton(
              //       onPressed: () {},
              //       icon: const Icon(Icons.arrow_forward)),
              // )

              const SizedBox(
                height: 10,
              ),

              // TextButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, 'register');
              //     },
              //     child: const Text(
              //       'Sign up',
              //       style: TextStyle(
              //         decoration: TextDecoration.underline,
              //         fontSize: 15,
              //         color: Colors.white,
              //       ),
              //     )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  )),
              const Center(
                child: const Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: Color(0xff4c505b),
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                ),
              ),

              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 10, color: Color(0xff4cc505)),
                  ))
            ],
          ),
        ),
      ],
    ));
  }
}
