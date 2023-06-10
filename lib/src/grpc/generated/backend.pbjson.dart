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
@$core.Deprecated('Use streamSensorValuesRequestDescriptor instead')
const StreamSensorValuesRequest$json = const {
  '1': 'StreamSensorValuesRequest',
  '2': const [
    const {
      '1': 'feed',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feed'
    },
  ],
};

/// Descriptor for `StreamSensorValuesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamSensorValuesRequestDescriptor =
    $convert.base64Decode(
        'ChlTdHJlYW1TZW5zb3JWYWx1ZXNSZXF1ZXN0EiIKBGZlZWQYASABKAsyDi5wcm90b2J1Zi5GZWVkUgRmZWVk');
@$core.Deprecated('Use streamSensorValuesResponseDescriptor instead')
const StreamSensorValuesResponse$json = const {
  '1': 'StreamSensorValuesResponse',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 2, '10': 'value'},
  ],
};

/// Descriptor for `StreamSensorValuesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamSensorValuesResponseDescriptor =
    $convert.base64Decode(
        'ChpTdHJlYW1TZW5zb3JWYWx1ZXNSZXNwb25zZRIUCgV2YWx1ZRgBIAEoAlIFdmFsdWU=');
@$core.Deprecated('Use streamActuatorStatesRequestDescriptor instead')
const StreamActuatorStatesRequest$json = const {
  '1': 'StreamActuatorStatesRequest',
  '2': const [
    const {
      '1': 'feed',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feed'
    },
  ],
};

/// Descriptor for `StreamActuatorStatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamActuatorStatesRequestDescriptor =
    $convert.base64Decode(
        'ChtTdHJlYW1BY3R1YXRvclN0YXRlc1JlcXVlc3QSIgoEZmVlZBgBIAEoCzIOLnByb3RvYnVmLkZlZWRSBGZlZWQ=');
@$core.Deprecated('Use streamActuatorStatesResponseDescriptor instead')
const StreamActuatorStatesResponse$json = const {
  '1': 'StreamActuatorStatesResponse',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 8, '10': 'state'},
  ],
};

/// Descriptor for `StreamActuatorStatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamActuatorStatesResponseDescriptor =
    $convert.base64Decode(
        'ChxTdHJlYW1BY3R1YXRvclN0YXRlc1Jlc3BvbnNlEhQKBXN0YXRlGAEgASgIUgVzdGF0ZQ==');
@$core.Deprecated('Use streamFeedsChangesRequestDescriptor instead')
const StreamFeedsChangesRequest$json = const {
  '1': 'StreamFeedsChangesRequest',
};

/// Descriptor for `StreamFeedsChangesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamFeedsChangesRequestDescriptor =
    $convert.base64Decode('ChlTdHJlYW1GZWVkc0NoYW5nZXNSZXF1ZXN0');
@$core.Deprecated('Use streamFeedsChangesResponseDescriptor instead')
const StreamFeedsChangesResponse$json = const {
  '1': 'StreamFeedsChangesResponse',
  '2': const [
    const {
      '1': 'change',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.FeedsChange',
      '10': 'change'
    },
  ],
};

/// Descriptor for `StreamFeedsChangesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamFeedsChangesResponseDescriptor =
    $convert.base64Decode(
        'ChpTdHJlYW1GZWVkc0NoYW5nZXNSZXNwb25zZRItCgZjaGFuZ2UYASABKAsyFS5wcm90b2J1Zi5GZWVkc0NoYW5nZVIGY2hhbmdl');
@$core.Deprecated('Use createFeedRequestDescriptor instead')
const CreateFeedRequest$json = const {
  '1': 'CreateFeedRequest',
  '2': const [
    const {
      '1': 'feed',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feed'
    },
  ],
};

/// Descriptor for `CreateFeedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFeedRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVGZWVkUmVxdWVzdBIiCgRmZWVkGAEgASgLMg4ucHJvdG9idWYuRmVlZFIEZmVlZA==');
@$core.Deprecated('Use createFeedResponseDescriptor instead')
const CreateFeedResponse$json = const {
  '1': 'CreateFeedResponse',
};

/// Descriptor for `CreateFeedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFeedResponseDescriptor =
    $convert.base64Decode('ChJDcmVhdGVGZWVkUmVzcG9uc2U=');
@$core.Deprecated('Use deleteFeedRequestDescriptor instead')
const DeleteFeedRequest$json = const {
  '1': 'DeleteFeedRequest',
  '2': const [
    const {
      '1': 'feed',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feed'
    },
  ],
};

/// Descriptor for `DeleteFeedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFeedRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVGZWVkUmVxdWVzdBIiCgRmZWVkGAEgASgLMg4ucHJvdG9idWYuRmVlZFIEZmVlZA==');
@$core.Deprecated('Use deleteFeedResponseDescriptor instead')
const DeleteFeedResponse$json = const {
  '1': 'DeleteFeedResponse',
};

/// Descriptor for `DeleteFeedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFeedResponseDescriptor =
    $convert.base64Decode('ChJEZWxldGVGZWVkUmVzcG9uc2U=');
@$core.Deprecated('Use setActuatorStateRequestDescriptor instead')
const SetActuatorStateRequest$json = const {
  '1': 'SetActuatorStateRequest',
  '2': const [
    const {
      '1': 'feed',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feed'
    },
    const {'1': 'state', '3': 2, '4': 1, '5': 8, '10': 'state'},
  ],
};

/// Descriptor for `SetActuatorStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setActuatorStateRequestDescriptor =
    $convert.base64Decode(
        'ChdTZXRBY3R1YXRvclN0YXRlUmVxdWVzdBIiCgRmZWVkGAEgASgLMg4ucHJvdG9idWYuRmVlZFIEZmVlZBIUCgVzdGF0ZRgCIAEoCFIFc3RhdGU=');
@$core.Deprecated('Use setActuatorStateResponseDescriptor instead')
const SetActuatorStateResponse$json = const {
  '1': 'SetActuatorStateResponse',
};

/// Descriptor for `SetActuatorStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setActuatorStateResponseDescriptor =
    $convert.base64Decode('ChhTZXRBY3R1YXRvclN0YXRlUmVzcG9uc2U=');
@$core.Deprecated('Use streamNotificationsRequestDescriptor instead')
const StreamNotificationsRequest$json = const {
  '1': 'StreamNotificationsRequest',
  '2': const [
    const {
      '1': 'feed',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feed'
    },
  ],
};

/// Descriptor for `StreamNotificationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamNotificationsRequestDescriptor =
    $convert.base64Decode(
        'ChpTdHJlYW1Ob3RpZmljYXRpb25zUmVxdWVzdBIiCgRmZWVkGAEgASgLMg4ucHJvdG9idWYuRmVlZFIEZmVlZA==');
@$core.Deprecated('Use streamNotificationsResponseDescriptor instead')
const StreamNotificationsResponse$json = const {
  '1': 'StreamNotificationsResponse',
  '2': const [
    const {
      '1': 'notification',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Notification',
      '10': 'notification'
    },
  ],
};

/// Descriptor for `StreamNotificationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamNotificationsResponseDescriptor =
    $convert.base64Decode(
        'ChtTdHJlYW1Ob3RpZmljYXRpb25zUmVzcG9uc2USOgoMbm90aWZpY2F0aW9uGAEgASgLMhYucHJvdG9idWYuTm90aWZpY2F0aW9uUgxub3RpZmljYXRpb24=');
@$core.Deprecated('Use updateFeedConfigRequestDescriptor instead')
const UpdateFeedConfigRequest$json = const {
  '1': 'UpdateFeedConfigRequest',
  '2': const [
    const {
      '1': 'config',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Config',
      '10': 'config'
    },
  ],
};

/// Descriptor for `UpdateFeedConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateFeedConfigRequestDescriptor =
    $convert.base64Decode(
        'ChdVcGRhdGVGZWVkQ29uZmlnUmVxdWVzdBIoCgZjb25maWcYASABKAsyEC5wcm90b2J1Zi5Db25maWdSBmNvbmZpZw==');
@$core.Deprecated('Use updateFeedConfigResponseDescriptor instead')
const UpdateFeedConfigResponse$json = const {
  '1': 'UpdateFeedConfigResponse',
};

/// Descriptor for `UpdateFeedConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateFeedConfigResponseDescriptor =
    $convert.base64Decode('ChhVcGRhdGVGZWVkQ29uZmlnUmVzcG9uc2U=');
@$core.Deprecated('Use getFeedConfigRequestDescriptor instead')
const GetFeedConfigRequest$json = const {
  '1': 'GetFeedConfigRequest',
  '2': const [
    const {
      '1': 'feed',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feed'
    },
  ],
};

/// Descriptor for `GetFeedConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeedConfigRequestDescriptor = $convert.base64Decode(
    'ChRHZXRGZWVkQ29uZmlnUmVxdWVzdBIiCgRmZWVkGAEgASgLMg4ucHJvdG9idWYuRmVlZFIEZmVlZA==');
@$core.Deprecated('Use getFeedConfigResponseDescriptor instead')
const GetFeedConfigResponse$json = const {
  '1': 'GetFeedConfigResponse',
  '2': const [
    const {
      '1': 'config',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Config',
      '10': 'config'
    },
  ],
};

/// Descriptor for `GetFeedConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeedConfigResponseDescriptor = $convert.base64Decode(
    'ChVHZXRGZWVkQ29uZmlnUmVzcG9uc2USKAoGY29uZmlnGAEgASgLMhAucHJvdG9idWYuQ29uZmlnUgZjb25maWc=');
@$core.Deprecated('Use streamActivitiesRequestDescriptor instead')
const StreamActivitiesRequest$json = const {
  '1': 'StreamActivitiesRequest',
};

/// Descriptor for `StreamActivitiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamActivitiesRequestDescriptor =
    $convert.base64Decode('ChdTdHJlYW1BY3Rpdml0aWVzUmVxdWVzdA==');
@$core.Deprecated('Use streamActivitiesResponseDescriptor instead')
const StreamActivitiesResponse$json = const {
  '1': 'StreamActivitiesResponse',
  '2': const [
    const {
      '1': 'activity',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Activity',
      '10': 'activity'
    },
  ],
};

/// Descriptor for `StreamActivitiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamActivitiesResponseDescriptor =
    $convert.base64Decode(
        'ChhTdHJlYW1BY3Rpdml0aWVzUmVzcG9uc2USLgoIYWN0aXZpdHkYASABKAsyEi5wcm90b2J1Zi5BY3Rpdml0eVIIYWN0aXZpdHk=');
@$core.Deprecated('Use feedDescriptor instead')
const Feed$json = const {
  '1': 'Feed',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.protobuf.FeedType',
      '10': 'type'
    },
  ],
};

/// Descriptor for `Feed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedDescriptor = $convert.base64Decode(
    'CgRGZWVkEg4KAmlkGAEgASgJUgJpZBIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SJgoEdHlwZRgDIAEoDjISLnByb3RvYnVmLkZlZWRUeXBlUgR0eXBl');
@$core.Deprecated('Use feedsChangeDescriptor instead')
const FeedsChange$json = const {
  '1': 'FeedsChange',
  '2': const [
    const {
      '1': 'addeds',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'addeds'
    },
    const {'1': 'removedIDs', '3': 2, '4': 3, '5': 9, '10': 'removedIDs'},
  ],
};

/// Descriptor for `FeedsChange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedsChangeDescriptor = $convert.base64Decode(
    'CgtGZWVkc0NoYW5nZRImCgZhZGRlZHMYASADKAsyDi5wcm90b2J1Zi5GZWVkUgZhZGRlZHMSHgoKcmVtb3ZlZElEcxgCIAMoCVIKcmVtb3ZlZElEcw==');
@$core.Deprecated('Use configDescriptor instead')
const Config$json = const {
  '1': 'Config',
  '2': const [
    const {
      '1': 'feedConfig',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feedConfig'
    },
    const {
      '1': 'sensorConfig',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protobuf.SensorConfig',
      '9': 0,
      '10': 'sensorConfig'
    },
    const {
      '1': 'actuatorConfig',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protobuf.ActuatorConfig',
      '9': 0,
      '10': 'actuatorConfig'
    },
  ],
  '8': const [
    const {'1': 'typeConfig'},
  ],
};

/// Descriptor for `Config`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configDescriptor = $convert.base64Decode(
    'CgZDb25maWcSLgoKZmVlZENvbmZpZxgBIAEoCzIOLnByb3RvYnVmLkZlZWRSCmZlZWRDb25maWcSPAoMc2Vuc29yQ29uZmlnGAIgASgLMhYucHJvdG9idWYuU2Vuc29yQ29uZmlnSABSDHNlbnNvckNvbmZpZxJCCg5hY3R1YXRvckNvbmZpZxgDIAEoCzIYLnByb3RvYnVmLkFjdHVhdG9yQ29uZmlnSABSDmFjdHVhdG9yQ29uZmlnQgwKCnR5cGVDb25maWc=');
@$core.Deprecated('Use sensorConfigDescriptor instead')
const SensorConfig$json = const {
  '1': 'SensorConfig',
  '2': const [
    const {
      '1': 'hasNotification',
      '3': 1,
      '4': 1,
      '5': 8,
      '10': 'hasNotification'
    },
    const {
      '1': 'lowerThreshold',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Threshold',
      '10': 'lowerThreshold'
    },
    const {
      '1': 'upperThreshold',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Threshold',
      '10': 'upperThreshold'
    },
  ],
};

/// Descriptor for `SensorConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorConfigDescriptor = $convert.base64Decode(
    'CgxTZW5zb3JDb25maWcSKAoPaGFzTm90aWZpY2F0aW9uGAEgASgIUg9oYXNOb3RpZmljYXRpb24SOwoObG93ZXJUaHJlc2hvbGQYAiABKAsyEy5wcm90b2J1Zi5UaHJlc2hvbGRSDmxvd2VyVGhyZXNob2xkEjsKDnVwcGVyVGhyZXNob2xkGAMgASgLMhMucHJvdG9idWYuVGhyZXNob2xkUg51cHBlclRocmVzaG9sZA==');
@$core.Deprecated('Use thresholdDescriptor instead')
const Threshold$json = const {
  '1': 'Threshold',
  '2': const [
    const {'1': 'threshold', '3': 1, '4': 1, '5': 2, '10': 'threshold'},
    const {'1': 'hasTrigger', '3': 2, '4': 1, '5': 8, '10': 'hasTrigger'},
    const {
      '1': 'feed',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feed'
    },
    const {'1': 'state', '3': 4, '4': 1, '5': 8, '10': 'state'},
  ],
};

/// Descriptor for `Threshold`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thresholdDescriptor = $convert.base64Decode(
    'CglUaHJlc2hvbGQSHAoJdGhyZXNob2xkGAEgASgCUgl0aHJlc2hvbGQSHgoKaGFzVHJpZ2dlchgCIAEoCFIKaGFzVHJpZ2dlchIiCgRmZWVkGAMgASgLMg4ucHJvdG9idWYuRmVlZFIEZmVlZBIUCgVzdGF0ZRgEIAEoCFIFc3RhdGU=');
@$core.Deprecated('Use actuatorConfigDescriptor instead')
const ActuatorConfig$json = const {
  '1': 'ActuatorConfig',
  '2': const [
    const {'1': 'automatic', '3': 1, '4': 1, '5': 8, '10': 'automatic'},
    const {
      '1': 'turnOnCronExpr',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'turnOnCronExpr'
    },
    const {
      '1': 'turnOffCronExpr',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'turnOffCronExpr'
    },
  ],
};

/// Descriptor for `ActuatorConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actuatorConfigDescriptor = $convert.base64Decode(
    'Cg5BY3R1YXRvckNvbmZpZxIcCglhdXRvbWF0aWMYASABKAhSCWF1dG9tYXRpYxImCg50dXJuT25Dcm9uRXhwchgCIAEoCVIOdHVybk9uQ3JvbkV4cHISKAoPdHVybk9mZkNyb25FeHByGAMgASgJUg90dXJuT2ZmQ3JvbkV4cHI=');
@$core.Deprecated('Use notificationDescriptor instead')
const Notification$json = const {
  '1': 'Notification',
  '2': const [
    const {
      '1': 'timestamp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'timestamp'
    },
    const {
      '1': 'feed',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feed'
    },
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Notification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationDescriptor = $convert.base64Decode(
    'CgxOb3RpZmljYXRpb24SOAoJdGltZXN0YW1wGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdGltZXN0YW1wEiIKBGZlZWQYAiABKAsyDi5wcm90b2J1Zi5GZWVkUgRmZWVkEhgKB21lc3NhZ2UYAyABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use activityDescriptor instead')
const Activity$json = const {
  '1': 'Activity',
  '2': const [
    const {
      '1': 'timestamp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'timestamp'
    },
    const {
      '1': 'feed',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protobuf.Feed',
      '10': 'feed'
    },
    const {'1': 'state', '3': 3, '4': 1, '5': 8, '10': 'state'},
  ],
};

/// Descriptor for `Activity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityDescriptor = $convert.base64Decode(
    'CghBY3Rpdml0eRI4Cgl0aW1lc3RhbXAYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl0aW1lc3RhbXASIgoEZmVlZBgCIAEoCzIOLnByb3RvYnVmLkZlZWRSBGZlZWQSFAoFc3RhdGUYAyABKAhSBXN0YXRl');
