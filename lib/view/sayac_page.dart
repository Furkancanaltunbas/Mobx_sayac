import 'package:flutter/material.dart';
import 'package:mobx_sayac/SayacModel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SayacPage extends StatelessWidget {
  SayacPage({super.key});

  var sayacModel = SayacModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobx Sayaç"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (_) {
              return Text(
                "${sayacModel.sayac}",
                style: const TextStyle(fontSize: 50),
              );
            }),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      sayacModel.sayacArttir();
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 50,
                    )),
                const SizedBox(
                  width: 100,
                ),
                IconButton(
                    onPressed: () {
                      sayacModel.sayacAzalt();
                    },
                    icon: const Icon(
                      Icons.remove,
                      size: 50,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
