import 'package:flutter/material.dart';
import 'package:flutter_elevate/dependancy_injection.dart';
import 'package:flutter_elevate/features/products/presentation/views/product_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInj();
  runApp(const ElevateTask());
}

class ElevateTask extends StatelessWidget {
  const ElevateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elevate Task',
      home: ProductView(),
    );
  }
}
