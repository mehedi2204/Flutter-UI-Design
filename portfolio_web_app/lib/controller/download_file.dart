import 'dart:io' show Directory, File, Platform;
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> downloadFile(BuildContext context, String assetPath, String fileName) async {
  try {
    ByteData data = await rootBundle.load(assetPath);
    List<int> bytes = data.buffer.asUint8List();

    // Determine directory based on platform
    late String filePath;

    if (Platform.isAndroid || Platform.isIOS) {
      final directory = await getDownloadsDirectory();
      filePath = '${directory!.path}/$fileName';
    } else if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      final directory = await getDownloadsDirectory();
      filePath = '${directory!.path}/$fileName';
    } else {
      throw UnsupportedError('Platform not supported');
    }

    final file = File(filePath);
    await file.writeAsBytes(bytes);

    // Show toast with buttons
    _showToastWithButtons(context, 'File saved at: $filePath', filePath);
  } catch (e) {
    // Handle errors
    print('Error downloading file: $e');
    _showToast(context, 'Error downloading file: $e', isError: true);
  }
}


void _showToastWithButtons(BuildContext context, String message, String filePath) {
  showPlatformDialog(
    context: context,
    builder: (_) => PlatformAlertDialog(
      title: Text('Download Complete'),
      content: Text(message),
      actions: <Widget>[
        PlatformDialogAction(
          child: PlatformText('Close'),
          onPressed: () => Navigator.pop(context),
        ),
        PlatformDialogAction(
          child: PlatformText('Open'),
          onPressed: () async {
            final file = File(filePath);
            if (await file.exists()) {
              // Check if the file is an APK and the platform is Android
              if (Platform.isAndroid && filePath.toLowerCase().endsWith('.apk')) {
                // Request permission to install unknown apps
                bool permissionGranted = await requestInstallPermission();
                if (!permissionGranted) {
                  _showToast(context, 'Permission denied to install APK.');
                  return;
                }
                // Install APK
                await OpenFile.open(filePath, type: 'application/vnd.android.package-archive');
              } else {
                // Open file
                await OpenFile.open(filePath);
              }
            } else {
              print('File does not exist');
            }
            Navigator.pop(context); // Close the dialog
          },
        ),
      ],
    ),
  );
}

Future<bool> requestInstallPermission() async {
  if (Platform.isAndroid) {
    PermissionStatus status = await Permission.requestInstallPackages.request();
    return status == PermissionStatus.granted;
  }
  return true; // Return true for non-Android platforms
}

void _showToast(BuildContext context, String message, {bool isError = false}) {
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

void _openFile(String filePath) async {
  final file = File(filePath);
  if (await file.exists()) {
    await OpenFile.open(filePath);
  } else {
    print('File does not exist');
  }
}
