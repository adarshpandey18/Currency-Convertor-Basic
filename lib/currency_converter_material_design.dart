
import 'package:flutter/material.dart';


class CurrencyConverterMaterialDesign extends StatelessWidget {
  const CurrencyConverterMaterialDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 61, 121, 1),
        foregroundColor: Color.fromRGBO(255, 250, 235, 1),
        title: const Text("Currency Convertor",),
      ),
      backgroundColor: const Color.fromRGBO(255, 250, 235, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "0",
              style: TextStyle(
                  color: Color.fromRGBO(51, 61, 121, 1),
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: TextField(
                style: TextStyle(
                    color: Color.fromRGBO(51, 61, 121, 1), fontSize: 25),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in INR",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                  prefixIcon: Icon(Icons.monetization_on,
                      size: 40, color: Color.fromRGBO(51, 61, 121, 1)),
                  filled: true,
                  fillColor: Color.fromRGBO(51, 61, 121, 0.2),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(51, 61, 121, 1),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              child: ElevatedButton(
                  onPressed: () {
                    print("hello");
                  },
                  style:  ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(51, 61, 121, 1)),
                    foregroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(255, 250, 235, 1)),
                    elevation: const MaterialStatePropertyAll(15),
                    minimumSize: const
                        MaterialStatePropertyAll(Size(double.infinity, 50)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),),

                  ),
                  child: const Text("Convert", style:  TextStyle(fontSize: 25),),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
