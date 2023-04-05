# Flutter Credit Card

Flutter Credit Card package lets you add  beautiful credit card to your flutter app.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):

```yaml
dependencies:
  fluttercreditcard: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:fluttercreditcard/fluttercreditcard.dart';
```

<<<<<<< HEAD
## Example

There are a number of properties that you can modify:
- height
- width
- cradHolderName
- cardNumber
- backgroundColor
- fontColor
- cvvNumber
  =======
## Example

There are a number of properties that you can modify:
- height
- width
- cradHolderName
- cardNumber
- backgroundColor
- fontColor
- cvvNumber
>>>>>>> d61cd3c30a6c503d40c4df3ac5f3b72657c8d0ec

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
<td>
<!--   ![Screenshot 2023-04-04 223836]( -->

<img  src="https://user-images.githubusercontent.com/88571731/229866264-dcba7934-b4e9-4dd7-abef-c8d33a3d8506.png"  alt="">
</td>
</tr>
</table>
