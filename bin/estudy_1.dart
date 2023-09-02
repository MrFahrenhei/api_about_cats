import 'package:estudy_1/estudy_1.dart' as estudy_1;

void main(List<String> arguments) async {
  try {
    final List<String> data = await estudy_1.fetchData();
    for (String item in data) {
      print(item);
    }
  } catch (e) {
    print('Error: $e');
  }
}
