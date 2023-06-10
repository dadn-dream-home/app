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
final $typed_data.Uint8List feedTypeDescriptor = $convert.base64Decode(
    'CghGZWVkVHlwZRIPCgtURU1QRVJBVFVSRRAAEgwKCEhVTUlESVRZEAESCQoFTElHSFQQAg==');
@$core.Deprecated('Use streamFeedValuesRequestDescriptor instead')
const StreamFeedValuesRequest$json = const {
  '1': 'StreamFeedValuesRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `StreamFeedValuesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamFeedValuesRequestDescriptor = $convert
    .base64Decode('ChdTdHJlYW1GZWVkVmFsdWVzUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use streamFeedValuesResponseDescriptor instead')
const StreamFeedValuesResponse$json = const {
  '1': 'StreamFeedValuesResponse',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 2, '10': 'value'},
  ],
};

/// Descriptor for `StreamFeedValuesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamFeedValuesResponseDescriptor =
    $convert.base64Decode(
        'ChhTdHJlYW1GZWVkVmFsdWVzUmVzcG9uc2USFAoFdmFsdWUYASABKAJSBXZhbHVl');
@$core.Deprecated('Use listFeedsRequestDescriptor instead')
const ListFeedsRequest$json = const {
  '1': 'ListFeedsRequest',
};

/// Descriptor for `ListFeedsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFeedsRequestDescriptor =
    $convert.base64Decode('ChBMaXN0RmVlZHNSZXF1ZXN0');
@$core.Deprecated('Use listFeedsResponseDescriptor instead')
const ListFeedsResponse$json = const {
  '1': 'ListFeedsResponse',
  '2': const [
    const {
      '1': 'feeds',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feeds'
    },
  ],
};

/// Descriptor for `ListFeedsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFeedsResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0RmVlZHNSZXNwb25zZRIkCgVmZWVkcxgBIAMoCzIOLnByb3RvYnVmLkZlZWRSBWZlZWRz');
@$core.Deprecated('Use createFeedRequestDescriptor instead')
const CreateFeedRequest$json = const {
  '1': 'CreateFeedRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.protobuf.FeedType',
      '10': 'type'
    },
  ],
};

/// Descriptor for `CreateFeedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFeedRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVGZWVkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSJgoEdHlwZRgCIAEoDjISLnByb3RvYnVmLkZlZWRUeXBlUgR0eXBl');
@$core.Deprecated('Use createFeedResponseDescriptor instead')
const CreateFeedResponse$json = const {
  '1': 'CreateFeedResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateFeedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFeedResponseDescriptor =
    $convert.base64Decode('ChJDcmVhdGVGZWVkUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use deleteFeedRequestDescriptor instead')
const DeleteFeedRequest$json = const {
  '1': 'DeleteFeedRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteFeedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFeedRequestDescriptor =
    $convert.base64Decode('ChFEZWxldGVGZWVkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use deleteFeedResponseDescriptor instead')
const DeleteFeedResponse$json = const {
  '1': 'DeleteFeedResponse',
};

/// Descriptor for `DeleteFeedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFeedResponseDescriptor =
    $convert.base64Decode('ChJEZWxldGVGZWVkUmVzcG9uc2U=');
@$core.Deprecated('Use feedDescriptor instead')
const Feed$json = const {
  '1': 'Feed',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.protobuf.FeedType',
      '10': 'type'
    },
  ],
};

/// Descriptor for `Feed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedDescriptor = $convert.base64Decode(
    'CgRGZWVkEg4KAmlkGAEgASgJUgJpZBImCgR0eXBlGAIgASgOMhIucHJvdG9idWYuRmVlZFR5cGVSBHR5cGU=');
