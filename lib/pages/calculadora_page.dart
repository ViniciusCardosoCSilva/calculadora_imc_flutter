import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.directions_boat_filled_outlined, size: 90),
                        SizedBox(height: 10.0),
                        Text('Male', style: labelTextStyle),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female, size: 90),
                        SizedBox(height: 10.0),
                        Text('Female', style: labelTextStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(),
                ),
                Expanded(
                  child: CustomCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
