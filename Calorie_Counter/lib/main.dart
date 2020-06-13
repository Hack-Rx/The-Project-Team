import 'package:flutter/material.dart';
import 'cardChild.dart';
import 'textStyles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.purple.shade400,
        scaffoldBackgroundColor: Colors.purpleAccent,
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

int breakfastCalories = 100;
int dinnerCalories = 100;
int lunchCalories = 100;
int snacksCalories = 100;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'HealthRX',
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.tealAccent),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: ReusableCard(
                  colour: Color(0xFFE39FF6),
                  cardChild: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Breakfast = ${breakfastCalories.toString()} calories',
                            textAlign: TextAlign.center,
                            style: kTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 15.0),
                        ),
                        child: Slider(
                          value: breakfastCalories.toDouble(),
                          min: 0,
                          max: 1000,
                          onChanged: (double newValue) {
                            setState(() {
                              breakfastCalories = newValue.round();
                            });
                          },
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.photo_camera),
                            hintText: 'What did you eat today?',
                            filled: false,
                            contentPadding: EdgeInsets.all(5),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            )),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 11.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: ReusableCard(
                    colour: Color(0xFFE39FF6),
                    cardChild: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Lunch = ${lunchCalories.toString()} calories',
                                style: kTextStyle),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFF8D8E98),
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 15.0),
                          ),
                          child: Slider(
                            value: lunchCalories.toDouble(),
                            min: 0,
                            max: 1000,
                            onChanged: (double newValue) {
                              setState(() {
                                lunchCalories = newValue.round();
                              });
                            },
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.photo_camera),
                              hintText: 'What did you eat today?',
                              filled: false,
                              contentPadding: EdgeInsets.all(5),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 11.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: ReusableCard(
                    colour: Color(0xFFE39FF6),
                    cardChild: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                                'Dinner = ${dinnerCalories.toString()} calories',
                                style: kTextStyle),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFF8D8E98),
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 15.0),
                          ),
                          child: Slider(
                            value: dinnerCalories.toDouble(),
                            min: 0,
                            max: 1000,
                            onChanged: (double newValue) {
                              setState(() {
                                dinnerCalories = newValue.round();
                              });
                            },
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.photo_camera),
                            hintText: 'What did you eat today?',
                            filled: false,
                            contentPadding: EdgeInsets.all(5),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 13.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: ReusableCard(
                  colour: Color(0xFFE39FF6),
                  cardChild: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Others = ${snacksCalories.toString()} calories',
                              style: kTextStyle),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 15.0),
                        ),
                        child: Slider(
                          value: snacksCalories.toDouble(),
                          min: 0,
                          max: 3000,
                          onChanged: (double newValue) {
                            setState(() {
                              snacksCalories = newValue.round();
                            });
                          },
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.photo_camera),
                            hintText: 'Brunch,Snacks,etc.',
                            filled: false,
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            )),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Material(
                  color: Color(0xFFEDC6FB),
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      //Go to registration screen.
                    },
                    minWidth: 300.0,
                    height: 42.0,
                    child: Text(
                      'Submit',
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
