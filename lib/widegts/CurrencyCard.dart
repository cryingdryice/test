import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  final Color blackc = const Color.fromARGB(255, 40, 40, 40);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, (order - 1) * -20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : blackc,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? blackc : Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          fontSize: 20,
                          color: isInverted ? blackc : Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          fontSize: 18,
                          color: isInverted
                              ? blackc
                              : Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 3,
                child: Transform.translate(
                  offset: const Offset(60, 5),
                  child: Icon(
                    icon,
                    color: isInverted ? blackc : Colors.white,
                    size: 50,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
