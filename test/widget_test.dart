import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_team/main.dart';

void main() {
  testWidgets('portfolio app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const PortfolioApp());

    expect(find.text('Raghava'), findsOneWidget);
    expect(find.text('PROJECTS'), findsOneWidget);
  });
}
