import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child:  Column(
        children: [
          const DisplayOne(hint: "Enter First Number",),
          const SizedBox(
            height: 30,
          ),
          const DisplayOne(hint: "Enter Second Number",),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Result: 0", 
          style: TextStyle(
            fontSize: 40, 
            fontWeight: 
            FontWeight.bold
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.add),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.divide),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DisplayOne extends StatelessWidget {
  const DisplayOne({
    super.key,
    this.hint = 'Enter a Number',
  });
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
      )
    );
  }
}
