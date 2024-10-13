import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constantes {
  static String apiUrl = dotenv.env['fasfa']!;
}
