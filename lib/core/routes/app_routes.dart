import 'package:correios_mobile_app/core/routes/const_routes.dart';
import 'package:correios_mobile_app/features/search_cep/presentation/ui/search_cep_view.dart';
import 'package:correios_mobile_app/features/show_addreses/presentation/ui/show_addreses_view.dart';

class AppRoutes {
  static builder(ConstRoutes routes) {
    return {
      routes.searchCepView: (_) => const SearchCepView(),
      routes.showAddresesView: (_) => const ShowAddresesView(),
    };
  }
}