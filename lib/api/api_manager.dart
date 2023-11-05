import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies/api/api_consts.dart';

import '../model/Movies.dart';
import '../model/PopularMoviesResponse.dart';
class ApiManager {
  // https://api.themoviedb.org/3/movie/popular?apikey=cd9985046f0b273b29fbc67195cca68e
  static Future<PopularMoviesResponse?> getPopMov() async {
    Uri url = Uri.https(ApiCostants.baseUrl, ApiCostants.popMovApi, {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjZDk5ODUwNDZmMGIyNzNiMjlmYmM2NzE5NWNjYTY4ZSIsInN1YiI6IjY1MzkxOTY0YWUzNjY4MDBlYTljZWE2MSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.y3WNBPUesRM3hmK1h9Cc05dWax8kcpHgZ2dSxLYfKww',
    });
    try {
      var response = await http.get(url, headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjZDk5ODUwNDZmMGIyNzNiMjlmYmM2NzE5NWNjYTY4ZSIsInN1YiI6IjY1MzkxOTY0YWUzNjY4MDBlYTljZWE2MSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.y3WNBPUesRM3hmK1h9Cc05dWax8kcpHgZ2dSxLYfKww'
      });
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      print('jsonconverted');
      return PopularMoviesResponse.fromJson(json);
    } catch (e) {
      print('sth wrong');
      throw e;
    }
  }
  static Future<Movies?> getsources(String movieId) async {
    Uri url = Uri.https(ApiCostants.BaseUrl,ApiCostants.MovApi+movieId, {
      'Authorization':
      'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0NWRlNDBmMDE1MjMwMzQzMWE4NzJkZjc2MjExOTk2NyIsInN1YiI6IjY1NDAxOTE5NTA3MzNjMDBjNTM2NGU0YyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.63VZ2aTvKv2v185XtKAuYhrvGCWx-OQAErv07EL_Dc0'
    });
    try {
      var response = await http.get(url, headers: {
        'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0NWRlNDBmMDE1MjMwMzQzMWE4NzJkZjc2MjExOTk2NyIsInN1YiI6IjY1NDAxOTE5NTA3MzNjMDBjNTM2NGU0YyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.63VZ2aTvKv2v185XtKAuYhrvGCWx-OQAErv07EL_Dc0'
      });
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      print('jsonconverted');
      return Movies.fromJson(json);
    } catch (e) {
      print('sth wrong');
      throw e;
    }
  }

}
