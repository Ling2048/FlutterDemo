import 'package:json_annotation/json_annotation.dart';
import 'f.dart'; 
  
part 'r.g.dart';

@JsonSerializable()
class Result<T> extends Object {

  @JsonKey(name: 'Data')
  @_Converter()
  final T data;

  @JsonKey(name: 'Msg')
  final String msg;

  @JsonKey(name: 'ResultCode')
  final int resultCode;

  Result(this.data,this.msg,this.resultCode,);

  factory Result.fromJson(Map<String, dynamic> srcJson) => _$ResultFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

}

class _Converter<T> implements JsonConverter<T, Object> {
  const _Converter();

  @override
  T fromJson(Object json) {
    if (json is Map<String, dynamic> &&
        json.containsKey('Tem') &&
        json.containsKey('BgList')) {
      return Facility.fromJson(json) as T;
    }
    // This will only work if `json` is a native JSON type:
    //   num, String, bool, null, etc
    // *and* is assignable to `T`.
    return json as T;
  }

  @override
  Object toJson(T object) {
    // This will only work if `object` is a native JSON type:
    //   num, String, bool, null, etc
    // Or if it has a `toJson()` function`.
    return object;
  }
}

  

  
