import 'package:package_info_plus/package_info_plus.dart';

class PackageData {
  final String appName;
  final String packageName;
  final String version;
  final String buildNumber;

  PackageData({
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
  });

  static Future<PackageData> getInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return PackageData(
      appName: packageInfo.appName,
      packageName: packageInfo.packageName,
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
    );
  }
}
