part of 'pages.dart';

class ViewFormPage extends StatefulWidget {
  const ViewFormPage({Key? key}) : super(key: key);

  @override
  _ViewFormPageState createState() => _ViewFormPageState();
}

const int maxFailedLoadAttempts = 3;

class _ViewFormPageState extends State<ViewFormPage> {
  /* static final AdRequest request = AdRequest(
    keywords: <String>['foo', 'bar'],
    contentUrl: 'http://foo.com/bar.html',
    nonPersonalizedAds: true,
  );
  InterstitialAd? _interstitialAd;
  int _numInterstitialLoadAttempts = 0;
 */
  @override
  void initState() {
    loadPdf();
    super.initState();
  }

  final sampleUrl =
      'https://res.cloudinary.com/negocioexitoso-online/image/upload/v1657055298/formularios/Cocientes_notables_zkuuga.pdf';

  String? pdfFlePath;

  Future<String> downloadAndSavePdf() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/sample.pdf');
    /* if (await file.exists()) {
      return file.path;
    } */
    final response = await http.get(Uri.parse(sampleUrl));
    await file.writeAsBytes(response.bodyBytes);
    return file.path;
  }

  void loadPdf() async {
    pdfFlePath = await downloadAndSavePdf();
    print(pdfFlePath);
    setState(() {});
  }

  /* void _createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: Platform.isAndroid
            ? 'ca-app-pub-3940256099942544/1033173712'
            : 'ca-app-pub-3940256099942544/4411468910',
        request: request,
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            _interstitialAd = ad;
            _numInterstitialLoadAttempts = 0;
            _interstitialAd!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            _interstitialAd = null;
            if (_numInterstitialLoadAttempts < maxFailedLoadAttempts) {
              _createInterstitialAd();
            }
          },
        ));
  }

  void _showInterstitialAd() {
    if (_interstitialAd == null) {
      print('Warning: attempt to show interstitial before loaded.');
      return;
    }
    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          print('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        _createInterstitialAd();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        _createInterstitialAd();
      },
    );
    _interstitialAd!.show();
    _interstitialAd = null;
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exponentes'),
      ),
      /* backgroundColor: Colors.black, */
      body: Center(
        child: Column(
          children: <Widget>[
            /* ElevatedButton(
              child: Text("Descargar pdf"),
              onPressed: () async {
                final taskId = await FlutterDownloader.enqueue(
                  url: sampleUrl,
                  savedDir:
                      'the path of directory where you want to save downloaded files',
                  showNotification:
                      true, // show download progress in status bar (for Android)
                  openFileFromNotification:
                      true, // click on notification to open downloaded file (for Android)
                );
              },
            ), */
            if (pdfFlePath != null)
              Expanded(
                child: PdfView(path: pdfFlePath!),
              )
            else
              const Center(
                child: CircularProgressIndicator(),
              ),
          ],
        ),
      ),
      floatingActionButton: pdfFlePath != null
          ? FloatingActionButton(
              onPressed: () {
                /* Navigator.pushNamed(context, '/homeworks'); */
                /* _createInterstitialAd(); */
              },
              child: Icon(Icons.download),
              tooltip: 'Descargar',
            )
          : null,
    );
  }
}
