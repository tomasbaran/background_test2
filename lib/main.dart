import 'package:audio_service/audio_service.dart';
import 'package:background_test2/services/service_locator.dart';

void main() async {
  await setupServiceLocator();
  final _audioHandler = getIt<AudioHandler>();
  _audioHandler.play();
}
