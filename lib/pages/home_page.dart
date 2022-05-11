import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/sell_page.dart';
import 'package:tinder_clone/pages/root_app.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SellPage()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 40, 10, 40),
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.4,
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: const Text(
                            'SELL',
                            style: TextStyle(fontSize: 50),
                          ),
                        ),
                        Container(
                          child: const Icon(Icons.sell,
                              color: Colors.white, size: 50),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RootPage()),
                  );
                },
                child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 40, 10, 40),
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.4,
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: const Text('BUY',
                                style: TextStyle(fontSize: 50)),
                          ),
                          Container(
                            child: const Icon(
                              Icons.attach_money_rounded,
                              color: Colors.white,
                              size: 50,
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            )
          ],
        ));
  }
}
