// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'r.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result<T> _$ResultFromJson<T>(Map<String, dynamic> json) {
  return Result<T>(
    _Converter<T>().fromJson(json['Data']),
    json['Msg'] as String,
    json['ResultCode'] as int,
  );
}

Map<String, dynamic> _$ResultToJson<T>(Result<T> instance) => <String, dynamic>{
      'Data': _Converter<T>().toJson(instance.data),
      'Msg': instance.msg,
      'ResultCode': instance.resultCode,
    };
