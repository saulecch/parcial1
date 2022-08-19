import 'package:flutter/material.dart';
import 'package:parcial1/screen2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Logo.png'),
            const SizedBox(
              height: 20,
            ),
            Text(
              'PARCIAL I',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 42,
            ),
            Container(
              height: 156.0,
              color: const Color(0xFFD9D9D9),
              child: SizedBox.expand(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 34,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SAÚL CALDERÓN',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          '201108007',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: const [
                      SizedBox(width: 14),
                      ItemWidget(itemNumber: 'ITEM 1'),
                      ItemWidget(itemNumber: 'ITEM 2'),
                      ItemWidget(itemNumber: 'ITEM 3'),
                      SizedBox(width: 14),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 195,
              height: 41,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenTwo(),
                    ),
                  );
                },
                child: const Text('Página 2'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final String itemNumber;
  const ItemWidget({
    Key? key,
    required this.itemNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Container(
        height: 224,
        width: 224,
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Text(
            itemNumber,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
