import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barcode Scanner App',
      home: BarcodeScannerPage(),
    );
  }
}

class BarcodeScannerPage extends StatefulWidget {
  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  Color _txtFieldColor = Colors.pink;

  final _barcodes = <String>[];
  final _barcodeTextController = TextEditingController();
  late FocusNode _focusNode;

  // Define a ScrollController and attach it to the ListView
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    hideKeyboard();
    _focusNode = FocusNode();
    _focusNode.requestFocus();
    // _focusNode.addListener(() {
    //   if (!_focusNode.hasFocus) {
    //     // Hide the keyboard
    //     SystemChannels.textInput.invokeMethod('TextInput.hide');
    //   }
    // });
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   // Schedule the call to requestFocus() after the widget is built and mounted
    //   _focusNode.requestFocus();
    // });

    // Request focus on the text field
    // Future.delayed(Duration.zero, () {
    //   FocusScope.of(context).requestFocus(_focusNode);
    // });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _barcodeTextController.dispose();
    super.dispose();
  }

  void _handleBarcodeScanned(String barcode) {
    setState(() {
      _barcodes.add(barcode);
      _barcodeTextController.clear();
      // Scroll to the last item in the ListView
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      // Wait for the ListView to settle, then scroll further down
      Future.delayed(Duration(milliseconds: 250), () {
        double targetScrollExtent = _scrollController.position.maxScrollExtent + 1000.0;
        _scrollController.animateTo(
          targetScrollExtent,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeOut,
        );
      });
    });
  }

  void hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Barcode Scanner App'),
        ),
        body: GestureDetector(
          onTap: (){
            hideKeyboard();
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onDoubleTap: (){
                    print("Double tapped");
                  },
                  child: TextField(
                    // autofocus: true,
                    showCursor: false,
                    keyboardType: TextInputType.visiblePassword,
                    focusNode: _focusNode,
                    controller: _barcodeTextController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: _txtFieldColor,
                      hintText: 'Scan Barcode',
                    ),
                    onTap: (){
                      hideKeyboard();
                      setState(() {
                        _txtFieldColor = Colors.green;
                      });
                    },
                    onChanged: (value) async {
                      if (value.isNotEmpty) {
                        _handleBarcodeScanned(value);
                        hideKeyboard();
                      }
                    },
                  ),
                ),
                Expanded(
                  // Attach the ScrollController to the ListView
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: _barcodes.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_barcodes[index]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}