import 'dart:io' show File, Platform;
import 'dart:typed_data';
import 'package:android_intent_plus/android_intent.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:path_provider/path_provider.dart';

Future<void> downloadFile(BuildContext context, String assetPath, String fileName) async {
  try {
    ByteData data = await rootBundle.load(assetPath);
    List<int> bytes = data.buffer.asUint8List();

    // Determine directory based on platform
    late String filePath;

    if (Platform.isAndroid || Platform.isIOS) {
      final directory = await getExternalStorageDirectory();
      filePath = '${directory!.path}/$fileName';
    } else if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      final directory = await getDownloadsDirectory();
      filePath = '${directory!.path}/$fileName';
    } else {
      throw UnsupportedError('Platform not supported');
    }

    final file = File(filePath);
    await file.writeAsBytes(bytes);

    // Save the file using file_saver
    if (Platform.isAndroid || Platform.isIOS) {
      await FileSaver.instance.saveFile(
        name: '$fileName',
      );
      if (Platform.isAndroid && fileName.toLowerCase().endsWith('.apk')) {
        _installApk(filePath);
      } else {
        _showToast(context, 'File saved at: $filePath');
      }
    } else {
      // For desktop platforms, show a dialog instead of a toast
      showPlatformDialog(
        context: context,
        builder: (_) => PlatformAlertDialog(
          title: Text('Download Complete'),
          content: Text('File saved at: $filePath'),
          actions: <Widget>[
            PlatformDialogAction(
              child: PlatformText('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }
  } catch (e) {
    // Handle errors
    print('Error downloading file: $e');
    _showToast(context, 'Error downloading file: $e', isError: true);
  }
}

void _showToast(BuildContext context, String message, {bool isError = false}) {
  if (Platform.isAndroid || Platform.isIOS) {
    showPlatformDialog(
      context: context,
      builder: (_) => PlatformAlertDialog(
        title: Text(isError ? 'Error' : 'Success'),
        content: Text(message),
        actions: <Widget>[
          PlatformDialogAction(
            child: PlatformText('OK'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  } else {
    // For desktop platforms, show a dialog instead of a toast
    showPlatformDialog(
      context: context,
      builder: (_) => PlatformAlertDialog(
        title: Text(isError ? 'Error' : 'Success'),
        content: Text(message),
        actions: <Widget>[
          PlatformDialogAction(
            child: PlatformText('OK'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

void _installApk(String filePath) {
  final intent = AndroidIntent(
    action: 'action_view',
    data: 'file://$filePath',
    type: 'application/vnd.android.package-archive',
  );
  intent.launch();
}