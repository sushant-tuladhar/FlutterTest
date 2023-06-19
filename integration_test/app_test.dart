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
      final Finder button=find.byTooltip('Add_Button');
      
      await tester.tap(button);

      await tester.pumpAndSettle();
      
    });
   });
}