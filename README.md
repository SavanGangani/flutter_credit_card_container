# Flutter Credit Card

Flutter Credit Card package lets you add  beautiful credit card to your flutter app.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):

```yaml
dependencies:
  flutter_credit_card_container: <latest-version>
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:flutter_credit_card_container/flutter_credit_card_container.dart';
```

## Example

There are a number of properties that you can modify:
- height
- width
- cradHolderName
- cardNumber
- backgroundColor
- fontColor
- cvvNumber

<hr>

<table>
<tr>
<td>

```dart
class FlutterCreditCard extends StatelessWidget {  
  const FlutterCreditCard({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Center(  
        child: const FlutterCreditCard(
        cardHolderName: "Flutter Demo",
        cardNumber: "123456789101",
        cvvNumber: 301,
        startMonth: 04,
        startYears: 23,
        endMonth: 04,
        endYears: 26,
      ),
      ),  
    );  
  }  
}
```

</td>

</tr>
<tr><td>


<img src="https://user-images.githubusercontent.com/88571731/229866264-dcba7934-b4e9-4dd7-abef-c8d33a3d8506.png"  alt="">
</td></tr>
</table>
