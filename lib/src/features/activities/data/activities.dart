import 'package:dream_home/src/grpc/backend_provider.dart';
import 'package:dream_home/src/grpc/generated/backend.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'activities.g.dart';

@Riverpod(keepAlive: true)
Stream<List<Activity>> activities(ActivitiesRef ref) async* {
  final List<Activity> activities = [];
  final stream =
      ref.watch(backendProvider).streamActivities(StreamActivitiesRequest());
  await for (var res in stream) {
    print("new activity");
    activities.add(res.activity);
    yield activities;
  }
}
