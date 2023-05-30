class AppConfig {
  final String? BASE_API_URL;
  final String? BASE_IMAGE_API_URL = "https://image.tmdb.org/t/p/w500";
  final String? API_KEY;

  AppConfig({this.BASE_API_URL, BASE_IMAGE_API_URL, this.API_KEY});
}
