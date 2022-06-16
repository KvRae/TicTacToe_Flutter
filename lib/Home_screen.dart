import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  _homePageState()=> _HomePageState();

  @override
  State<StatefulWidget> createState() {
    return _homePageState();
  }


}
class _HomePageState extends State<HomePage> {
  String activePlayer = 'X';
  bool gameOver = false;
  int turn = 0;
  String result = 'x player';

  //Game game = Game
  bool isSwitched = false;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            SwitchListTile.adaptive(
              title: const Text('2Players Mode',
              style: TextStyle(color: Colors.white,
              fontSize: 25
              ),
              textAlign: TextAlign.center,
              ),

              value: isSwitched,
              onChanged: (bool newValue) {
                setState(() {
                  isSwitched = newValue;
                });
              },
            ),
            Text("It's $activePlayer turn".toUpperCase(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
            Text(result,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton.icon(onPressed: (){
                  setState((){
                     activePlayer = 'X';
                     gameOver = false;
                     turn = 0;
                     result = '';
                  }
              );
            },
                icon: const Icon(Icons.replay),
                label: const Text('Restart'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).splashColor),
              ),
            ),

          ],
        )
      )

     );
  }

}