// rest/2.0/xpan/file

class FileDetailInfoList {
  dynamic errmsg;
  dynamic errno;
  dynamic requestId;
  List<FileDetailInfo> list;

  FileDetailInfoList({required this.errmsg, required this.errno, required this.requestId, required this.list});

  static FileDetailInfoList fromJson(Map<String, dynamic> json) {
    return FileDetailInfoList(
      errmsg: json['errmsg'],
      errno: json['errno'],
      requestId: json['request_id'],
      list: (json['list'] as List).map((e) => FileDetailInfo.fromJson(e)).toList(),
    );
  }
}

class FileDetailInfo {
  dynamic width;
  dynamic height;
  dynamic dlink;
  dynamic fs_id;
  dynamic filename;
  dynamic isdir;
  dynamic size;
  dynamic oper_id;
  dynamic md5;
  dynamic server_ctime;
  dynamic server_mtime;

  FileDetailInfo({
    this.width,
    this.height,
    this.dlink,
    this.fs_id,
    this.filename,
    this.isdir,
    this.size,
    this.oper_id,
    this.md5,
    this.server_ctime,
    this.server_mtime,
  });

  static FileDetailInfo fromJson(Map<String, dynamic> json) {
    return FileDetailInfo(
      width: json["width"],
      height: json["height"],
      dlink: json["dlink"],
      fs_id: json["fs_id"],
      filename: json["filename"],
      isdir: json["isdir"],
      size: json["size"],
      oper_id: json["oper_id"],
      md5: json["md5"],
      server_ctime: json["server_ctime"],
      server_mtime: json["server_mtime"],
    );
  }

  Map toJson() {
    return {
      'width': width,
      'height': height,
      'dlink': dlink,
      'fs_id': fs_id,
      'filename': filename,
      'isdir': isdir,
      'size': size,
      'oper_id': oper_id,
      'md5': md5,
      'server_ctime': server_ctime,
      'server_mtime': server_mtime,
    };
  }
}
