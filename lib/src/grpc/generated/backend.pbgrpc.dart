///
//  Generated code. Do not modify.
//  source: backend.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'backend.pb.dart' as $0;
export 'backend.pb.dart';

class BackendServiceClient extends $grpc.Client {
  static final _$streamSensorValues = $grpc.ClientMethod<
          $0.StreamSensorValuesRequest, $0.StreamSensorValuesResponse>(
      '/protobuf.BackendService/StreamSensorValues',
      ($0.StreamSensorValuesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.StreamSensorValuesResponse.fromBuffer(value));
  static final _$streamActuatorStates = $grpc.ClientMethod<
          $0.StreamActuatorStatesRequest, $0.StreamActuatorStatesResponse>(
      '/protobuf.BackendService/StreamActuatorStates',
      ($0.StreamActuatorStatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.StreamActuatorStatesResponse.fromBuffer(value));
  static final _$streamFeedsChanges = $grpc.ClientMethod<
          $0.StreamFeedsChangesRequest, $0.StreamFeedsChangesResponse>(
      '/protobuf.BackendService/StreamFeedsChanges',
      ($0.StreamFeedsChangesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.StreamFeedsChangesResponse.fromBuffer(value));
  static final _$createFeed =
      $grpc.ClientMethod<$0.CreateFeedRequest, $0.CreateFeedResponse>(
          '/protobuf.BackendService/CreateFeed',
          ($0.CreateFeedRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateFeedResponse.fromBuffer(value));
  static final _$deleteFeed =
      $grpc.ClientMethod<$0.DeleteFeedRequest, $0.DeleteFeedResponse>(
          '/protobuf.BackendService/DeleteFeed',
          ($0.DeleteFeedRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteFeedResponse.fromBuffer(value));
  static final _$setActuatorState = $grpc.ClientMethod<
          $0.SetActuatorStateRequest, $0.SetActuatorStateResponse>(
      '/protobuf.BackendService/SetActuatorState',
      ($0.SetActuatorStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SetActuatorStateResponse.fromBuffer(value));
  static final _$streamNotifications = $grpc.ClientMethod<
          $0.StreamNotificationsRequest, $0.StreamNotificationsResponse>(
      '/protobuf.BackendService/StreamNotifications',
      ($0.StreamNotificationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.StreamNotificationsResponse.fromBuffer(value));
  static final _$updateFeedConfig = $grpc.ClientMethod<
          $0.UpdateFeedConfigRequest, $0.UpdateFeedConfigResponse>(
      '/protobuf.BackendService/UpdateFeedConfig',
      ($0.UpdateFeedConfigRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.UpdateFeedConfigResponse.fromBuffer(value));
  static final _$getFeedConfig =
      $grpc.ClientMethod<$0.GetFeedConfigRequest, $0.GetFeedConfigResponse>(
          '/protobuf.BackendService/GetFeedConfig',
          ($0.GetFeedConfigRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetFeedConfigResponse.fromBuffer(value));
  static final _$streamActivities = $grpc.ClientMethod<
          $0.StreamActivitiesRequest, $0.StreamActivitiesResponse>(
      '/protobuf.BackendService/StreamActivities',
      ($0.StreamActivitiesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.StreamActivitiesResponse.fromBuffer(value));

  BackendServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.StreamSensorValuesResponse> streamSensorValues(
      $0.StreamSensorValuesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamSensorValues, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.StreamActuatorStatesResponse> streamActuatorStates(
      $0.StreamActuatorStatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamActuatorStates, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.StreamFeedsChangesResponse> streamFeedsChanges(
      $0.StreamFeedsChangesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamFeedsChanges, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.CreateFeedResponse> createFeed(
      $0.CreateFeedRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createFeed, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteFeedResponse> deleteFeed(
      $0.DeleteFeedRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFeed, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetActuatorStateResponse> setActuatorState(
      $0.SetActuatorStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setActuatorState, request, options: options);
  }

  $grpc.ResponseStream<$0.StreamNotificationsResponse> streamNotifications(
      $0.StreamNotificationsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamNotifications, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.UpdateFeedConfigResponse> updateFeedConfig(
      $0.UpdateFeedConfigRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateFeedConfig, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetFeedConfigResponse> getFeedConfig(
      $0.GetFeedConfigRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFeedConfig, request, options: options);
  }

  $grpc.ResponseStream<$0.StreamActivitiesResponse> streamActivities(
      $0.StreamActivitiesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamActivities, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class BackendServiceBase extends $grpc.Service {
  $core.String get $name => 'protobuf.BackendService';

  BackendServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StreamSensorValuesRequest,
            $0.StreamSensorValuesResponse>(
        'StreamSensorValues',
        streamSensorValues_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.StreamSensorValuesRequest.fromBuffer(value),
        ($0.StreamSensorValuesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamActuatorStatesRequest,
            $0.StreamActuatorStatesResponse>(
        'StreamActuatorStates',
        streamActuatorStates_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.StreamActuatorStatesRequest.fromBuffer(value),
        ($0.StreamActuatorStatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamFeedsChangesRequest,
            $0.StreamFeedsChangesResponse>(
        'StreamFeedsChanges',
        streamFeedsChanges_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.StreamFeedsChangesRequest.fromBuffer(value),
        ($0.StreamFeedsChangesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateFeedRequest, $0.CreateFeedResponse>(
        'CreateFeed',
        createFeed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateFeedRequest.fromBuffer(value),
        ($0.CreateFeedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteFeedRequest, $0.DeleteFeedResponse>(
        'DeleteFeed',
        deleteFeed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteFeedRequest.fromBuffer(value),
        ($0.DeleteFeedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetActuatorStateRequest,
            $0.SetActuatorStateResponse>(
        'SetActuatorState',
        setActuatorState_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetActuatorStateRequest.fromBuffer(value),
        ($0.SetActuatorStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamNotificationsRequest,
            $0.StreamNotificationsResponse>(
        'StreamNotifications',
        streamNotifications_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.StreamNotificationsRequest.fromBuffer(value),
        ($0.StreamNotificationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateFeedConfigRequest,
            $0.UpdateFeedConfigResponse>(
        'UpdateFeedConfig',
        updateFeedConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateFeedConfigRequest.fromBuffer(value),
        ($0.UpdateFeedConfigResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetFeedConfigRequest, $0.GetFeedConfigResponse>(
            'GetFeedConfig',
            getFeedConfig_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetFeedConfigRequest.fromBuffer(value),
            ($0.GetFeedConfigResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamActivitiesRequest,
            $0.StreamActivitiesResponse>(
        'StreamActivities',
        streamActivities_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.StreamActivitiesRequest.fromBuffer(value),
        ($0.StreamActivitiesResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.StreamSensorValuesResponse> streamSensorValues_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.StreamSensorValuesRequest> request) async* {
    yield* streamSensorValues(call, await request);
  }

  $async.Stream<$0.StreamActuatorStatesResponse> streamActuatorStates_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.StreamActuatorStatesRequest> request) async* {
    yield* streamActuatorStates(call, await request);
  }

  $async.Stream<$0.StreamFeedsChangesResponse> streamFeedsChanges_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.StreamFeedsChangesRequest> request) async* {
    yield* streamFeedsChanges(call, await request);
  }

  $async.Future<$0.CreateFeedResponse> createFeed_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateFeedRequest> request) async {
    return createFeed(call, await request);
  }

  $async.Future<$0.DeleteFeedResponse> deleteFeed_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteFeedRequest> request) async {
    return deleteFeed(call, await request);
  }

  $async.Future<$0.SetActuatorStateResponse> setActuatorState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SetActuatorStateRequest> request) async {
    return setActuatorState(call, await request);
  }

  $async.Stream<$0.StreamNotificationsResponse> streamNotifications_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.StreamNotificationsRequest> request) async* {
    yield* streamNotifications(call, await request);
  }

  $async.Future<$0.UpdateFeedConfigResponse> updateFeedConfig_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateFeedConfigRequest> request) async {
    return updateFeedConfig(call, await request);
  }

  $async.Future<$0.GetFeedConfigResponse> getFeedConfig_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetFeedConfigRequest> request) async {
    return getFeedConfig(call, await request);
  }

  $async.Stream<$0.StreamActivitiesResponse> streamActivities_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.StreamActivitiesRequest> request) async* {
    yield* streamActivities(call, await request);
  }

  $async.Stream<$0.StreamSensorValuesResponse> streamSensorValues(
      $grpc.ServiceCall call, $0.StreamSensorValuesRequest request);
  $async.Stream<$0.StreamActuatorStatesResponse> streamActuatorStates(
      $grpc.ServiceCall call, $0.StreamActuatorStatesRequest request);
  $async.Stream<$0.StreamFeedsChangesResponse> streamFeedsChanges(
      $grpc.ServiceCall call, $0.StreamFeedsChangesRequest request);
  $async.Future<$0.CreateFeedResponse> createFeed(
      $grpc.ServiceCall call, $0.CreateFeedRequest request);
  $async.Future<$0.DeleteFeedResponse> deleteFeed(
      $grpc.ServiceCall call, $0.DeleteFeedRequest request);
  $async.Future<$0.SetActuatorStateResponse> setActuatorState(
      $grpc.ServiceCall call, $0.SetActuatorStateRequest request);
  $async.Stream<$0.StreamNotificationsResponse> streamNotifications(
      $grpc.ServiceCall call, $0.StreamNotificationsRequest request);
  $async.Future<$0.UpdateFeedConfigResponse> updateFeedConfig(
      $grpc.ServiceCall call, $0.UpdateFeedConfigRequest request);
  $async.Future<$0.GetFeedConfigResponse> getFeedConfig(
      $grpc.ServiceCall call, $0.GetFeedConfigRequest request);
  $async.Stream<$0.StreamActivitiesResponse> streamActivities(
      $grpc.ServiceCall call, $0.StreamActivitiesRequest request);
}
