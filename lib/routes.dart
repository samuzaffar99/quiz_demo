
import 'package:flutter/material.dart';

import 'pages/quiz.dart';

// variable for our route names
const String loginPage = 'login';
const String quizPage = 'quiz';
const String homePage = 'home';
const String registerPage = 'register';

// controller function with switch statement to control page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case quizPage:
      return MaterialPageRoute(builder: (context) => const QuizPage());
    // case homePage:
    //   return MaterialPageRoute(builder: (context) => HomePage());
    // case registerPage:
    //   return MaterialPageRoute(builder: (context) => RegisterPage());
    default:
      throw ('this route name does not exist');
  }
}