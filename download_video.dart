import 'package:dio/dio.dart';

Future<void> downloadVideo(String url) async {

  Dio dio = Dio();

  try {

    await dio.download(
      url,
      "/storage/emulated/0/Download/video.mp4",
    );

    print("Download Complete");

  } catch (e) {

    print("Download Failed: $e");

  }

}