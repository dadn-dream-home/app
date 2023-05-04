///
//  Generated code. Do not modify.
//  source: backend.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class FeedType extends $pb.ProtobufEnum {
  static const FeedType TEMPERATURE = FeedType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEMPERATURE');
  static const FeedType HUMIDITY = FeedType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HUMIDITY');
  static const FeedType LIGHT = FeedType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIGHT');

  static const $core.List<FeedType> values = <FeedType> [
    TEMPERATURE,
    HUMIDITY,
    LIGHT,
  ];

  static final $core.Map<$core.int, FeedType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FeedType? valueOf($core.int value) => _byValue[value];

  const FeedType._($core.int v, $core.String n) : super(v, n);
}

