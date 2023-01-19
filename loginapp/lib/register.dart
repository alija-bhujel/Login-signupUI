import 'package:flutter/material.dart';

class MyRegister extends StatelessWidget {
  const MyRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'images/register.png',
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
            top: 120,
            left: 50,
            right: 0,
            child: Text(
              'Create\nAccount !!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )),
        Container(
          padding: EdgeInsets.only(
              left: 50,
              right: 50,
              top: MediaQuery.of(context).size.height * 0.4),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Full name',
                    hintStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.visibility_off),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(height: 40),

              // mainAxisAlignment: MainAxisAlignment.spaceBetween,

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1000)),
                      primary: Color(0xff4cc505),
                      textStyle: const TextStyle(
                          fontSize: 20, fontStyle: FontStyle.normal)),
                  onPressed: () {},
                  child: const Text('Sign up')),

              // Row(
              //   children: [
              //     IconButton(
              //         onPressed: () {}, icon: const Icon(Icons.facebook)),
              //     IconButton(
              //         onPressed: () {}, icon: const Icon(Icons.facebook)),
              //   ],
              // ),
              const SizedBox(
                height: 20,
              ),

              Center(
                child: const Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: Color(0xff4c505b),
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                ),
              ),

              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Log in',
                    style: TextStyle(fontSize: 10, color: Color(0xff4c505b)),
                  ))

              // CircleAvatar(
              //   radius: 20,
              //   backgroundColor: const Color(0xff4c505b),
              //   child: IconButton(
              //       onPressed: () {},
              //       icon: const Icon(Icons.arrow_forward)),
              // )
            ],
          ),
        ),
      ],
    ));
  }
}
