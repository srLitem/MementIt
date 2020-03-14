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
            Center(
              child: Text(
                'Mementit!',
                style: TextStyle(
                    color: Color.fromRGBO(224, 118, 72, 1),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            //* login Card
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(224, 118, 72, 1),
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
                    onPressed: () =>
                        {Navigator.of(context).pushNamed('/main')},
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
                              color: Color.fromRGBO(224, 118, 72, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
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
