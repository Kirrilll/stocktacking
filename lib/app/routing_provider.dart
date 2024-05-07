
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/routing/services/go_router_location_service.dart';
import 'package:stocktacking/core/routing/services/location_service_base.dart';
import 'package:stocktacking/features/credential/presentation/providers/credentials_providers.dart';

part 'routing_provider.g.dart';

@Riverpod(keepAlive: true)
LocationServiceBase locationService(LocationServiceRef ref) {
  final credentialRouteGuard = ref.read(credentialRouteGuardProvider);
  return GoRouterLocationService(guards: [credentialRouteGuard]);
}