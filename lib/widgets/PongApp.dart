import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/ScoreNotifier.dart';
import '../widgets/SizeAwareGame.dart';

class PongApp extends StatelessWidget {
  const PongApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            ChangeNotifierProvider.value(
              value: scoreNotifier,
              child: Builder(
                builder: (context) {
                  return SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ColoredBox(
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                              Provider.of<ScoreNotifier>(context)
                                  .leftScore
                                  .toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 24)),
                          Text(
                              Provider.of<ScoreNotifier>(context)
                                  .rightScore
                                  .toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 24)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Flexible(
              child: SizeAwareGame(),
            ),
          ],
        ),
      ),
    );
  }
}
