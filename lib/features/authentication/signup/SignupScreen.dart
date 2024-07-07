import 'package:flutter/material.dart';
import '../login/LoginScreen.dart';
import '../../../core/data/models/UsersData.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Color pop = const Color(0xFFFDAC41);
  Color light = Colors.white;
  Color dark = const Color(0xFF1D1D27);

  var firstNameController = TextEditingController();
  var secondNameController = TextEditingController();
  var usernamecontroller = TextEditingController();
  var agecontroller = TextEditingController();
  var gender = TextEditingController();
  var phoneNumber = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordControllerTrue = TextEditingController();

  var formkey2 = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: formkey2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Join Us',
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w600,
                            color: light,
                            fontFamily: "mon",
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                          ),
                          child: CircleAvatar(
                            backgroundColor: pop,
                            radius: 6,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    //first and last name
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: firstNameController,
                                decoration: InputDecoration(
                                  labelText: 'First name',
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "mon2",
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(
                                      color: pop,
                                      width: 5.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25)),
                                    borderSide: BorderSide(
                                      color: pop,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.name,
                                onFieldSubmitted: (String value) {
                                  debugPrint(value);
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Required!';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: secondNameController,
                                decoration: InputDecoration(
                                  labelText: 'Last name',
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "mon2",
                                  ),
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 5.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25)),
                                    borderSide: BorderSide(
                                      color: pop,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.name,
                                onFieldSubmitted: (String value) {
                                  debugPrint(value);
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Required!';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),

                    //username
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: usernamecontroller,
                                decoration: InputDecoration(
                                  labelText: 'username',
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "mon2",
                                  ),
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 5.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25)),
                                    borderSide: BorderSide(
                                      color: pop,
                                      width: 1.0,
                                    ),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.account_circle_outlined,
                                    color: light,
                                  ),
                                ),
                                keyboardType: TextInputType.name,
                                onFieldSubmitted: (String value) {
                                  debugPrint(value);
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Required!';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: agecontroller,
                                decoration: InputDecoration(
                                  labelText: 'age',
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "mon2",
                                  ),
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 5.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25)),
                                    borderSide: BorderSide(
                                      color: pop,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                onFieldSubmitted: (String value) {
                                  debugPrint(value);
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Required!';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),

                    //email address
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            controller: emailController,
                            decoration: InputDecoration(
                              labelText: 'email addresses',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: "mon2",
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 5.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(25)),
                                borderSide: BorderSide(
                                  color: pop,
                                  width: 1.0,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: light,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (String value) {
                              debugPrint(value);
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'email must not be empty !';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),

                    //password
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            controller: passwordController,
                            decoration: InputDecoration(
                              labelText: 'password',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: "mon2",
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 5.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(25)),
                                borderSide: BorderSide(
                                  color: pop,
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
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.transparent),
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
                                return 'password must not be empty';
                              }
                              if (value != passwordControllerTrue.text) {
                                return 'password does not match ! ';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),

                    //Re-enter password
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            controller: passwordControllerTrue,
                            decoration: InputDecoration(
                              labelText: 'Re-enter password',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: "mon2",
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 5.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(25)),
                                borderSide: BorderSide(
                                  color: pop,
                                  width: 1.0,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.lock_open_outlined,
                                color: light,
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            obscureText: isPassword,
                            onFieldSubmitted: (String value) {
                              debugPrint(value);
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'password must not be empty';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),

                    //phone number
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            controller: phoneNumber,
                            decoration: InputDecoration(
                              labelText: 'phone number',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: "mon2",
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 5.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(25)),
                                borderSide: BorderSide(
                                  color: pop,
                                  width: 1.0,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.phone_android,
                                color: light,
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            onFieldSubmitted: (String value) {
                              debugPrint(value);
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'phone number must not be empty';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Have an account ?',
                            style: TextStyle(
                              color: light,
                              fontWeight: FontWeight.w500,
                              fontFamily: "mon2",
                            )),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, 'login');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.transparent,
                          ),
                          child: Text('Login',
                              style: TextStyle(
                                  color: pop,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "mon3",
                                  fontSize: 12)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      // login button at the end
                      width: 70,
                      height: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          splashFactory: NoSplash.splashFactory,
                        ),
                        onPressed: () async {
                          if (formkey2.currentState!.validate()) {
                            debugPrint(firstNameController.text);
                            debugPrint(secondNameController.text);
                            debugPrint(usernamecontroller.text);
                            debugPrint(emailController.text);
                            debugPrint(passwordController.text);
                            debugPrint(phoneNumber.text);
                            setState(() {
                              if (usernamecontroller.text.isNotEmpty &&
                                  passwordController.text.isNotEmpty &&
                                  firstNameController.text.isNotEmpty) {
                                myUsers.add(
                                  {
                                    'name': firstNameController.text.trim(),
                                    'email': usernamecontroller.text.trim(),
                                    'password': passwordController.text.trim()
                                  },
                                );
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (c) {
                                  return const LoginScreen();
                                }));
                              } else
                                isPassword = false;
                            });
                          }
                        },
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: dark,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
