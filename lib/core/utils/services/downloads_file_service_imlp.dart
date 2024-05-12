import 'dart:typed_data';

import 'package:stocktacking/core/utils/services/downloads_file_service.dart';

class DownloadsFileServiceImpl implements DownloadsFileService {

  final String _appFolderName;
  static const _androidDownloadsFolder = '/storage/emulated/0/Download/';

  const DownloadsFileServiceImpl({required String appFolderName}): _appFolderName = appFolderName;

  @override
  String get appDirectoryName => _appFolderName;
  @override
  String get fullAppDirectoryName => '$_androidDownloadsFolder$appDirectoryName';
  @override
  Future<String> get downloadsPath => Future.sync(() => _androidDownloadsFolder);

  @override
  Future<void> createDirectory() {
    // TODO: implement createDirectory
    throw UnimplementedError();
  }

  @override
  Future<void> downloadFileToDownloadsFolder(String fileName, ByteData byteData) {
    // TODO: implement downloadFileToDownloadsFolder
    throw UnimplementedError();
  }



  @override
  Future<void> goToFile(String fileName) {
    // TODO: implement goToFile
    throw UnimplementedError();
  }

  @override
  Future<bool> isDirectoryExist() {
    // TODO: implement isDirectoryExist
    throw UnimplementedError();
  }

  @override
  Future<bool> isFileExist(String fileName) {
    // TODO: implement isFileExist
    throw UnimplementedError();
  }


}