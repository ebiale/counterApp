//Handlers

import 'package:base_web/ui/views/counter_provider_view.dart';
import 'package:base_web/ui/views/counter_view.dart';
import 'package:base_web/ui/views/page_404.dart';
import 'package:fluro/fluro.dart';

final counterHandler = Handler(handlerFunc: (context, params) {
  String? base = params['base']?.first;
  return CounterView(
    base: base,
  );
});

final counterProviderHandler = Handler(handlerFunc: (context, params) {
  String? base = params['base']?.first;
  return CounterProviderView(base: base);
});

final pageNotFound = Handler(handlerFunc: (_, __) => const Page404());
