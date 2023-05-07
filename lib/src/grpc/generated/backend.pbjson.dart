///
//  Generated code. Do not modify.
//  source: backend.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use feedTypeDescriptor instead')
const FeedType$json = const {
  '1': 'FeedType',
  '2': const [
    const {'1': 'TEMPERATURE', '2': 0},
    const {'1': 'HUMIDITY', '2': 1},
    const {'1': 'LIGHT', '2': 2},
  ],
};

/// Descriptor for `FeedType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List feedTypeDescriptor = $convert.base64Decode('CghGZWVkVHlwZRIPCgtURU1QRVJBVFVSRRAAEgwKCEhVTUlESVRZEAESCQoFTElHSFQQAg==');
@$core.Deprecated('Use streamSensorValuesRequestDescriptor instead')
const StreamSensorValuesRequest$json = const {
  '1': 'StreamSensorValuesRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `StreamSensorValuesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamSensorValuesRequestDescriptor = $convert.base64Decode('ChlTdHJlYW1TZW5zb3JWYWx1ZXNSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use streamSensorValuesResponseDescriptor instead')
const StreamSensorValuesResponse$json = const {
  '1': 'StreamSensorValuesResponse',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 2, '10': 'value'},
  ],
};

/// Descriptor for `StreamSensorValuesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamSensorValuesResponseDescriptor = $convert.base64Decode('ChpTdHJlYW1TZW5zb3JWYWx1ZXNSZXNwb25zZRIUCgV2YWx1ZRgBIAEoAlIFdmFsdWU=');
@$core.Deprecated('Use streamActuatorStatesRequestDescriptor instead')
const StreamActuatorStatesRequest$json = const {
  '1': 'StreamActuatorStatesRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `StreamActuatorStatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamActuatorStatesRequestDescriptor = $convert.base64Decode('ChtTdHJlYW1BY3R1YXRvclN0YXRlc1JlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use streamActuatorStatesResponseDescriptor instead')
const StreamActuatorStatesResponse$json = const {
  '1': 'StreamActuatorStatesResponse',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 8, '10': 'state'},
  ],
};

/// Descriptor for `StreamActuatorStatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamActuatorStatesResponseDescriptor = $convert.base64Decode('ChxTdHJlYW1BY3R1YXRvclN0YXRlc1Jlc3BvbnNlEhQKBXN0YXRlGAEgASgIUgVzdGF0ZQ==');
@$core.Deprecated('Use streamFeedsChangesRequestDescriptor instead')
const StreamFeedsChangesRequest$json = const {
  '1': 'StreamFeedsChangesRequest',
};

/// Descriptor for `StreamFeedsChangesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamFeedsChangesRequestDescriptor = $convert.base64Decode('ChlTdHJlYW1GZWVkc0NoYW5nZXNSZXF1ZXN0');
@$core.Deprecated('Use streamFeedsChangesResponseDescriptor instead')
const StreamFeedsChangesResponse$json = const {
  '1': 'StreamFeedsChangesResponse',
  '2': const [
    const {'1': 'change', '3': 1, '4': 1, '5': 11, '6': '.protobuf.FeedsChange', '10': 'change'},
  ],
};

/// Descriptor for `StreamFeedsChangesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamFeedsChangesResponseDescriptor = $convert.base64Decode('ChpTdHJlYW1GZWVkc0NoYW5nZXNSZXNwb25zZRItCgZjaGFuZ2UYASABKAsyFS5wcm90b2J1Zi5GZWVkc0NoYW5nZVIGY2hhbmdl');
@$core.Deprecated('Use feedsChangeDescriptor instead')
const FeedsChange$json = const {
  '1': 'FeedsChange',
  '2': const [
    const {'1': 'added', '3': 1, '4': 3, '5': 11, '6': '.protobuf.Feed', '10': 'added'},
    const {'1': 'removed', '3': 2, '4': 3, '5': 9, '10': 'removed'},
  ],
};

/// Descriptor for `FeedsChange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedsChangeDescriptor = $convert.base64Decode('CgtGZWVkc0NoYW5nZRIkCgVhZGRlZBgBIAMoCzIOLnByb3RvYnVmLkZlZWRSBWFkZGVkEhgKB3JlbW92ZWQYAiADKAlSB3JlbW92ZWQ=');
@$core.Deprecated('Use createFeedRequestDescriptor instead')
const CreateFeedRequest$json = const {
  '1': 'CreateFeedRequest',
  '2': const [
    const {'1': 'feed', '3': 1, '4': 1, '5': 11, '6': '.protobuf.Feed', '10': 'feed'},
  ],
};

/// Descriptor for `CreateFeedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFeedRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVGZWVkUmVxdWVzdBIiCgRmZWVkGAEgASgLMg4ucHJvdG9idWYuRmVlZFIEZmVlZA==');
@$core.Deprecated('Use createFeedResponseDescriptor instead')
const CreateFeedResponse$json = const {
  '1': 'CreateFeedResponse',
};

/// Descriptor for `CreateFeedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFeedResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVGZWVkUmVzcG9uc2U=');
@$core.Deprecated('Use deleteFeedRequestDescriptor instead')
const DeleteFeedRequest$json = const {
  '1': 'DeleteFeedRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteFeedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFeedRequestDescriptor = $convert.base64Decode('ChFEZWxldGVGZWVkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use deleteFeedResponseDescriptor instead')
const DeleteFeedResponse$json = const {
  '1': 'DeleteFeedResponse',
};

/// Descriptor for `DeleteFeedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFeedResponseDescriptor = $convert.base64Decode('ChJEZWxldGVGZWVkUmVzcG9uc2U=');
@$core.Deprecated('Use setActuatorStateRequestDescriptor instead')
const SetActuatorStateRequest$json = const {
  '1': 'SetActuatorStateRequest',
  '2': const [
    const {'1': 'feed', '3': 1, '4': 1, '5': 11, '6': '.protobuf.Feed', '10': 'feed'},
    const {'1': 'state', '3': 2, '4': 1, '5': 8, '10': 'state'},
  ],
};

/// Descriptor for `SetActuatorStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setActuatorStateRequestDescriptor = $convert.base64Decode('ChdTZXRBY3R1YXRvclN0YXRlUmVxdWVzdBIiCgRmZWVkGAEgASgLMg4ucHJvdG9idWYuRmVlZFIEZmVlZBIUCgVzdGF0ZRgCIAEoCFIFc3RhdGU=');
@$core.Deprecated('Use setActuatorStateResponseDescriptor instead')
const SetActuatorStateResponse$json = const {
  '1': 'SetActuatorStateResponse',
};

/// Descriptor for `SetActuatorStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setActuatorStateResponseDescriptor = $convert.base64Decode('ChhTZXRBY3R1YXRvclN0YXRlUmVzcG9uc2U=');
@$core.Deprecated('Use feedDescriptor instead')
const Feed$json = const {
  '1': 'Feed',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.protobuf.FeedType', '10': 'type'},
  ],
};

/// Descriptor for `Feed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedDescriptor = $convert.base64Decode('CgRGZWVkEg4KAmlkGAEgASgJUgJpZBIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SJgoEdHlwZRgDIAEoDjISLnByb3RvYnVmLkZlZWRUeXBlUgR0eXBl');
