// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'f.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Facility _$FacilityFromJson(Map<String, dynamic> json) {
  return Facility(
    json['Tem'] as String,
    (json['BgList'] as List)
        ?.map((e) =>
            e == null ? null : BgList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['LocalInfo'] == null
        ? null
        : LocalInfo.fromJson(json['LocalInfo'] as Map<String, dynamic>),
    json['IsShowHelper'] as int,
    json['IsShowLocalInfo'] as int,
    json['EmpowerCode'] as String,
    json['NoticeStr'] as String,
  );
}

Map<String, dynamic> _$FacilityToJson(Facility instance) => <String, dynamic>{
      'Tem': instance.tem,
      'BgList': instance.bgList,
      'LocalInfo': instance.localInfo,
      'IsShowHelper': instance.isShowHelper,
      'IsShowLocalInfo': instance.isShowLocalInfo,
      'EmpowerCode': instance.empowerCode,
      'NoticeStr': instance.noticeStr,
    };

BgList _$BgListFromJson(Map<String, dynamic> json) {
  return BgList(
    json['Id'] as int,
    json['Key'] as String,
    json['Value'] as String,
    json['Info'] as String,
    json['Type'] as int,
    json['CreateTime'] as String,
  );
}

Map<String, dynamic> _$BgListToJson(BgList instance) => <String, dynamic>{
      'Id': instance.id,
      'Key': instance.key,
      'Value': instance.value,
      'Info': instance.info,
      'Type': instance.type,
      'CreateTime': instance.createTime,
    };

LocalInfo _$LocalInfoFromJson(Map<String, dynamic> json) {
  return LocalInfo(
    (json['Extra'] as List)
        ?.map(
            (e) => e == null ? null : Extra.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['screensavers'] == null
        ? null
        : Screensavers.fromJson(json['screensavers'] as Map<String, dynamic>),
    json['theme'] as String,
    (json['btnicons'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    (json['banners'] as List)?.map((e) => e as String)?.toList(),
    json['autoplaySpeed'] as int,
    json['logo'] as String,
    json['video1'] as String,
  );
}

Map<String, dynamic> _$LocalInfoToJson(LocalInfo instance) => <String, dynamic>{
      'Extra': instance.extra,
      'screensavers': instance.screensavers,
      'theme': instance.theme,
      'btnicons': instance.btnicons,
      'banners': instance.banners,
      'autoplaySpeed': instance.autoplaySpeed,
      'logo': instance.logo,
      'video1': instance.video1,
    };

Extra _$ExtraFromJson(Map<String, dynamic> json) {
  return Extra(
    json['typeName'] as String,
    json['img'] as String,
    json['Id'] as String,
    (json['btns'] as List)
        ?.map(
            (e) => e == null ? null : Btns.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExtraToJson(Extra instance) => <String, dynamic>{
      'typeName': instance.typeName,
      'img': instance.img,
      'Id': instance.id,
      'btns': instance.btns,
    };

Btns _$BtnsFromJson(Map<String, dynamic> json) {
  return Btns(
    json['Id'] as int,
    json['typeName'] as String,
    json['img'] as String,
    json['url'] as String,
    json['type'] as int,
    json['mainId'] as int,
  );
}

Map<String, dynamic> _$BtnsToJson(Btns instance) => <String, dynamic>{
      'Id': instance.id,
      'typeName': instance.typeName,
      'img': instance.img,
      'url': instance.url,
      'type': instance.type,
      'mainId': instance.mainId,
    };

Screensavers _$ScreensaversFromJson(Map<String, dynamic> json) {
  return Screensavers(
    (json['imgs'] as List)
        ?.map(
            (e) => e == null ? null : Imgs.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['time'] as int,
  );
}

Map<String, dynamic> _$ScreensaversToJson(Screensavers instance) =>
    <String, dynamic>{
      'imgs': instance.imgs,
      'time': instance.time,
    };

Imgs _$ImgsFromJson(Map<String, dynamic> json) {
  return Imgs(
    json['id'] as int,
    json['img'] as String,
  );
}

Map<String, dynamic> _$ImgsToJson(Imgs instance) => <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
    };
