import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'infrastructure/application/weather_notifier.dart';
import 'infrastructure/weather_repository.dart';

final weatherRepositoryProvider = Provider<WeatherRepository>(
  (ref) => FakeWeatherRepository(),
);

final weatherNotifierProvider = StateNotifierProvider(
  (ref) => WeatherNotifier(ref.watch(weatherRepositoryProvider)),
);
