// import 'package:flutter/material.dart';
//
// class CustomRadioIcon extends StatelessWidget {
//   final bool selected;
//   final VoidCallback onTap;
//
//   const CustomRadioIcon({
//     super.key,
//     required this.selected,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Icon(
//         selected
//             ? Icons.radio_button_checked
//             : Icons.radio_button_unchecked,
//         color: selected ? Colors.red : Colors.grey,
//         size: 24,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomRadioIcon extends StatelessWidget {
  final bool selected;
  final VoidCallback onTap;

  const CustomRadioIcon({
    super.key,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 바깥 원 (항상 회색)
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
            ),
          ),

          // 선택되었을 때 안쪽 빨간 점
          if (selected)
            Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}