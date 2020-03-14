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
                color: Colors.white,
              ),
            ),
            //* Login section
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                ),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(84, 126, 222, 1),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/img/logof.png'),
                    )),
              ),
            ),
            Center(
                child: Text(
              'Welcome!',
              style: TextStyle(
                color: Color.fromRGBO(84, 126, 222, 1),
                fontSize: 30,
              ),
            )),
            //* login Card
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(84, 126, 222, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(
                        4,
                        4,
                      ),
                    )
                  ],
                ),
                child: Center(
                  child: RaisedButton(
                    //* Login and redirect the users to the main screen
                    //TODO: Implement login method and pushNamedUntil
                    onPressed: () => {Navigator.of(context).pushNamed('/main')},
                    color: Colors.white,
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    //* Row to add google icon
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                            width: 25,
                            height: 25,
                            child: Image.asset('assets/img/google_logo.png')),
                        SizedBox(width: 10),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                            color: Color.fromRGBO(84, 126, 222, 1),
                            fontSize: 21,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
