// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:full_login_page/modules/register/Register.dart';
import 'package:full_login_page/shared/component/component.dart';
import 'package:full_login_page/shared/cubit/cubit.dart';
import 'package:full_login_page/shared/cubit/state.dart';

class PhoneLogin extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  final emailControl = TextEditingController();
  final passControl = TextEditingController();
  //bool isPass = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Center(
                            child: Image(
                              image: AssetImage('assets/Welcome1.jpg'),
                              height: 150,
                              width: 250,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Wellcome back!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Log in to your existant account of Q Allure',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          formField(
                              control: emailControl,
                              isScure: false,
                              label: 'Email',
                              prefIcon: Icon(Icons.email),
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Email must not be empty';
                                }
                                return null;
                              }),
                          SizedBox(
                            height: 20,
                          ),
                          formField(
                              control: passControl,
                              isScure: LoginCubit.get(context).isPass,
                              label: 'PassWord',
                              prefIcon: Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Password must not be empty';
                                }
                                return null;
                              },
                              suffButton: IconButton(
                                icon: LoginCubit.get(context).isPass
                                    ? Icon(
                                        Icons.visibility_off,
                                        color: Colors.grey,
                                      )
                                    : Icon(Icons.remove_red_eye,
                                        color: Colors.grey),
                                onPressed: () {
                                  LoginCubit.get(context).scureChange();
                                },
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                            ),
                            child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Forget Password?',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[900],
                                borderRadius: BorderRadius.circular(30)),
                            width: 200,
                            height: 50,
                            child: MaterialButton(
                                child: Text(
                                  'LOG IN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    // If the form is valid, display a snackbar. In the real world,
                                    // you'd often call a server or save the information in a database.
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Processing Data',
                                        ),
                                      ),
                                    );
                                  }
                                }),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Or connect using',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.indigo[700]),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'f',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Facebook',
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'G',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Google',
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account?'),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        // from where :
                                        context,
                                        // where to send :
                                        MaterialPageRoute(
                                            builder: (context) => Register()));
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[700],
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
