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
  static final _$streamFeedValues = $grpc.ClientMethod<
          $0.StreamFeedValuesRequest, $0.StreamFeedValuesResponse>(
      '/protobuf.BackendService/StreamFeedValues',
      ($0.StreamFeedValuesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.StreamFeedValuesResponse.fromBuffer(value));
  static final _$listFeeds =
      $grpc.ClientMethod<$0.ListFeedsRequest, $0.ListFeedsResponse>(
          '/protobuf.BackendService/ListFeeds',
          ($0.ListFeedsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListFeedsResponse.fromBuffer(value));
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

  BackendServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.StreamFeedValuesResponse> streamFeedValues(
      $0.StreamFeedValuesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamFeedValues, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.ListFeedsResponse> listFeeds(
      $0.ListFeedsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFeeds, request, options: options);
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
}

abstract class BackendServiceBase extends $grpc.Service {
  $core.String get $name => 'protobuf.BackendService';

  BackendServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StreamFeedValuesRequest,
            $0.StreamFeedValuesResponse>(
        'StreamFeedValues',
        streamFeedValues_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.StreamFeedValuesRequest.fromBuffer(value),
        ($0.StreamFeedValuesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListFeedsRequest, $0.ListFeedsResponse>(
        'ListFeeds',
        listFeeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListFeedsRequest.fromBuffer(value),
        ($0.ListFeedsResponse value) => value.writeToBuffer()));
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
  }

  $async.Stream<$0.StreamFeedValuesResponse> streamFeedValues_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.StreamFeedValuesRequest> request) async* {
    yield* streamFeedValues(call, await request);
  }

  $async.Future<$0.ListFeedsResponse> listFeeds_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListFeedsRequest> request) async {
    return listFeeds(call, await request);
  }

  $async.Future<$0.CreateFeedResponse> createFeed_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateFeedRequest> request) async {
    return createFeed(call, await request);
  }

  $async.Future<$0.DeleteFeedResponse> deleteFeed_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteFeedRequest> request) async {
    return deleteFeed(call, await request);
  }

  $async.Stream<$0.StreamFeedValuesResponse> streamFeedValues(
      $grpc.ServiceCall call, $0.StreamFeedValuesRequest request);
  $async.Future<$0.ListFeedsResponse> listFeeds(
      $grpc.ServiceCall call, $0.ListFeedsRequest request);
  $async.Future<$0.CreateFeedResponse> createFeed(
      $grpc.ServiceCall call, $0.CreateFeedRequest request);
  $async.Future<$0.DeleteFeedResponse> deleteFeed(
      $grpc.ServiceCall call, $0.DeleteFeedRequest request);
}
