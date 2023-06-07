import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:initial_fluttere2e/main.dart' as app;

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end to end Testing', () {
    testWidgets('Tap on the floating icon button and verify the logic here',(tester) async {
      app.main();
      await tester.pumpAndSettle();

      // VERIFY the counter starts at 0.
      expect(find.text('0'), findsOneWidget);

      // Finds the floating action button to tap on
      final Finder fab=find.byTooltip('Increment');
      
      // Emulate a tap on the floating action button
      await tester.tap(fab);

      // Trigger a frame
      await tester.pumpAndSettle();

      // Verify the counter increments by 1
      expect(find.text('2'), findsOneWidget);

      // Verify the s
    });
   });
}