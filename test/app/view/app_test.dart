import 'package:flutter_test/flutter_test.dart';
import 'package:scimate_app/app/app.dart';
import 'package:scimate_app/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
