import 'package:app_first/pages/pro_page.dart';
import 'package:app_first/pages/second_page.dart';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String gmail = "";
  String password = '';
  final formkey = GlobalKey<FormState>();
  var isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Center(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Welcome To Login Page',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                const SizedBox(height: 15),
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/pro.jpg'),
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    validator: (String ?value) {
                      if (value!.length < 4) {
                        return 'Gmail At least 4 Character';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        gmail = value;
                      });
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 236, 231, 231),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          )),
                      hintText: 'Enter your Gamail',
                      hintStyle: TextStyle(fontSize: 15, color: Colors.red),
                      label: Text('Gmail:'),
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                      suffix: Icon(Icons.mail, color: Colors.indigo),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    validator: ((String?value) {
                      if (value!.length < 6) {
                        return 'Passwored at least 6 Character';
                      } else {
                        return null;
                      }
                    }),
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    obscureText: isVisible ? true : false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 236, 231, 231),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      hintText: 'Enter your Password',
                      hintStyle:
                          const TextStyle(fontSize: 15, color: Colors.red),
                      label: const Text('Password:'),
                      labelStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                      suffix: GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: isVisible
                            ? const Icon(Icons.visibility_off,
                                color: Colors.indigo)
                            : const Icon(
                                Icons.visibility_off,
                                color: Colors.indigo,
                              ),
                      ),
                    ),
                  ),
                ),

                ///////////////////////////////////////////// Button

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                          minimumSize: const Size(double.infinity, 50),
                          side:
                              const BorderSide(color: Colors.indigo, width: 3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16))),
                      onPressed: () {
                        final notValid = formkey.currentState!.validate();
                        if (notValid) {
                          final message = 'Username: $gmail';
                          // ignore: non_constant_identifier_names
                          final snackBar = SnackBar(
                            content: Text(
                              message,
                              style: const TextStyle(fontSize: 15),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FirstPage()));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProPage()));
                        }
                        // // formkey.currentState!.save();
                        // final message = 'Username: $gmail';
                        // // ignore: non_constant_identifier_names
                        // final snackBar = SnackBar(
                        //   content: Text(
                        //     message,
                        //     style: const TextStyle(fontSize: 15),
                        //   ),
                        // );
                        // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        //}
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const ProPage()));
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                ////////////////////////////////////////////////////////////////////////
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondPage()));
                      },
                      child: const Text(
                        'Register Now',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
