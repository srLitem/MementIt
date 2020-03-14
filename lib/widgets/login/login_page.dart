import 'package:flutter/material.dart';

//*Login screen Page using Google Auth
class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            //* Background color
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(224, 118, 72, 1),
              ),
            ),
            //* Login section
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //* Mementit Logo
                  Text(
                    'Mementit!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  //* Login Card
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        //*Icon/Image related to login
                        Icon(
                          Icons.person,
                          color: Color.fromRGBO(224, 118, 72, 1),
                          size: 70,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        //* Login information text
                        Text(
                          'Login with your google account',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        //* Button to log in with google
                        RaisedButton(
                          //* Login and redirect the users to the main screen
                          //TODO: Implement login method and pushNamedUntil
                          onPressed: () => {Navigator.of(context).pushReplacementNamed('/main')}, 
                          color:
                              Color.fromRGBO(224, 118, 72, 1).withOpacity(.9),
                          splashColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          //* Row to add google icon
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.near_me,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Sign in with Google',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
