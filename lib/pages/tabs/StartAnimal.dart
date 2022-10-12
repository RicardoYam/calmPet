import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:noise_meter/noise_meter.dart';

class StartAnimal extends StatefulWidget {
  const StartAnimal({Key? key}) : super(key: key);

  @override
  State<StartAnimal> createState() => _StartAnimalState();
}

class _StartAnimalState extends State<StartAnimal> {
  double meanDb = 0;
  bool _isRecording = false;
  StreamSubscription<NoiseReading>? _noiseSubscription;
  late NoiseMeter _noiseMeter;
  DateTime now = DateTime.now();
  DateTime init = DateTime.now();

  int showsUntil = 0; // shows high image until time
  int lastNoise = 0; // save the last noise time
  int ignore = 3; // ignore three times

  @override
  void initState() {
    super.initState();
    _noiseMeter = new NoiseMeter(onError);
    start();
  }

  @override
  void dispose() {
    _noiseSubscription?.cancel();
    super.dispose();
  }

  void onData(NoiseReading noiseReading) {
    setState(() {
      if (!_isRecording) {
        _isRecording = true;
      }

      meanDb = noiseReading.meanDecibel;
      now = DateTime.now();

      if (lastNoise == 0) {
        if (time2Num(now) - time2Num(init) > 10) {
          stop();

          Navigator.pushNamed(context, '/video');
        }
      } else {
        if (time2Num(now) - lastNoise > 10) {
          stop();

          Navigator.pushNamed(context, '/video');
        }
      }
    });
  }

  void onError(Object error) {
    print(error.toString());
    _isRecording = false;
  }

  void start() async {
    try {
      _noiseSubscription = _noiseMeter.noiseStream.listen(onData);
    } catch (err) {
      print(err);
    }
  }

  void stop() async {
    try {
      if (_noiseSubscription != null) {
        _noiseSubscription!.cancel();
        _noiseSubscription = null;
      }
      setState(() {
        _isRecording = false;
      });
    } catch (err) {
      print('stopRecorder error: $err');
    }
    int showsUntil = 0;
    int lastNoise = 0;
  }

  int time2Num(DateTime now) {
    return (now.hour * 60 * 60 + now.minute * 60 + now.second);
  }

  bool checkNoise() {
    if (num.parse(meanDb.toStringAsFixed(2)) > 200) {
      if ((ignore != 0) && (time2Num(now) > showsUntil)) {
        // ignore three noise point
        ignore = ignore - 1;
        return false;
      }
      showsUntil = time2Num(now) + 3;
      lastNoise = time2Num(now);
      return true;
    } else if (time2Num(now) < showsUntil) {
      return true;
    } else {
      if (time2Num(now) - lastNoise > 6) {
        ignore = 3;
      }
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/startbg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.width * 0.4,
                  decoration: const BoxDecoration(
                    // color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("images/qipao.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: Text(
                    checkNoise() ? "HIGH" : "Well Down!",
                    style: const TextStyle(fontSize: 18),
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.width * 0.6,
                child: Image.asset(
                    checkNoise() ? "images/anini.png" : "images/animal1.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
