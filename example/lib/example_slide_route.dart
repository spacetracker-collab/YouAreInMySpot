import 'package:flutter/material.dart';
import 'package:swipeable_card/swipeable_card.dart';
import 'package:share_plus/share_plus.dart';

import 'card_example.dart';

class ExampleRouteSlide extends StatefulWidget {
  const ExampleRouteSlide({Key key}) : super(key: key);

  @override
  _ExampleRouteSlideState createState() => _ExampleRouteSlideState();
}

class _ExampleRouteSlideState extends State<ExampleRouteSlide> {
  final List<CardExample> cards = [
    CardExample(color: Colors.red, text: "Discover your Restaurant Seating Preferences in Space-Time! Swipe Now."),
    CardExample(color: Colors.red, text: "Swipe right if important. Swipe left if un-important"),
    CardExample(color: Colors.red, text: "Seat Next to Air Conditioner"),
    CardExample(color: Colors.blue, text: "Child Seating"),
    CardExample(color: Colors.orange, text: "No Smoking Zone"),
    CardExample(color: Colors.indigo, text: "Not next to the toilet"),
    CardExample(color: Colors.green, text: "Romantic"),
    CardExample(color: Colors.green, text: "Family Friendly"),
    CardExample(color: Colors.green, text: "Good Lighting"),
    CardExample(color: Colors.green, text: "Interior Decor Accessible"),
    CardExample(color: Colors.green, text: "Open Air"),
    CardExample(color: Colors.green, text: "Privacy Friendly"),



    CardExample(color: Colors.purple, text: "This is the last card"),
  ];
  int currentCardIndex = 0;

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
                child: FlatButton(
                  child: Text("Share"),
                  onPressed:()=>Share.share('Your Seating Preferences are : Privacy, Family Friendly'),
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

    // NOTE: it is your job to change the card
    setState(() => currentCardIndex++);
  }

  void swipeRight() {
    print("right");
    setState(() => currentCardIndex++);
  }

  void swipeTop() {
    print("top");
    setState(() => currentCardIndex++);
  }

  void swipeBottom() {
    print("top");
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
