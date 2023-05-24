///
//  Generated code. Do not modify.
//  source: backend.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;

import 'backend.pbenum.dart';

export 'backend.pbenum.dart';

class StreamSensorValuesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamSensorValuesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<Feed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feed', subBuilder: Feed.create)
    ..hasRequiredFields = false
  ;

  StreamSensorValuesRequest._() : super();
  factory StreamSensorValuesRequest({
    Feed? feed,
  }) {
    final _result = create();
    if (feed != null) {
      _result.feed = feed;
    }
    return _result;
  }
  factory StreamSensorValuesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamSensorValuesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamSensorValuesRequest clone() => StreamSensorValuesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamSensorValuesRequest copyWith(void Function(StreamSensorValuesRequest) updates) => super.copyWith((message) => updates(message as StreamSensorValuesRequest)) as StreamSensorValuesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamSensorValuesRequest create() => StreamSensorValuesRequest._();
  StreamSensorValuesRequest createEmptyInstance() => create();
  static $pb.PbList<StreamSensorValuesRequest> createRepeated() => $pb.PbList<StreamSensorValuesRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamSensorValuesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamSensorValuesRequest>(create);
  static StreamSensorValuesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Feed get feed => $_getN(0);
  @$pb.TagNumber(1)
  set feed(Feed v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeed() => clearField(1);
  @$pb.TagNumber(1)
  Feed ensureFeed() => $_ensure(0);
}

class StreamSensorValuesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamSensorValuesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  StreamSensorValuesResponse._() : super();
  factory StreamSensorValuesResponse({
    $core.double? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory StreamSensorValuesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamSensorValuesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamSensorValuesResponse clone() => StreamSensorValuesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamSensorValuesResponse copyWith(void Function(StreamSensorValuesResponse) updates) => super.copyWith((message) => updates(message as StreamSensorValuesResponse)) as StreamSensorValuesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamSensorValuesResponse create() => StreamSensorValuesResponse._();
  StreamSensorValuesResponse createEmptyInstance() => create();
  static $pb.PbList<StreamSensorValuesResponse> createRepeated() => $pb.PbList<StreamSensorValuesResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamSensorValuesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamSensorValuesResponse>(create);
  static StreamSensorValuesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class StreamActuatorStatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamActuatorStatesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<Feed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feed', subBuilder: Feed.create)
    ..hasRequiredFields = false
  ;

  StreamActuatorStatesRequest._() : super();
  factory StreamActuatorStatesRequest({
    Feed? feed,
  }) {
    final _result = create();
    if (feed != null) {
      _result.feed = feed;
    }
    return _result;
  }
  factory StreamActuatorStatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamActuatorStatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamActuatorStatesRequest clone() => StreamActuatorStatesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamActuatorStatesRequest copyWith(void Function(StreamActuatorStatesRequest) updates) => super.copyWith((message) => updates(message as StreamActuatorStatesRequest)) as StreamActuatorStatesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamActuatorStatesRequest create() => StreamActuatorStatesRequest._();
  StreamActuatorStatesRequest createEmptyInstance() => create();
  static $pb.PbList<StreamActuatorStatesRequest> createRepeated() => $pb.PbList<StreamActuatorStatesRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamActuatorStatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamActuatorStatesRequest>(create);
  static StreamActuatorStatesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Feed get feed => $_getN(0);
  @$pb.TagNumber(1)
  set feed(Feed v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeed() => clearField(1);
  @$pb.TagNumber(1)
  Feed ensureFeed() => $_ensure(0);
}

class StreamActuatorStatesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamActuatorStatesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..hasRequiredFields = false
  ;

  StreamActuatorStatesResponse._() : super();
  factory StreamActuatorStatesResponse({
    $core.bool? state,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory StreamActuatorStatesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamActuatorStatesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamActuatorStatesResponse clone() => StreamActuatorStatesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamActuatorStatesResponse copyWith(void Function(StreamActuatorStatesResponse) updates) => super.copyWith((message) => updates(message as StreamActuatorStatesResponse)) as StreamActuatorStatesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamActuatorStatesResponse create() => StreamActuatorStatesResponse._();
  StreamActuatorStatesResponse createEmptyInstance() => create();
  static $pb.PbList<StreamActuatorStatesResponse> createRepeated() => $pb.PbList<StreamActuatorStatesResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamActuatorStatesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamActuatorStatesResponse>(create);
  static StreamActuatorStatesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get state => $_getBF(0);
  @$pb.TagNumber(1)
  set state($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
}

class StreamFeedsChangesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamFeedsChangesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StreamFeedsChangesRequest._() : super();
  factory StreamFeedsChangesRequest() => create();
  factory StreamFeedsChangesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamFeedsChangesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamFeedsChangesRequest clone() => StreamFeedsChangesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamFeedsChangesRequest copyWith(void Function(StreamFeedsChangesRequest) updates) => super.copyWith((message) => updates(message as StreamFeedsChangesRequest)) as StreamFeedsChangesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamFeedsChangesRequest create() => StreamFeedsChangesRequest._();
  StreamFeedsChangesRequest createEmptyInstance() => create();
  static $pb.PbList<StreamFeedsChangesRequest> createRepeated() => $pb.PbList<StreamFeedsChangesRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamFeedsChangesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamFeedsChangesRequest>(create);
  static StreamFeedsChangesRequest? _defaultInstance;
}

class StreamFeedsChangesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamFeedsChangesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<FeedsChange>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'change', subBuilder: FeedsChange.create)
    ..hasRequiredFields = false
  ;

  StreamFeedsChangesResponse._() : super();
  factory StreamFeedsChangesResponse({
    FeedsChange? change,
  }) {
    final _result = create();
    if (change != null) {
      _result.change = change;
    }
    return _result;
  }
  factory StreamFeedsChangesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamFeedsChangesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamFeedsChangesResponse clone() => StreamFeedsChangesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamFeedsChangesResponse copyWith(void Function(StreamFeedsChangesResponse) updates) => super.copyWith((message) => updates(message as StreamFeedsChangesResponse)) as StreamFeedsChangesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamFeedsChangesResponse create() => StreamFeedsChangesResponse._();
  StreamFeedsChangesResponse createEmptyInstance() => create();
  static $pb.PbList<StreamFeedsChangesResponse> createRepeated() => $pb.PbList<StreamFeedsChangesResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamFeedsChangesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamFeedsChangesResponse>(create);
  static StreamFeedsChangesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  FeedsChange get change => $_getN(0);
  @$pb.TagNumber(1)
  set change(FeedsChange v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChange() => $_has(0);
  @$pb.TagNumber(1)
  void clearChange() => clearField(1);
  @$pb.TagNumber(1)
  FeedsChange ensureChange() => $_ensure(0);
}

class CreateFeedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateFeedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<Feed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feed', subBuilder: Feed.create)
    ..hasRequiredFields = false
  ;

  CreateFeedRequest._() : super();
  factory CreateFeedRequest({
    Feed? feed,
  }) {
    final _result = create();
    if (feed != null) {
      _result.feed = feed;
    }
    return _result;
  }
  factory CreateFeedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateFeedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateFeedRequest clone() => CreateFeedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateFeedRequest copyWith(void Function(CreateFeedRequest) updates) => super.copyWith((message) => updates(message as CreateFeedRequest)) as CreateFeedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateFeedRequest create() => CreateFeedRequest._();
  CreateFeedRequest createEmptyInstance() => create();
  static $pb.PbList<CreateFeedRequest> createRepeated() => $pb.PbList<CreateFeedRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateFeedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateFeedRequest>(create);
  static CreateFeedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Feed get feed => $_getN(0);
  @$pb.TagNumber(1)
  set feed(Feed v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeed() => clearField(1);
  @$pb.TagNumber(1)
  Feed ensureFeed() => $_ensure(0);
}

class CreateFeedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateFeedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CreateFeedResponse._() : super();
  factory CreateFeedResponse() => create();
  factory CreateFeedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateFeedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateFeedResponse clone() => CreateFeedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateFeedResponse copyWith(void Function(CreateFeedResponse) updates) => super.copyWith((message) => updates(message as CreateFeedResponse)) as CreateFeedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateFeedResponse create() => CreateFeedResponse._();
  CreateFeedResponse createEmptyInstance() => create();
  static $pb.PbList<CreateFeedResponse> createRepeated() => $pb.PbList<CreateFeedResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateFeedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateFeedResponse>(create);
  static CreateFeedResponse? _defaultInstance;
}

class DeleteFeedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteFeedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<Feed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feed', subBuilder: Feed.create)
    ..hasRequiredFields = false
  ;

  DeleteFeedRequest._() : super();
  factory DeleteFeedRequest({
    Feed? feed,
  }) {
    final _result = create();
    if (feed != null) {
      _result.feed = feed;
    }
    return _result;
  }
  factory DeleteFeedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteFeedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteFeedRequest clone() => DeleteFeedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteFeedRequest copyWith(void Function(DeleteFeedRequest) updates) => super.copyWith((message) => updates(message as DeleteFeedRequest)) as DeleteFeedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteFeedRequest create() => DeleteFeedRequest._();
  DeleteFeedRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteFeedRequest> createRepeated() => $pb.PbList<DeleteFeedRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteFeedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteFeedRequest>(create);
  static DeleteFeedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Feed get feed => $_getN(0);
  @$pb.TagNumber(1)
  set feed(Feed v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeed() => clearField(1);
  @$pb.TagNumber(1)
  Feed ensureFeed() => $_ensure(0);
}

class DeleteFeedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteFeedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteFeedResponse._() : super();
  factory DeleteFeedResponse() => create();
  factory DeleteFeedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteFeedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteFeedResponse clone() => DeleteFeedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteFeedResponse copyWith(void Function(DeleteFeedResponse) updates) => super.copyWith((message) => updates(message as DeleteFeedResponse)) as DeleteFeedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteFeedResponse create() => DeleteFeedResponse._();
  DeleteFeedResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteFeedResponse> createRepeated() => $pb.PbList<DeleteFeedResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteFeedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteFeedResponse>(create);
  static DeleteFeedResponse? _defaultInstance;
}

class SetActuatorStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetActuatorStateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<Feed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feed', subBuilder: Feed.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..hasRequiredFields = false
  ;

  SetActuatorStateRequest._() : super();
  factory SetActuatorStateRequest({
    Feed? feed,
    $core.bool? state,
  }) {
    final _result = create();
    if (feed != null) {
      _result.feed = feed;
    }
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory SetActuatorStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetActuatorStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetActuatorStateRequest clone() => SetActuatorStateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetActuatorStateRequest copyWith(void Function(SetActuatorStateRequest) updates) => super.copyWith((message) => updates(message as SetActuatorStateRequest)) as SetActuatorStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetActuatorStateRequest create() => SetActuatorStateRequest._();
  SetActuatorStateRequest createEmptyInstance() => create();
  static $pb.PbList<SetActuatorStateRequest> createRepeated() => $pb.PbList<SetActuatorStateRequest>();
  @$core.pragma('dart2js:noInline')
  static SetActuatorStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetActuatorStateRequest>(create);
  static SetActuatorStateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Feed get feed => $_getN(0);
  @$pb.TagNumber(1)
  set feed(Feed v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeed() => clearField(1);
  @$pb.TagNumber(1)
  Feed ensureFeed() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get state => $_getBF(1);
  @$pb.TagNumber(2)
  set state($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);
}

class SetActuatorStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetActuatorStateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SetActuatorStateResponse._() : super();
  factory SetActuatorStateResponse() => create();
  factory SetActuatorStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetActuatorStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetActuatorStateResponse clone() => SetActuatorStateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetActuatorStateResponse copyWith(void Function(SetActuatorStateResponse) updates) => super.copyWith((message) => updates(message as SetActuatorStateResponse)) as SetActuatorStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetActuatorStateResponse create() => SetActuatorStateResponse._();
  SetActuatorStateResponse createEmptyInstance() => create();
  static $pb.PbList<SetActuatorStateResponse> createRepeated() => $pb.PbList<SetActuatorStateResponse>();
  @$core.pragma('dart2js:noInline')
  static SetActuatorStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetActuatorStateResponse>(create);
  static SetActuatorStateResponse? _defaultInstance;
}

class StreamNotificationsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamNotificationsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<Feed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feed', subBuilder: Feed.create)
    ..hasRequiredFields = false
  ;

  StreamNotificationsRequest._() : super();
  factory StreamNotificationsRequest({
    Feed? feed,
  }) {
    final _result = create();
    if (feed != null) {
      _result.feed = feed;
    }
    return _result;
  }
  factory StreamNotificationsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamNotificationsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamNotificationsRequest clone() => StreamNotificationsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamNotificationsRequest copyWith(void Function(StreamNotificationsRequest) updates) => super.copyWith((message) => updates(message as StreamNotificationsRequest)) as StreamNotificationsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamNotificationsRequest create() => StreamNotificationsRequest._();
  StreamNotificationsRequest createEmptyInstance() => create();
  static $pb.PbList<StreamNotificationsRequest> createRepeated() => $pb.PbList<StreamNotificationsRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamNotificationsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamNotificationsRequest>(create);
  static StreamNotificationsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Feed get feed => $_getN(0);
  @$pb.TagNumber(1)
  set feed(Feed v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeed() => clearField(1);
  @$pb.TagNumber(1)
  Feed ensureFeed() => $_ensure(0);
}

class StreamNotificationsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamNotificationsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<Notification>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notification', subBuilder: Notification.create)
    ..hasRequiredFields = false
  ;

  StreamNotificationsResponse._() : super();
  factory StreamNotificationsResponse({
    Notification? notification,
  }) {
    final _result = create();
    if (notification != null) {
      _result.notification = notification;
    }
    return _result;
  }
  factory StreamNotificationsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamNotificationsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamNotificationsResponse clone() => StreamNotificationsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamNotificationsResponse copyWith(void Function(StreamNotificationsResponse) updates) => super.copyWith((message) => updates(message as StreamNotificationsResponse)) as StreamNotificationsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamNotificationsResponse create() => StreamNotificationsResponse._();
  StreamNotificationsResponse createEmptyInstance() => create();
  static $pb.PbList<StreamNotificationsResponse> createRepeated() => $pb.PbList<StreamNotificationsResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamNotificationsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamNotificationsResponse>(create);
  static StreamNotificationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Notification get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  Notification ensureNotification() => $_ensure(0);
}

class UpdateFeedConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateFeedConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<Config>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: Config.create)
    ..hasRequiredFields = false
  ;

  UpdateFeedConfigRequest._() : super();
  factory UpdateFeedConfigRequest({
    Config? config,
  }) {
    final _result = create();
    if (config != null) {
      _result.config = config;
    }
    return _result;
  }
  factory UpdateFeedConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateFeedConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateFeedConfigRequest clone() => UpdateFeedConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateFeedConfigRequest copyWith(void Function(UpdateFeedConfigRequest) updates) => super.copyWith((message) => updates(message as UpdateFeedConfigRequest)) as UpdateFeedConfigRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateFeedConfigRequest create() => UpdateFeedConfigRequest._();
  UpdateFeedConfigRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateFeedConfigRequest> createRepeated() => $pb.PbList<UpdateFeedConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateFeedConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateFeedConfigRequest>(create);
  static UpdateFeedConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Config get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(Config v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  Config ensureConfig() => $_ensure(0);
}

class UpdateFeedConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateFeedConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdateFeedConfigResponse._() : super();
  factory UpdateFeedConfigResponse() => create();
  factory UpdateFeedConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateFeedConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateFeedConfigResponse clone() => UpdateFeedConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateFeedConfigResponse copyWith(void Function(UpdateFeedConfigResponse) updates) => super.copyWith((message) => updates(message as UpdateFeedConfigResponse)) as UpdateFeedConfigResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateFeedConfigResponse create() => UpdateFeedConfigResponse._();
  UpdateFeedConfigResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateFeedConfigResponse> createRepeated() => $pb.PbList<UpdateFeedConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateFeedConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateFeedConfigResponse>(create);
  static UpdateFeedConfigResponse? _defaultInstance;
}

class GetFeedConfigRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFeedConfigRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<Feed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feed', subBuilder: Feed.create)
    ..hasRequiredFields = false
  ;

  GetFeedConfigRequest._() : super();
  factory GetFeedConfigRequest({
    Feed? feed,
  }) {
    final _result = create();
    if (feed != null) {
      _result.feed = feed;
    }
    return _result;
  }
  factory GetFeedConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFeedConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFeedConfigRequest clone() => GetFeedConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFeedConfigRequest copyWith(void Function(GetFeedConfigRequest) updates) => super.copyWith((message) => updates(message as GetFeedConfigRequest)) as GetFeedConfigRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFeedConfigRequest create() => GetFeedConfigRequest._();
  GetFeedConfigRequest createEmptyInstance() => create();
  static $pb.PbList<GetFeedConfigRequest> createRepeated() => $pb.PbList<GetFeedConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFeedConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeedConfigRequest>(create);
  static GetFeedConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Feed get feed => $_getN(0);
  @$pb.TagNumber(1)
  set feed(Feed v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeed() => clearField(1);
  @$pb.TagNumber(1)
  Feed ensureFeed() => $_ensure(0);
}

class GetFeedConfigResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFeedConfigResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<Config>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: Config.create)
    ..hasRequiredFields = false
  ;

  GetFeedConfigResponse._() : super();
  factory GetFeedConfigResponse({
    Config? config,
  }) {
    final _result = create();
    if (config != null) {
      _result.config = config;
    }
    return _result;
  }
  factory GetFeedConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFeedConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFeedConfigResponse clone() => GetFeedConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFeedConfigResponse copyWith(void Function(GetFeedConfigResponse) updates) => super.copyWith((message) => updates(message as GetFeedConfigResponse)) as GetFeedConfigResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFeedConfigResponse create() => GetFeedConfigResponse._();
  GetFeedConfigResponse createEmptyInstance() => create();
  static $pb.PbList<GetFeedConfigResponse> createRepeated() => $pb.PbList<GetFeedConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFeedConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeedConfigResponse>(create);
  static GetFeedConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Config get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(Config v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  Config ensureConfig() => $_ensure(0);
}

class Feed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Feed', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..e<FeedType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: FeedType.TEMPERATURE, valueOf: FeedType.valueOf, enumValues: FeedType.values)
    ..hasRequiredFields = false
  ;

  Feed._() : super();
  factory Feed({
    $core.String? id,
    $core.String? description,
    FeedType? type,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (description != null) {
      _result.description = description;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory Feed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Feed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Feed clone() => Feed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Feed copyWith(void Function(Feed) updates) => super.copyWith((message) => updates(message as Feed)) as Feed; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Feed create() => Feed._();
  Feed createEmptyInstance() => create();
  static $pb.PbList<Feed> createRepeated() => $pb.PbList<Feed>();
  @$core.pragma('dart2js:noInline')
  static Feed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Feed>(create);
  static Feed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  FeedType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(FeedType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

class FeedsChange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeedsChange', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..pc<Feed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addeds', $pb.PbFieldType.PM, subBuilder: Feed.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'removedIDs', protoName: 'removedIDs')
    ..hasRequiredFields = false
  ;

  FeedsChange._() : super();
  factory FeedsChange({
    $core.Iterable<Feed>? addeds,
    $core.Iterable<$core.String>? removedIDs,
  }) {
    final _result = create();
    if (addeds != null) {
      _result.addeds.addAll(addeds);
    }
    if (removedIDs != null) {
      _result.removedIDs.addAll(removedIDs);
    }
    return _result;
  }
  factory FeedsChange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedsChange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedsChange clone() => FeedsChange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedsChange copyWith(void Function(FeedsChange) updates) => super.copyWith((message) => updates(message as FeedsChange)) as FeedsChange; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeedsChange create() => FeedsChange._();
  FeedsChange createEmptyInstance() => create();
  static $pb.PbList<FeedsChange> createRepeated() => $pb.PbList<FeedsChange>();
  @$core.pragma('dart2js:noInline')
  static FeedsChange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedsChange>(create);
  static FeedsChange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Feed> get addeds => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get removedIDs => $_getList(1);
}

enum Config_TypeConfig {
  sensorConfig, 
  actuatorConfig, 
  notSet
}

class Config extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Config_TypeConfig> _Config_TypeConfigByTag = {
    2 : Config_TypeConfig.sensorConfig,
    3 : Config_TypeConfig.actuatorConfig,
    0 : Config_TypeConfig.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Config', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<Feed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feedConfig', protoName: 'feedConfig', subBuilder: Feed.create)
    ..aOM<SensorConfig>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sensorConfig', protoName: 'sensorConfig', subBuilder: SensorConfig.create)
    ..aOM<ActuatorConfig>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actuatorConfig', protoName: 'actuatorConfig', subBuilder: ActuatorConfig.create)
    ..hasRequiredFields = false
  ;

  Config._() : super();
  factory Config({
    Feed? feedConfig,
    SensorConfig? sensorConfig,
    ActuatorConfig? actuatorConfig,
  }) {
    final _result = create();
    if (feedConfig != null) {
      _result.feedConfig = feedConfig;
    }
    if (sensorConfig != null) {
      _result.sensorConfig = sensorConfig;
    }
    if (actuatorConfig != null) {
      _result.actuatorConfig = actuatorConfig;
    }
    return _result;
  }
  factory Config.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Config.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Config clone() => Config()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Config copyWith(void Function(Config) updates) => super.copyWith((message) => updates(message as Config)) as Config; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Config create() => Config._();
  Config createEmptyInstance() => create();
  static $pb.PbList<Config> createRepeated() => $pb.PbList<Config>();
  @$core.pragma('dart2js:noInline')
  static Config getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Config>(create);
  static Config? _defaultInstance;

  Config_TypeConfig whichTypeConfig() => _Config_TypeConfigByTag[$_whichOneof(0)]!;
  void clearTypeConfig() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Feed get feedConfig => $_getN(0);
  @$pb.TagNumber(1)
  set feedConfig(Feed v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeedConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeedConfig() => clearField(1);
  @$pb.TagNumber(1)
  Feed ensureFeedConfig() => $_ensure(0);

  @$pb.TagNumber(2)
  SensorConfig get sensorConfig => $_getN(1);
  @$pb.TagNumber(2)
  set sensorConfig(SensorConfig v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSensorConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearSensorConfig() => clearField(2);
  @$pb.TagNumber(2)
  SensorConfig ensureSensorConfig() => $_ensure(1);

  @$pb.TagNumber(3)
  ActuatorConfig get actuatorConfig => $_getN(2);
  @$pb.TagNumber(3)
  set actuatorConfig(ActuatorConfig v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActuatorConfig() => $_has(2);
  @$pb.TagNumber(3)
  void clearActuatorConfig() => clearField(3);
  @$pb.TagNumber(3)
  ActuatorConfig ensureActuatorConfig() => $_ensure(2);
}

class SensorConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SensorConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasNotification', protoName: 'hasNotification')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lowerThreshold', $pb.PbFieldType.OF, protoName: 'lowerThreshold')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upperThreshold', $pb.PbFieldType.OF, protoName: 'upperThreshold')
    ..hasRequiredFields = false
  ;

  SensorConfig._() : super();
  factory SensorConfig({
    $core.bool? hasNotification,
    $core.double? lowerThreshold,
    $core.double? upperThreshold,
  }) {
    final _result = create();
    if (hasNotification != null) {
      _result.hasNotification = hasNotification;
    }
    if (lowerThreshold != null) {
      _result.lowerThreshold = lowerThreshold;
    }
    if (upperThreshold != null) {
      _result.upperThreshold = upperThreshold;
    }
    return _result;
  }
  factory SensorConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SensorConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SensorConfig clone() => SensorConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SensorConfig copyWith(void Function(SensorConfig) updates) => super.copyWith((message) => updates(message as SensorConfig)) as SensorConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SensorConfig create() => SensorConfig._();
  SensorConfig createEmptyInstance() => create();
  static $pb.PbList<SensorConfig> createRepeated() => $pb.PbList<SensorConfig>();
  @$core.pragma('dart2js:noInline')
  static SensorConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SensorConfig>(create);
  static SensorConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasNotification => $_getBF(0);
  @$pb.TagNumber(1)
  set hasNotification($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasNotification() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get lowerThreshold => $_getN(1);
  @$pb.TagNumber(2)
  set lowerThreshold($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLowerThreshold() => $_has(1);
  @$pb.TagNumber(2)
  void clearLowerThreshold() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get upperThreshold => $_getN(2);
  @$pb.TagNumber(3)
  set upperThreshold($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpperThreshold() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpperThreshold() => clearField(3);
}

class ActuatorConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ActuatorConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'automatic')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'turnOnCronExpr', protoName: 'turnOnCronExpr')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'turnOffCronExpr', protoName: 'turnOffCronExpr')
    ..hasRequiredFields = false
  ;

  ActuatorConfig._() : super();
  factory ActuatorConfig({
    $core.bool? automatic,
    $core.String? turnOnCronExpr,
    $core.String? turnOffCronExpr,
  }) {
    final _result = create();
    if (automatic != null) {
      _result.automatic = automatic;
    }
    if (turnOnCronExpr != null) {
      _result.turnOnCronExpr = turnOnCronExpr;
    }
    if (turnOffCronExpr != null) {
      _result.turnOffCronExpr = turnOffCronExpr;
    }
    return _result;
  }
  factory ActuatorConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActuatorConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActuatorConfig clone() => ActuatorConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActuatorConfig copyWith(void Function(ActuatorConfig) updates) => super.copyWith((message) => updates(message as ActuatorConfig)) as ActuatorConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ActuatorConfig create() => ActuatorConfig._();
  ActuatorConfig createEmptyInstance() => create();
  static $pb.PbList<ActuatorConfig> createRepeated() => $pb.PbList<ActuatorConfig>();
  @$core.pragma('dart2js:noInline')
  static ActuatorConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActuatorConfig>(create);
  static ActuatorConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get automatic => $_getBF(0);
  @$pb.TagNumber(1)
  set automatic($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAutomatic() => $_has(0);
  @$pb.TagNumber(1)
  void clearAutomatic() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get turnOnCronExpr => $_getSZ(1);
  @$pb.TagNumber(2)
  set turnOnCronExpr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTurnOnCronExpr() => $_has(1);
  @$pb.TagNumber(2)
  void clearTurnOnCronExpr() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get turnOffCronExpr => $_getSZ(2);
  @$pb.TagNumber(3)
  set turnOffCronExpr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTurnOffCronExpr() => $_has(2);
  @$pb.TagNumber(3)
  void clearTurnOffCronExpr() => clearField(3);
}

class Notification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Notification', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protobuf'), createEmptyInstance: create)
    ..aOM<$1.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $1.Timestamp.create)
    ..aOM<Feed>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feed', subBuilder: Feed.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  Notification._() : super();
  factory Notification({
    $1.Timestamp? timestamp,
    Feed? feed,
    $core.String? message,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (feed != null) {
      _result.feed = feed;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory Notification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notification clone() => Notification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notification copyWith(void Function(Notification) updates) => super.copyWith((message) => updates(message as Notification)) as Notification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Notification create() => Notification._();
  Notification createEmptyInstance() => create();
  static $pb.PbList<Notification> createRepeated() => $pb.PbList<Notification>();
  @$core.pragma('dart2js:noInline')
  static Notification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notification>(create);
  static Notification? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Timestamp get timestamp => $_getN(0);
  @$pb.TagNumber(1)
  set timestamp($1.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);
  @$pb.TagNumber(1)
  $1.Timestamp ensureTimestamp() => $_ensure(0);

  @$pb.TagNumber(2)
  Feed get feed => $_getN(1);
  @$pb.TagNumber(2)
  set feed(Feed v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeed() => clearField(2);
  @$pb.TagNumber(2)
  Feed ensureFeed() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

