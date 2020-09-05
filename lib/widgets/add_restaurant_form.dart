import 'package:flutter/material.dart';
import 'package:khinkal_metri/configs/configs.dart';

class AddRestaurantForm extends StatefulWidget {
  @override
  _AddAddRestaurantFormState createState() => _AddAddRestaurantFormState();
}

class _AddAddRestaurantFormState extends State<AddRestaurantForm> {
  final _myController = TextEditingController();

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
            'რომელი რესტორანი დავამატოთ?',
            style: TextStyle(
              color: Palette.font,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
        ),
        // RestaurantName input
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
              fillColor: Palette.accent_yellow,
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
              hintText: 'რესტორნის სახელი',
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
                  'შევეცდებით მალე დავამატოთ',
                  style: TextStyle(
                    color: Palette.font,
                  ),
                ),
                backgroundColor: Palette.accent_yellow,
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
