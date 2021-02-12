

abstract class WeatherApi {
  Future<Location> getWeather(Location location);
  Future<Location> getLocation(String city);
}