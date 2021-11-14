import 'package:flutter/material.dart';
import 'package:swipeable_card/swipeable_card.dart';
import 'package:share_plus/share_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:oktoast/oktoast.dart';



import 'card_example.dart';

class ExampleRouteSlide extends StatefulWidget {
  const ExampleRouteSlide({Key key}) : super(key: key);

  @override
  _ExampleRouteSlideState createState() => _ExampleRouteSlideState();


}

class _ExampleRouteSlideState extends State<ExampleRouteSlide> {

  final List<CardExample> cards = [
    CardExample(color: Colors.blue, text: "Discover your Restaurant Seating Preferences in Space-Time! Swipe Now.", number:"",imageLocation:"assets/images/ic_launcher.png"),
    CardExample(color: Colors.blue, text: "", number:"",imageLocation:"assets/images/swipe-right-left.png"),
    CardExample(color: Colors.green, text: "Romantic", number: "\n \n \n \nSelection:\n1/36",imageLocation:"assets/images/romantic-dinner.png" ),
    CardExample(color: Colors.green, text: "Pandemic Precautions", number: "\n \n \n \nSelection:\n2/36",imageLocation:"assets/images/pandemic.png"),
    CardExample(color: Colors.green, text: "Child Seating", number: "\n \n \n \nSelection:\n3/36",imageLocation:"assets/images/children.png"),
    CardExample(color: Colors.green, text: "No Smoking Zone", number: "\n \n \n \nSelection:\n4/36",imageLocation:"assets/images/no-smoking.png"),
    CardExample(color: Colors.green, text: "Vegetarian", number: "\n \n \n \nSelection:\n5/36",imageLocation:"assets/images/vegan.png"),
    CardExample(color: Colors.green, text: "Far from Rest Room", number: "\n \n \n \nSelection:\n6/36",imageLocation:"assets/images/no-toilet.png"),
    CardExample(color: Colors.green, text: "Family Friendly",number:"\n \n \n \nSelection:\n7/36",imageLocation:"assets/images/family.png"),
    CardExample(color: Colors.green, text: "Good Lighting", number: "\n \n \n \nSelection:\n8/36",imageLocation:"assets/images/lightbulb.png"),
    CardExample(color: Colors.green, text: "Interior Decor", number: "\n \n \n \nSelection:\n9/36",imageLocation:"assets/images/interior.png"),
    CardExample(color: Colors.green, text: "Open Air", number :"\n \n \n \nSelection:\n10/36",imageLocation:"assets/images/window.png"),
    CardExample(color: Colors.green, text: "Privacy", number: "\n \n \n \nSelection:\n11/36",imageLocation:"assets/images/privacy.png"),
    CardExample(color: Colors.green, text: "Heater/Cooler", number: "\n \n \n \nSelection:\n12/36",imageLocation:"assets/images/heater.png"),
    CardExample(color: Colors.green, text: "Low Sound Levels", number: "\n \n \n \nSelection:\n13/36",imageLocation:"assets/images/volume.png"),
    CardExample(color: Colors.green, text: "World View", number: "\n \n \n \nSelection:\n14/36",imageLocation:"assets/images/eye.png"),
    CardExample(color: Colors.green, text: "Business Friendly", number : "\n \n \n \nSelection:\n15/36",imageLocation:"assets/images/team.png"),
    CardExample(color: Colors.green, text: "Party Friendly", number: "\n \n \n \nSelection:\n16/36",imageLocation:"assets/images/party.png"),
    CardExample(color: Colors.green, text: "Senior Friendly", number : "\n \n \n \nSelection:\n17/36",imageLocation:"assets/images/senior.png"),
    CardExample(color: Colors.green, text: "Close to Media", number : "\n \n \n \nSelection:\n18/36",imageLocation:"assets/images/live.png"),
    CardExample(color: Colors.green, text: "Fountain View", number: "\n \n \n \nSelection:\n19/36",imageLocation:"assets/images/fountain.png"),
    CardExample(color: Colors.green, text: "Outdoor Seating", number: "\n \n \n \nSelection:\n20/36",imageLocation:"assets/images/terrace.png"),
    CardExample(color: Colors.green, text: "Accessible Rest Rooms" , number: "\n \n \n \nSelection:\n21/36",imageLocation:"assets/images/toilet.png"),
    CardExample(color: Colors.green, text: "Dancing Area", number:"\n \n \n \nSelection:\n22/36",imageLocation:"assets/images/dance-floor.png"),
    CardExample(color: Colors.green, text: "Smoking Zone" , number: "\n \n \n \nSelection:\n23/36",imageLocation:"assets/images/smoking-area.png"),
    CardExample(color: Colors.green, text: "WiFi Signal", number: "\n \n \n \nSelection:\n24/36",imageLocation:"assets/images/wifi-signal.png"),
    CardExample(color: Colors.green, text: "Charging Point", number: "\n \n \n \nSelection:\n25/36",imageLocation:"assets/images/point.png"),
    CardExample(color: Colors.green, text: "Cleanliest", number: "\n \n \n \nSelection:\n26/36",imageLocation:"assets/images/cleanliness.png"),
    CardExample(color: Colors.green, text: "Specially-abled support", number : "\n \n \n \nSelection:\n27/36",imageLocation:"assets/images/disability.png"),
    CardExample(color: Colors.green, text: "Self Service",number:"\n \n \n \nSelection:\n28/36",imageLocation:"assets/images/self-service.png"),
    CardExample(color: Colors.green, text: "Wireless Payment",number:"\n \n \n \nSelection:\n29/36",imageLocation:"assets/images/credit-card.png"),
    CardExample(color: Colors.green, text: "Non Alcohol ",number:"\n \n \n \nSelection:\n30/36",imageLocation:"assets/images/no-alcohol.png"),
    CardExample(color: Colors.green, text: "Eco Friendly",number:"\n \n \n \nSelection:\n31/36",imageLocation:"assets/images/biodegradable.png"),
    CardExample(color: Colors.green, text: "Parking Spot",number:"\n \n \n \nSelection:\n32/36",imageLocation:"assets/images/signage.png"),
    CardExample(color: Colors.green, text: "Expandable Seating",number:"\n \n \n \nSelection:\n33/36",imageLocation:"assets/images/expand.png"),
    CardExample(color: Colors.green, text: "Pet Allowed",number:"\n \n \n \nSelection:\n34/36",imageLocation:"assets/images/pets-allowed.png"),
    CardExample(color: Colors.green, text: "Breast Feeding Area",number:"\n \n \n \nSelection:\n35/36",imageLocation:"assets/images/breastfeeding.png"),
    CardExample(color: Colors.green, text: "Play Area",number:"\n \n \n \nSelection:\n36/36",imageLocation:"assets/images/theme-park.png"),



















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
    print("left");





    if(currentCardIndex >1) {

      showToast(
        "We removed that!",
        duration: Duration(seconds: 1),
        position: ToastPosition.bottom,
        backgroundColor: Colors.black.withOpacity(0.8),
        radius: 13.0,
        textStyle: TextStyle(fontSize: 18.0),
      );



    }
    // NOTE: it is your job to change the card
    setState(() => currentCardIndex++);
  }

  void swipeRight() {
    print("right");

    if(currentCardIndex >1) {
      showToast(
        "We added that!",
        duration: Duration(seconds: 1),
        position: ToastPosition.bottom,
        backgroundColor: Colors.black.withOpacity(0.8),
        radius: 13.0,
        textStyle: TextStyle(fontSize: 18.0),
      );
    }
    CardExample c = cards[currentCardIndex];
    sb.write("  "+ c.text+ " " + "\n");
    setState(() => currentCardIndex++);
  }

  void swipeTop() {

    if(currentCardIndex >1) {
      showToast(
        "We added that!",
        duration: Duration(seconds: 1),
        position: ToastPosition.bottom,
        backgroundColor: Colors.black.withOpacity(0.8),
        radius: 13.0,
        textStyle: TextStyle(fontSize: 18.0),
      );
    }
    CardExample c = cards[currentCardIndex];
    sb.write("  "+ c.text+ " " + "\n");
    setState(() => currentCardIndex++);
  }

  void swipeBottom() {
    if(currentCardIndex >1) {
      showToast(
        "We added that!",
        duration: Duration(seconds: 1),
        position: ToastPosition.bottom,
        backgroundColor: Colors.black.withOpacity(0.8),
        radius: 13.0,
        textStyle: TextStyle(fontSize: 18.0),
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
