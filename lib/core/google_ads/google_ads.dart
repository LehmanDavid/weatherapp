import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MyAdd extends StatefulWidget {
  const MyAdd({Key? key}) : super(key: key);

  @override
  State<MyAdd> createState() => _MyAddState();
}

class _MyAddState extends State<MyAdd> {
  late BannerAd _bannerAd;

  bool _isBannerReady = false;

  @override
  void initState() {
    super.initState();
    _bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdHelper().bannerAdUintId,
        listener: BannerAdListener(onAdLoaded: (_) {
          setState(() {
            _isBannerReady = true;
          });
        }, onAdFailedToLoad: (ad, error) {
          _isBannerReady = false;
          ad.dispose();
        }),
        request: const AdRequest())
      ..load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isBannerReady
            ? Container(
                color: Colors.amber,
                height: _bannerAd.size.height.toDouble(),
                width: _bannerAd.size.width.toDouble(),
                child: AdWidget(ad: _bannerAd),
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}

class AdHelper {
  String get bannerAdUintId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6113881784001828/4530297360';
    } else {
      throw UnsupportedError('Unsopported Platform');
    }
  }

  String get interestInitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6113881784001828/4530297360';
    } else {
      throw UnsupportedError('Unsopported Platform');
    }
  }
}
