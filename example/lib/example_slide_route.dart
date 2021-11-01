import 'package:flutter/material.dart';
import 'package:swipeable_card/swipeable_card.dart';
import 'package:share_plus/share_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';


import 'card_example.dart';

class ExampleRouteSlide extends StatefulWidget {
  const ExampleRouteSlide({Key key}) : super(key: key);

  @override
  _ExampleRouteSlideState createState() => _ExampleRouteSlideState();
}

class _ExampleRouteSlideState extends State<ExampleRouteSlide> {
  final List<CardExample> cards = [
    CardExample(color: Colors.lightBlue, text: "Discover your Restaurant Seating Preferences in Space-Time! Swipe Now.", number:""),
    CardExample(color: Colors.lightBlue, text: "Swipe RIGHT if IMPORTANT (--->). Swipe LEFT if NON-IMPORTANT (<---).", number:""),
    CardExample(color: Colors.green, text: "Romantic", number: "\n \n \n \nSelection:\n1/33"),
    CardExample(color: Colors.green, text: "Pandemic Precautions", number: "\n \n \n \nSelection:\n2/33"),
    CardExample(color: Colors.green, text: "Child Seating", number: "\n \n \n \nSelection:\n3/33"),
    CardExample(color: Colors.green, text: "No Smoking Zone", number: "\n \n \n \nSelection:\n4/33"),
    CardExample(color: Colors.green, text: "Vegan and Vegetarian friendly", number: "\n \n \n \nSelection:\n5/33"),
    CardExample(color: Colors.green, text: "Not next to the Rest Room", number: "\n \n \n \nSelection:\n6/33"),
    CardExample(color: Colors.green, text: "Family Friendly",number:"\n \n \n \nSelection:\n7/33"),
    CardExample(color: Colors.green, text: "Good Lighting", number: "\n \n \n \nSelection:\n8/33"),
    CardExample(color: Colors.green, text: "Interior Decor Accessible", number: "\n \n \n \nSelection:\n9/33"),
    CardExample(color: Colors.green, text: "Open Air", number :"\n \n \n \nSelection:\n10/33"),
    CardExample(color: Colors.green, text: "Privacy Friendly", number: "\n \n \n \nSelection:\n11/33"),
    CardExample(color: Colors.green, text: "Near Air Conditioner/Heater", number: "\n \n \n \nSelection:\n12/33"),
    CardExample(color: Colors.green, text: "Low Sound Levels", number: "\n \n \n \nSelection:\n13/33"),
    CardExample(color: Colors.green, text: "External World View", number: "\n \n \n \nSelection:\n14/33"),
    CardExample(color: Colors.green, text: "Business Friendly", number : "\n \n \n \nSelection:\n15/33"),
    CardExample(color: Colors.green, text: "Party Friendly", number: "\n \n \n \nSelection:\n16/33"),
    CardExample(color: Colors.green, text: "Senior Friendly", number : "\n \n \n \nSelection:\n17/33"),
    CardExample(color: Colors.green, text: "Close to Media", number : "\n \n \n \nSelection:\n18/33"),
    CardExample(color: Colors.green, text: "Garden/Fountain View", number: "\n \n \n \nSelection:\n19/33"),
    CardExample(color: Colors.green, text: "Outdoor Seating", number: "\n \n \n \nSelection:\n20/33"),
    CardExample(color: Colors.green, text: "Close to Rest Rooms" , number: "\n \n \n \nSelection:\n21/33"),
    CardExample(color: Colors.green, text: "Close to Dancing Area", number:"\n \n \n \nSelection:\n22/33"),
    CardExample(color: Colors.green, text: "Close to Smoking Zone" , number: "\n \n \n \nSelection:\n23/33"),
    CardExample(color: Colors.green, text: "Great WiFi Signal", number: "\n \n \n \nSelection:\n24/33"),
    CardExample(color: Colors.green, text: "Access to a Charging Point", number: "\n \n \n \nSelection:\n25/33"),
    CardExample(color: Colors.green, text: "Cleanliest spot", number: "\n \n \n \nSelection:\n26/33"),
    CardExample(color: Colors.green, text: "Specially-abled support", number : "\n \n \n \nSelection:\n27/33"),
    CardExample(color: Colors.green, text: "Vegan and Vegetarian Friendly",number:"\n \n \n \nSelection:\n28/33"),
    CardExample(color: Colors.green, text: "Wireless Payment Support",number:"\n \n \n \nSelection:\n29/33"),
    CardExample(color: Colors.green, text: "Non Alcohol Serving",number:"\n \n \n \nSelection:\n30/33"),
    CardExample(color: Colors.green, text: "Eco Friendly Materials",number:"\n \n \n \nSelection:\n31/33"),
    CardExample(color: Colors.green, text: "Close to Parking Spot",number:"\n \n \n \nSelection:\n32/33"),
    CardExample(color: Colors.green, text: "Expandable Seating",number:"\n \n \n \nSelection:\n33/33"),



















  ];
  int currentCardIndex = 0;
  StringBuffer sb = new StringBuffer("My Preferences are :");


  @override
  Widget build(BuildContext context) {
    SwipeableWidgetController _cardController = SwipeableWidgetController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            if (currentCardIndex < cards.length)
              SwipeableWidgetSlide(
                key: ObjectKey(currentCardIndex),
                child: cards[currentCardIndex],
                onLeftSwipe: () => swipeLeft(),
                onRightSwipe: () => swipeRight(),
                onTopSwipe: () => swipeTop(),
                onBottomSwipe: () => swipeBottom(),
                nextCards: <Widget>[
                  // show next card
                  // if there are no next cards, show nothing
                  if (!(currentCardIndex + 1 >= cards.length))
                    Align(
                      alignment: Alignment.center,
                      child: cards[currentCardIndex + 1],
                    ),
                ],
              )
            else
              // if the deck is complete, add a button to reset deck
              Center(
                child: TextButton(

                  child: Text("Share Now"),
                  style:TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.green,
                      side: BorderSide(color: Colors.deepOrange, width: 1)
                  ),
                  onPressed:()=>Share.share(sb.toString()),
                  //onPressed: () => setState(() => currentCardIndex = 0),
                ),
              ),

            // only show the card controlling buttons when there are cards
            // otherwise, just hide it
            if (currentCardIndex < cards.length)
              cardControllerRow(_cardController),
          ],
        ),
      ),
    );
  }

  void swipeLeft() {
    //print("left");

    if(currentCardIndex >1) {
      Fluttertoast.showToast(
          msg: "Ok. We will ignore that!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    // NOTE: it is your job to change the card
    setState(() => currentCardIndex++);
  }

  void swipeRight() {
    //print("right");

    if(currentCardIndex >1) {
      Fluttertoast.showToast(
          msg: "Ok. We will add that!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    CardExample c = cards[currentCardIndex];
    sb.write("  "+ c.text+ " " + "\n");
    setState(() => currentCardIndex++);
  }

  void swipeTop() {

    if(currentCardIndex >1) {
      Fluttertoast.showToast(
          msg: "Ok. We will add that!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    CardExample c = cards[currentCardIndex];
    sb.write("  "+ c.text+ " " + "\n");
    setState(() => currentCardIndex++);
  }

  void swipeBottom() {
    if(currentCardIndex >1) {
      Fluttertoast.showToast(
          msg: "Ok. We will ignore that!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }

    // NOTE: it is your job to change the card
    setState(() => currentCardIndex++);
  }

  Widget cardControllerRow(SwipeableWidgetController cardController) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FlatButton(
          child: Text("Left"),
          onPressed: () => cardController.triggerSwipeLeft(),
        ),
        FlatButton(
          child: Text("Right"),
          onPressed: () => cardController.triggerSwipeRight(),
        ),
      ],
    );
  }
}
