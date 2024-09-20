import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
   const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage>createState() =>
     _CurrencyConverterMaterialPageState();

      
}

class _CurrencyConverterMaterialPageState
   extends State<CurrencyConverterMaterialPage> {
  double result=0;
   final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    final border = OutlineInputBorder(
      // Color(0xAARRGGBB)
      borderSide: const BorderSide(
        width: 2.0, 
        style: BorderStyle.solid,                
      ),
      borderRadius: BorderRadius.circular(5),
      );
  
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: const Text('currency converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            color: Colors.black,
             child: Text(
              result.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,  
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                ),
           ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText : 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              ),  
              //button 
              

              //raised
              //appears like a text 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                     result = double.parse(textEditingController.text)*81;
                    setState(() { });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          ),
                  ),
                  child: const Text('Convert'),
                  ),
              ),
          ],
        ),
      ),
    );
  }
}
  