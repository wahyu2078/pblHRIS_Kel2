import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/form/screen/form_surat_page.dart';
import '../features/form/screen/hrd_list_page.dart';
import '../features/form/screen/hrd_detail_page.dart';

class AppRoutes {
  static const formSurat = "/form-surat";
  static const hrdList = "/hrd-list";
  static const detailSurat = "/detail-surat";
}

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const FormSuratPage(),
    ),

    GoRoute(
      path: AppRoutes.formSurat,
      builder: (context, state) => const FormSuratPage(),
    ),

    GoRoute(
      path: AppRoutes.hrdList,
      builder: (context, state) => const HrdListPage(),
    ),

    GoRoute(
      path: AppRoutes.detailSurat,
      builder: (context, state) =>
          HrdDetailPage(surat: state.extra as Map<String, dynamic>),
    ),
  ],
);
