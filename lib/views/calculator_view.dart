import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child:  Column(
        children: [
          DisplayOne(hint: "Enter First Number",),
          SizedBox(
            height: 30,
          ),
          DisplayOne(hint: "Enter Second Number",),
          Text(
            "Result: 0", 
          style: TextStyle(
            fontSize: 24, 
            fontWeight: 
            FontWeight.bold
            ),
          ),
          Spacer(),
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
