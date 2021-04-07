import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';


class ChangeUsername extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ChangeUsernameState();
  }
}

TextEditingController _userNameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _confirmPasswordController = TextEditingController();





class ChangeUsernameState extends State<ChangeUsername>{
  FocusNode _email;
  FocusNode _password;
  FocusNode _confirm;
  FocusNode _save;

  @override
  void initState() {
    super.initState();
    _email= FocusNode();
    _password = FocusNode();
    _confirm = FocusNode();
    _save = FocusNode();
  }

  @override
  void dispose() {
    _userNameController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();

    _email.dispose();
    _password.dispose();
    _confirm.dispose();
    _save.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: RelicColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const RelicBazaarStackedView(
              upperColor: Colors.white,
              width: 35,
              height: 35,
              borderColor: Colors.white,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 70,
            right: 20,
            child: Center(
              child: Stack(
                children:<Widget>[
                  Transform.translate(
                    offset: const Offset(5,5),
                    child: Container(
                      width: width * 0.88,
                      height: height * 0.615,
                      decoration: const BoxDecoration(color: Colors.black),
                    ),
                  ),
                  Container(
                      height: height * 0.61,
                      //height: 458,
                      width: width * 0.87,
                      decoration: const BoxDecoration(color: RelicColors.primaryColor),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10.0),
                                child: Row(
                                  children:const <Widget>[
                                     Expanded(
                                      child: Text('Change Username or Password',
                                        style: TextStyle(
                                            fontSize: 35,
                                            color: Colors.white,
                                            fontFamily: 'pix M 8pt',
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height*0.011,
                              ),
                              Stack(
                                  children:<Widget>[
                                    Transform.translate(
                                      offset: const Offset(25,10),
                                      child: Container(
                                        color: Colors.black,
                                        width: width * 0.77,
                                        height: height * 0.08,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:20.0, right: 20.0),
                                      child: TextFormField(
                                        autofocus: true,
                                        focusNode: _email,
                                        keyboardType: TextInputType.emailAddress,
                                        enabled: true,
                                        textInputAction: TextInputAction.next,
                                        decoration: const InputDecoration(
                                          labelText: 'Username',
                                          labelStyle: TextStyle(
                                            fontSize: 20.0,
                                              color: Colors.black
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                                     borderRadius: BorderRadius.zero
                                                 )
                                        ),
                                        controller: _userNameController,
                                        onFieldSubmitted: (String value){
                                          _email.unfocus();
                                          FocusScope.of(context).requestFocus(_password);
                                        },
                                      ),
                                    ),
                                  ]
                              ),

                              SizedBox(
                                height: height*0.030,
                              ),
                              Stack(
                                  children:<Widget>[
                                    Transform.translate(
                                      offset: const Offset(25,10),
                                      child: Container(
                                        color: Colors.black,
                                        width: width * 0.77,
                                        height: height * 0.08,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:20.0, right: 20.0),
                                      child: TextFormField(
                                          // controller: _passwordController,
                                          // onChanged: (String value){
                                          // },
                                          //
                                          // decoration: const InputDecoration(
                                          //     labelText:
                                          //     labelStyle: TextStyle(
                                          //         fontSize: 20.0,
                                          //         color: Colors.black
                                          //     ),
                                          //     filled: true,
                                          //     fillColor: Colors.white,
                                          //     border: OutlineInputBorder(
                                          //         borderRadius: BorderRadius.zero
                                          //     )
                                          // )
                                        focusNode: _password,
                                        keyboardType: TextInputType.visiblePassword,
                                        obscureText: true,
                                        enabled: true,
                                        textInputAction: TextInputAction.next,
                                        decoration: const InputDecoration(
                                          labelText: 'Password',
                                          labelStyle: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.black
                                          ),
                                          filled: true,
                                          fillColor: Colors.white
                                        ),
                                        onFieldSubmitted: (String value){
                                          _password.unfocus();
                                          FocusScope.of(context).requestFocus(_confirm);
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                              SizedBox(
                                height: height*0.030,
                              ),
                              Stack(
                                  children:<Widget>[
                                    Transform.translate(
                                      offset: const Offset(25,10),
                                      child: Container(
                                        color: Colors.black,
                                        width: width * 0.77,
                                        height: height * 0.08,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:20.0, right: 20.0),
                                      child: TextFormField(
                                        focusNode: _confirm,
                                        keyboardType: TextInputType.visiblePassword,
                                        obscureText: true,
                                        enabled: true,
                                        textInputAction: TextInputAction.done,
                                        decoration: const InputDecoration(
                                          labelText: 'Confirm Password',
                                          labelStyle: TextStyle(
                                            fontSize: 20.0,
                                              color: Colors.black
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.zero
                                          )
                                        ),
                                        onFieldSubmitted: (String value){
                                          _confirm.unfocus();
                                          FocusScope.of(context).requestFocus(_save);
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                              SizedBox(
                                height: height*0.030,
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left:20.0, right: 20.0),
                                    child: InkWell(
                                      onTap: (){
                                        debugPrint('Save!!');
                                      },
                                      focusNode: _save,
                                      child: RelicBazaarStackedView(
                                        upperColor: Colors.black,
                                        lowerColor: Colors.white,
                                        height: height * 0.065,
                                        width: width * 0.40,
                                        borderColor: Colors.white,
                                        child: const Center(
                                          child: Text(
                                            'Save',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height*0.040,
                              ),

                            ],
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}