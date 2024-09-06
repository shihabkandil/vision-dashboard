import 'package:admin_dashboard/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/header_cards_list.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/welcome_card.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../app_pumper.dart';

void main() {
  testWidgets("Show dashboard screen widgets", (widgetTester) async {
    await widgetTester.pumpWidget(const AppPumper(child: DashboardScreen()));

    expect(find.byType(HeaderCardsList), findsOneWidget);
    expect(find.byType(WelcomeCard), findsOneWidget);
  });
}
