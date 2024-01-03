import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test/widegts/CurrencyCard.dart';
import 'package:test/widegts/button.dart';

class Player {
  String name;
  //String? name; ?붙이면 name을 가질수도, 가지지않을 수도 있다고 알리기

  //Player(this.name);
  Player({required this.name}); // name이 넘겨져야함!
}

void main() {
  var jiwon = Player(name: "jiwon");
  //jiwon.name
  runApp(const MyApp());
}

// run함수에 주는 wideget MyApp은 root 첫실행시 뜸
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          // 세로 위젯 추가
          body: SingleChildScrollView(
            child: Padding(
              // body의 모든방향에 패딩 넣기
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // 리스트가 들어감!
                children: [
                  const SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  // 가로로 위젯 추가
                  Row(
                    // 메인인 행(column이면 열)을 기준으로 정렬
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "Hello World!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Jiwon",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 22,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Total balance",
                    style: TextStyle(
                        fontSize: 20, color: Colors.white.withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "\$ 1,000,000",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                          text: "Transfer",
                          bgColor: Colors.yellow,
                          txtColor: Colors.black),
                      Button(
                          text: "Request",
                          bgColor: Color.fromARGB(255, 40, 40, 40),
                          txtColor: Colors.white)
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Wallet",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Wallet",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: "Euro",
                    code: "Eur",
                    amount: "6428",
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    order: 1,
                  ),
                  const CurrencyCard(
                    name: "Bitcoin",
                    code: "BTC",
                    amount: "9 785",
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                    order: 2,
                  ),
                  const CurrencyCard(
                    name: "Dollar",
                    code: "USD",
                    amount: "2000",
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    order: 3,
                  ),
                ],
              ),
            ),
          )),
    );
    // or return CupertinoApp; 어떤 family 스타일을 사용할지 결정
  }
}
