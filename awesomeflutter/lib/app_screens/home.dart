import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple[200],
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Spice Jet",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          //fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Mumbai to Banglore via New Delhi",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          //fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Air India",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          //fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Goa to Pune",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          //fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              FlightImageAsset(),
              FlightBookButton()
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.jpg');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 200.0,
    );
    return Container(
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        onPressed: () {
          bookFlight(context);
        },
        color: Colors.deepOrange,
        elevation: 6.0,
        textColor: Colors.white,
        child: Text(
          "Book Your Flight",
          style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Title Here"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
