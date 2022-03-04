import 'package:audio_service/audio_service.dart';
import 'package:audioplayers/audioplayers.dart' as audioplayers;

Future<AudioHandler> initAudioService() async {
  return await AudioService.init(
    builder: () => MyAudioHandler(),
    config: AudioServiceConfig(
      androidNotificationChannelId: 'com.mycompany.myapp.audio',
      androidNotificationChannelName: 'Audio Service Demo',
      androidNotificationOngoing: true,
      androidStopForegroundOnPause: true,
    ),
  );
}

class MyAudioHandler extends BaseAudioHandler {
  final _player = audioplayers.AudioPlayer();

  MyAudioHandler() {
    _player.setReleaseMode(audioplayers.ReleaseMode.LOOP);
  }

  @override
  Future<void> play() => _player.play(
      'https://firebasestorage.googleapis.com/v0/b/ambee-cloud.appspot.com/o/Sound%2Fshort.wav?alt=media&token=bd7cc97f-d3d8-490b-9aff-b92df304e145');
}
