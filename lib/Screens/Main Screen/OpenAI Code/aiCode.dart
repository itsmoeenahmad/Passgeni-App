import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/savedPasswordProvider.dart';
import 'dart:convert';
import 'package:provider/provider.dart';

import '../../../Constans/App Colors/appColors.dart';
import '../../../Constans/Reusable Widgets/text.dart';
import '../Provider Classes/sliderProviderClass.dart';

Future<String> generatePassword({
  context,
  required String profession,
  required String separator,
  required bool includeNumbers,
}) async {
  // Make sure to fetch the api key from a secure place like .env
  const String latestApiKey ='your-open-ai-api-key-here';

  //For numbers
  //Getting about 2/3/4 words..
  sliderProviderClass sliderClass =
      Provider.of<sliderProviderClass>(context, listen: false);
  print(sliderClass.selectedIndex);
  int wordsAre = sliderClass.selectedIndex;
  print('Selected Words Are: $wordsAre');
  if (wordsAre == 0) {
    wordsAre = 2;
  } else if (wordsAre == 1) {
    wordsAre = 3;
  } else {
    wordsAre = 4;
  }
  print('words are ${wordsAre}');

  String numbers;
  if (includeNumbers) {
    numbers =
        'and should end with $wordsAre digits after the last word, separated by the symbol "$separator"';
  } else {
    numbers = 'and should not include any numbers';
  }

  String? prompt = """
Generate a secure and memorable password only without enclosing the password in double quotations & password is in lower case with 
$wordsAre words related to a $profession's profession, but do not use the word "$profession". 
The words in the password should be separated by the symbol "$separator", and $numbers. 
The password must not contain any other numbers or special characters in the words. 
Return the password only, with no additional text, formatting, or quotation marks.
""";

  try {
    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $latestApiKey',
      },
      body: jsonEncode({
        'model': 'gpt-3.5-turbo-instruct',
        'prompt': prompt,
        'max_tokens': 15,
        'n': 1,
        'stop': null,
        'temperature': 0.7,
      }),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      print(responseData);
      String password = responseData['choices'][0]['text'].trim();
      Provider.of<savedPasswordProviderClass>(context, listen: false)
          .savedPassword(context, password);
      return password;
    } else {
      print('Request failed with status: ${response.statusCode}');
      print('Response body: ${response.body}');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 2),
        content: text(
            data: 'Failed to generate password: ${response.statusCode}',
            fs: 15,
            textColor: Colors.white,
            fw: FontWeight.w600),
        backgroundColor: Colors.red,
      ));
      throw Exception('Failed to generate password: ${response.statusCode}');
    }
  } catch (e) {
    print('Error occurred: $e');

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 2),
      content: text(
          data: e.toString(),
          fs: 15,
          textColor: Colors.white,
          fw: FontWeight.w600),
      backgroundColor: Colors.red,
    ));

    throw Exception('Failed to generate password: $e');
  }
}
