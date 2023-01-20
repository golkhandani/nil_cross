import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_shared_store.dart';

class AuthenticationService {
  static const isAuthenticatedKey = 'isAuthenticated';
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  refreshIsAuthenticated() async {
    final AppSharedStore sharedStore = locator.get();
    final isAuthenticated = await sharedStore.get<bool>(isAuthenticatedKey) ?? false;
    _isAuthenticated = isAuthenticated;
    return isAuthenticated;
  }
}
