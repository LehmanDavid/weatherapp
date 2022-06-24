import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:weatherapp/features/weather/presentation/widgets/custom_loading_widget.dart';

void main() {
  testGoldens('test of CustomLoadingWidget', (WidgetTester tester) async {
    const indicator = CustomLoadingWidget();
    await tester.runAsync(
        () => tester.pumpWidget(indicator, const Duration(seconds: 2)));

    await tester.pumpWidget(indicator);

    expect(find.byWidget(indicator), findsOneWidget);
  });
}
