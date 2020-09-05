import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/widgets/stars_ratings.dart';

class AddRatingForm extends StatefulWidget {
  final String restaurantId;
  final String category;
  final Color color;
  const AddRatingForm({
    Key key,
    @required this.restaurantId,
    @required this.category,
    @required this.color,
  }) : super(key: key);

  @override
  _AddAddRatingFormState createState() => _AddAddRatingFormState();
}

class _AddAddRatingFormState extends State<AddRatingForm> {
  final _myController = TextEditingController();
  double _currentSliderValue = 2;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            'შეაფასე ${widget.category}',
            style: TextStyle(
              color: Palette.font,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
        ),
        // Slider
        Slider(
            value: _currentSliderValue,
            min: 0,
            max: 5,
            divisions: 5,
            activeColor: widget.color,
            inactiveColor: Palette.font,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            }),
        StarsRatings(
          rating: _currentSliderValue,
          fontSize: 18.0,
          alignCenter: true,
          isComment: true,
        ),
        // Comment input
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 40.0,
          ),
          child: TextFormField(
            controller: _myController,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            style: TextStyle(
              color: Palette.font,
              fontSize: 14.0,
            ),
            decoration: InputDecoration(
              fillColor: widget.color,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              hintText: 'კომენტარი',
              hintStyle: TextStyle(
                color: Palette.font,
                fontSize: 14.0,
              ),
            ),
          ),
        ),
        // Submit Button
        RaisedButton(
          color: Palette.bg,
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          onPressed: () {
            // If the form is valid, display a Snackbar.
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'რეიტინგი: $_currentSliderValue; კომენტარი: ${_myController.text}',
                  style: TextStyle(
                    color: Palette.font,
                  ),
                ),
                backgroundColor: widget.color,
              ),
            );
          },
          child: Text(
            'დაამატე',
            style: TextStyle(
              color: Palette.font,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        // Padding at the bottom of the page
        SizedBox(
          height: 40.0,
        ),
      ],
    );
  }
}
