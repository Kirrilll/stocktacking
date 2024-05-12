import 'dart:typed_data';

abstract class DownloadsFileService {
  String get appDirectoryName;
  String get fullAppDirectoryName;
  Future<String> get downloadsPath;

  /// Checks if directory exist in android folder
  /// directory - full directory to app folder in downloads,
  /// if null - set fullAppDirectoryName
  Future<bool> isDirectoryExist();


  Future<void> createDirectory();
  Future<bool> isFileExist(String fileName);
  Future<void> downloadFileToDownloadsFolder(String fileName, ByteData byteData);
  Future<void> goToFile(String fileName);
}