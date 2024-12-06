import 'dart:async';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_preload_videos/core/constants.dart';
import 'package:flutter_preload_videos/service/navigation_service.dart';
import 'package:flutter_preload_videos/video_page.dart';
import 'package:injectable/injectable.dart';

import 'service/api_service.dart';
import 'bloc/preload_bloc.dart';
import 'core/build_context.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(MyApp());
  Client().method();
}

/// Isolate to fetch videos in the background so that the video experience is not disturbed.
/// Without isolate, the video will be paused whenever there is an API call
/// because the main thread will be busy fetching new video URLs.
///
/// https://blog.codemagic.io/understanding-flutter-isolates/
Future createIsolate(int index) async {
  // Set loading to true
  BlocProvider.of<PreloadBloc>(context, listen: false)
      .add(PreloadEvent.setLoading());

  ReceivePort mainReceivePort = ReceivePort();

  Isolate.spawn<SendPort>(getVideosTask, mainReceivePort.sendPort);

  SendPort isolateSendPort = await mainReceivePort.first;

  ReceivePort isolateResponseReceivePort = ReceivePort();

  isolateSendPort.send([index, isolateResponseReceivePort.sendPort]);

  final isolateResponse = await isolateResponseReceivePort.first;
  final _urls = isolateResponse;

  // Update new urls
  BlocProvider.of<PreloadBloc>(context, listen: false)
      .add(PreloadEvent.updateUrls(_urls));
}

void getVideosTask(SendPort mySendPort) async {
  ReceivePort isolateReceivePort = ReceivePort();

  mySendPort.send(isolateReceivePort.sendPort);

  await for (var message in isolateReceivePort) {
    if (message is List) {
      final int index = message[0];

      final SendPort isolateResponseSendPort = message[1];

      final List<String> _urls =
          await ApiService.getVideos(id: index + kPreloadLimit);

      isolateResponseSendPort.send(_urls);
    }
  }
}

class MyApp extends StatelessWidget {
  final NavigationService _navigationService = getIt<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PreloadBloc>()..add(PreloadEvent.getVideosFromApi()),
      child: MaterialApp(
        key: _navigationService.navigationKey,
        debugShowCheckedModeBanner: false,
        home: VideoPage(),
      ),
    );
  }
}

class DDD extends StatefulWidget {
  const DDD({super.key});

  @override
  State<DDD> createState() => _DDDState();
}

class _DDDState extends State<DDD> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void activate() {
    // TODO: implement activate
    super.activate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant DDD oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
}

abstract class Super {
  void method() {
    print("Super");
  }
}

class MySuper implements Super {
  @override
  void method() {
    print('MySuper');
  }
}

mixin MyMixin1 on Super {
  @override
  void method() {
    super.method();
    print('MyMixin1');
  }
}

mixin MyMixin2 on Super {
  @override
  void method() {
    super.method();
    print('MyMixin2');
  }
}

class Client extends MySuper with MyMixin1, MyMixin2 {
  @override
  void method() {
    super.method();
    print('Client');
  }
}

Future createIsolate2() async {
  /// Where I listen to the message from Mike's port
  ReceivePort myReceivePort = ReceivePort();

  /// Spawn an isolate, passing my receivePort sendPort
  Isolate.spawn<SendPort>(heavyComputationTask, myReceivePort.sendPort);

  /// Mike sends a senderPort for me to enable me to send him a message via his sendPort.
  /// I receive Mike's senderPort via my receivePort
  SendPort mikeSendPort = await myReceivePort.first;

  /// I set up another receivePort to receive Mike's response.
  ReceivePort mikeResponseReceivePort = ReceivePort();

  /// I send Mike a message using mikeSendPort. I send him a list,
  /// which includes my message, preferred type of coffee, and finally
  /// a sendPort from mikeResponseReceivePort that enables Mike to send a message back to me.
  mikeSendPort.send([
    "Mike, I'm taking an Espresso coffee",
    "Espresso",
    mikeResponseReceivePort.sendPort
  ]);

  /// I get Mike's response by listening to mikeResponseReceivePort
  final mikeResponse = await mikeResponseReceivePort.first;
  print("MIKE'S RESPONSE: ==== $mikeResponse");
}

void heavyComputationTask(SendPort mySendPort) async {
  /// Set up a receiver port for Mike
  /// 创建一个接收端口，
  ReceivePort mikeReceivePort = ReceivePort();

  /// Send Mike receivePort sendPort via mySendPort
  /// 来自于与主隔离的 sendPort,发送 子线程中的sendPort 给主线程
  mySendPort.send(mikeReceivePort.sendPort);

  /// Listen to messages sent to Mike's receive port
  await for (var message in mikeReceivePort) {
    if (message is List) {
      final myMessage = message[0];
      final coffeeType = message[1];
      print(myMessage);

      /// Get Mike's response sendPort
      final SendPort mikeResponseSendPort = message[2];

      /// Send Mike's response via mikeResponseSendPort
      mikeResponseSendPort
          .send("You're taking $coffeeType, and I'm taking Latte");
    }
  }
}
