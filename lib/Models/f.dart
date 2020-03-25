import 'package:json_annotation/json_annotation.dart';

part 'f.g.dart';

@JsonSerializable()
class Facility extends Object {

  @JsonKey(name: 'Tem')
  final String tem;

  @JsonKey(name: 'BgList')
  final List<BgList> bgList;

  @JsonKey(name: 'LocalInfo')
  final LocalInfo localInfo;

  @JsonKey(name: 'IsShowHelper')
  final int isShowHelper;

  @JsonKey(name: 'IsShowLocalInfo')
  final int isShowLocalInfo;

  @JsonKey(name: 'EmpowerCode')
  final String empowerCode;

  @JsonKey(name: 'NoticeStr')
  final String noticeStr;

  Facility(this.tem,this.bgList,this.localInfo,this.isShowHelper,this.isShowLocalInfo,this.empowerCode,this.noticeStr,);

  factory Facility.fromJson(Map<String, dynamic> srcJson) => _$FacilityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FacilityToJson(this);

}

  
@JsonSerializable()
class BgList extends Object {

  @JsonKey(name: 'Id')
  final int id;

  @JsonKey(name: 'Key')
  final String key;

  @JsonKey(name: 'Value')
  final String value;

  @JsonKey(name: 'Info')
  final String info;

  @JsonKey(name: 'Type')
  final int type;

  @JsonKey(name: 'CreateTime')
  final String createTime;

  BgList(this.id,this.key,this.value,this.info,this.type,this.createTime,);

  factory BgList.fromJson(Map<String, dynamic> srcJson) => _$BgListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BgListToJson(this);

}

  
@JsonSerializable()
class LocalInfo extends Object {

  @JsonKey(name: 'Extra')
  final List<Extra> extra;

  @JsonKey(name: 'screensavers')
  final Screensavers screensavers;

  @JsonKey(name: 'theme')
  final String theme;

  @JsonKey(name: 'btnicons')
  final Map<String, String> btnicons;

  @JsonKey(name: 'banners')
  final List<String> banners;

  @JsonKey(name: 'autoplaySpeed')
  final int autoplaySpeed;

  @JsonKey(name: 'logo')
  final String logo;

  @JsonKey(name: 'video1')
  final String video1;

  LocalInfo(this.extra,this.screensavers,this.theme,this.btnicons,this.banners,this.autoplaySpeed,this.logo,this.video1,);

  factory LocalInfo.fromJson(Map<String, dynamic> srcJson) => _$LocalInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LocalInfoToJson(this);

}

  
@JsonSerializable()
class Extra extends Object {

  @JsonKey(name: 'typeName')
  final String typeName;

  @JsonKey(name: 'img')
  final String img;

  @JsonKey(name: 'Id')
  final String id;

  @JsonKey(name: 'btns')
  final List<Btns> btns;

  Extra(this.typeName,this.img,this.id,this.btns,);

  factory Extra.fromJson(Map<String, dynamic> srcJson) => _$ExtraFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ExtraToJson(this);

}

  
@JsonSerializable()
class Btns extends Object {

  @JsonKey(name: 'Id')
  final int id;

  @JsonKey(name: 'typeName')
  final String typeName;

  @JsonKey(name: 'img')
  final String img;

  @JsonKey(name: 'url')
  final String url;

  @JsonKey(name: 'type')
  final int type;

  @JsonKey(name: 'mainId')
  final int mainId;

  Btns(this.id,this.typeName,this.img,this.url,this.type,this.mainId,);

  factory Btns.fromJson(Map<String, dynamic> srcJson) => _$BtnsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BtnsToJson(this);

}

  
@JsonSerializable()
class Screensavers extends Object {

  @JsonKey(name: 'imgs')
  final List<Imgs> imgs;

  @JsonKey(name: 'time')
  final int time;

  Screensavers(this.imgs,this.time,);

  factory Screensavers.fromJson(Map<String, dynamic> srcJson) => _$ScreensaversFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ScreensaversToJson(this);

}

  
@JsonSerializable()
class Imgs extends Object {

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'img')
  final String img;

  Imgs(this.id,this.img,);

  factory Imgs.fromJson(Map<String, dynamic> srcJson) => _$ImgsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ImgsToJson(this);

}
