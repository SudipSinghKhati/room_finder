import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:room_finder_app/core/common/snackbar/snackbar.dart';
import 'package:room_finder_app/core/common/text/style_font_20.dart';
import 'package:room_finder_app/core/common/text/text.dart';

import '../../domain/entity/consumer_entity.dart';
import '../view_model/auth_view_model.dart';

class Register extends ConsumerStatefulWidget {
  const Register({super.key});

  @override
  ConsumerState<Register> createState() => _RegisterState();
}

class _RegisterState extends ConsumerState<Register> {
  // String? gender;

  final _key = GlobalKey<FormState>();
  final _fNameController = TextEditingController(text:"sudip");
  final _mNameController = TextEditingController(text:"singh");
  final _lNameController = TextEditingController(text:"khati");
  final _contactController = TextEditingController(text:"9861758420");
  final _emailController = TextEditingController(text:"sudip@gmail.com");
  final _passwordController = TextEditingController(text:"sudip123");
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authViewModelProvider);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: const Color(0xFFA38CFE),
      appBar: AppBar(
        title: const TextStyle1(text: 'Registration'),
        centerTitle: true,
        elevation: 0,
        // backgroundColor: const Color.fromRGBO(51, 0, 255, 0.45),
      ),
      body: SafeArea(
        child: Form(
          key: _key,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        width: width * 0.33,
                        child: TextFormField(
                          controller: _fNameController,
                          decoration: const InputDecoration(
                            labelText: 'First Name',
                            hintText: 'First Name',
                          ),
                          validator: ((value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter first name';
                            }
                            return null;
                          }),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        width: width * 0.33,
                        child: TextFormField(
                          controller: _mNameController,
                          decoration: const InputDecoration(
                            labelText: 'Middle Name',
                            hintText: 'Middle Name',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        width: width * 0.33,
                        child: TextFormField(
                          controller: _lNameController,
                          decoration: const InputDecoration(
                            labelText: ' Last Name',
                            hintText: 'Last Name',
                          ),
                          validator: ((value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter last name';
                            }
                            return null;
                          }),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        width: width * 1,
                        child: TextFormField(
                          controller: _contactController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Phone No',
                            hintText: 'Phone no',
                          ),
                          validator: ((value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Phone Number';
                            }
                            return null;
                          }),
                        ),
                      ),
                    ),
                  ],
                ),

                // const Padding(padding: EdgeInsets.all(2)),
                // const Padding(
                //   padding: EdgeInsets.all(6),
                //   child: Align(
                //     alignment: Alignment.centerLeft,
                //     child: TextStyle1(text: 'Select Gender'),
                //   ),
                // ),
                // RadioListTile(
                //   title: const MakingText('Male'),
                //   value: 'male',
                //   groupValue: gender,
                //   onChanged: (value) {
                //     setState(
                //       () {
                //         gender = value.toString();
                //       },
                //     );
                //   },
                // ),
                // RadioListTile(
                //   title: const MakingText('Female'),
                //   value: 'female',
                //   groupValue: gender,
                //   onChanged: (value) {
                //     setState(
                //       () {
                //         gender = value.toString();
                //       },
                //     );
                //   },
                // ),
                // RadioListTile(
                //   title: const MakingText('Other'),
                //   value: 'other',
                //   groupValue: gender,
                //   onChanged: (value) {
                //     setState(
                //       () {
                //         gender = value.toString();
                //       },
                //     );
                //   },
                // ),

                Container(
                  padding: const EdgeInsets.all(6),
                  width: width * 1,
                  child: TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Email',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address';
                      }
                      return null;
                    }),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  width: width * 1,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: isObscure,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure ? Icons.visibility : Icons.visibility_off,
                          // color: Colors.white,
                        ),
                      ),
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    }),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(6),
                  child: SizedBox(
                    width: width * 0.6,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            var consumer = ConsumerEntity(
                              firstName: _fNameController.text,
                              middleName: _mNameController.text,
                              lastName: _lNameController.text,
                              contactNumber: _contactController.text,
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
                            ref
                                .read(authViewModelProvider.notifier)
                                .registerUser(consumer);

                            if (authState.error != null) {
                              showSnackBar(
                                context,
                                authState.error.toString(),
                                color: Colors.red,
                              );
                            } else {
                              showSnackBar(
                                context,
                                'Registered Successfully',
                              );
                            }
                          }
                        },
                        child: const Text('Register')),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MakingText("Already Have An Account"),
                    TextButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/');
                      },
                      child: const MakingText('Sign In'),
                    ),
                    const MakingText('Here'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
