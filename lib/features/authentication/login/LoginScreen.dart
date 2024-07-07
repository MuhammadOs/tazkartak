import 'package:flutter/material.dart';
import '../../../core/data/models/UsersData.dart';
import '../../movies/movies_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  bool isPassword = true;

  Color orange = const Color(0xFFFDAC41);
  Color light = Colors.white;
  Color dark = const Color(0xFF1D1D27);
  Color dark2 = const Color(0xFF1D1D27);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Text(
                            'Welcome\nThere',
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w600,
                              color: light,
                              fontFamily: "mon",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 19,
                              right: 78,
                            ),
                            child: CircleAvatar(
                              backgroundColor: orange,
                              radius: 6,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ), // welcome there statement
                  isPassword == false
                      ? const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.error,
                                size: 15,
                                color: Colors.red,
                              ),
                              Text(
                                ' Invalid username or password !',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 10),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: usernameController,
                    style: TextStyle(
                      color: light,
                    ),
                    decoration: InputDecoration(
                        labelText: 'username',
                        labelStyle: TextStyle(
                          color: light,
                          fontFamily: "mon3",
                        ),
                        border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(
                            color: dark2,
                            width: 5.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(
                            color: orange,
                            width: 1.0,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                          color: light,
                        )),
                    keyboardType: TextInputType.name,
                    onFieldSubmitted: (String value) {
                      debugPrint(value);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'username must not be empty !';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: light,
                    ),
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'password',
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontFamily: "mon3",
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(25)),
                        borderSide: BorderSide(
                          color: orange,
                          width: 5.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(
                          color: orange,
                          width: 1.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock_open_outlined,
                        color: light,
                      ),
                      suffixIcon: ElevatedButton(
                        style: ButtonStyle(
                          splashFactory: NoSplash.splashFactory,
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          elevation: MaterialStateProperty.all(0),
                        ),
                        child: isPassword
                            ? Icon(
                                Icons.visibility,
                                color: light,
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: light,
                              ),
                        onPressed: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: isPassword,
                    onFieldSubmitted: (String value) {
                      debugPrint(value);
                    },
                    onChanged: (String value) {
                      debugPrint(value);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'password must not be empty !';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Or login with',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "mon3",
                          color: Color(0xFFFDAC41),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        // login button at the end
                        width: 100,
                        height: 55.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: dark2,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            splashFactory: NoSplash.splashFactory,
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    Image.asset('assets/appLogos/g.png', ).image,
                                radius: 12.0,
                                backgroundColor: Colors.transparent,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        // login button at the end
                        width: 100,
                        height: 55.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: dark2,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            splashFactory: NoSplash.splashFactory,
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    Image.asset('assets/appLogos/a.png').image,
                                radius: 12.0,
                                backgroundColor: Colors.transparent,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        // login button at the end
                        width: 100,
                        height: 55.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: dark2,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            splashFactory: NoSplash.splashFactory,
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    Image.asset('assets/appLogos/f.png').image,
                                radius: 12.0,
                                backgroundColor: Colors.transparent,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account ? ',
                          style: TextStyle(
                              color: light, fontFamily: "mon3", fontSize: 12)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'signup');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child: Text('Register Now',
                            style: TextStyle(
                                color: orange,
                                fontWeight: FontWeight.w500,
                                fontFamily: "mon3",
                                fontSize: 12)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shadowColor: orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              splashFactory: NoSplash.splashFactory,
                            ),
                            onPressed: () {
                              setState(() {
                                if (formkey.currentState!.validate()) {
                                  debugPrint(passwordController.text);
                                  for (int i = 0; i < myUsers.length; i++) {
                                    if (usernameController.text ==
                                            myUsers[i]['email'] &&
                                        passwordController.text ==
                                            myUsers[i]['password']) {
                                      isPassword = true;
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (c) {
                                          return const MoviesPages();
                                        },
                                      ));
                                      break;
                                    } else {
                                      isPassword = false;
                                    }
                                  }
                                }
                              });
                            },
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: dark,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
