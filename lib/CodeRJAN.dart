import 'package:flutter/material.dart';

import 'CODERJAN1.dart';


class GamePage extends StatefulWidget {
  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final _controller = TextEditingController();
  final _game = Game();

  // state variable
  var _feedbackText = '';

  void handleClickGuess() {
    print('Button clicked!');
    print(_controller.text);
    var guess = int.tryParse(_controller.text);
    if (guess == null) {
      // แจ้ง error
      print('Input error');
      setState(() {
        _feedbackText = 'Input error, please try again';
      });
    } else {
      var result = _game.doGuess(guess);
      if (result == Result.tooHigh) {
        // ทายมากไป
        print('Too high');
        setState(() {
          _feedbackText = 'Too high, please try again';
        });
      } else if (result == Result.tooLow) {
        // ทายน้อยไป
        print('Too low');
        setState(() {
          _feedbackText = 'Too low, please try again';
        });
      } else {
        // ทายถูก
        print('Correct');
        setState(() {
          _feedbackText = 'Good job!';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess the Number'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Please enter number between 1 and 100'),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a number',
              ),
            ),
            // Callback function
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('GUESS'),
            ),
            Text(_feedbackText),
          ],
        ),
      ),
    );
  }
}