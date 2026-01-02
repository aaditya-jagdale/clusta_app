import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract final class ApiConsts {
  static final String baseUrl = dotenv.env['BASE_URL']!;
  static final String graphId = dotenv.env['GRAPH_ID']!;
  static final String threads = "/threads";
  static final String threadCount = "$threads/count";
  static final String threadSearch = "$threads/search";
}
