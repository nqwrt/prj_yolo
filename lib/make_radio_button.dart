import 'package:flutter/material.dart';

class CustomRadioGroup extends StatelessWidget {
  final String title;
  final List<String> items;

  final String groupValue;

  final Function(String) onChanged;

  const CustomRadioGroup({
    super.key,
    required this.title,
    required this.items,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      //padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: const Color(0xFFEAE3DD),
        borderRadius: BorderRadius.circular(0),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 제목
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 6),

          // 라디오 그룹
          Row(
            children: items.map((item) {

              final bool isSelected =
                  groupValue == item;

              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    onChanged(item);
                  },

                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0,
                    ),

                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,

                      children: [
                        // 라디오 버튼
                        SizedBox(
                          width: 24,
                          height: 24,

                          child: Stack(
                            alignment: Alignment.center,

                            children: [
                              // 기본 원
                              Image.asset(
                                "assets/img/radio_button.png",
                                width: 24,
                                height: 24,
                              ),

                              // 선택된 경우 점 표시
                              if (isSelected)
                                Image.asset(
                                  "assets/img/radio_button_dot.png",
                                  width: 12,
                                  height: 12,
                                ),
                            ],
                          ),
                        ),

                        const SizedBox(width: 8),
                        // 텍스트
                        Flexible(
                          child: Text(
                            item,

                            overflow:
                            TextOverflow.ellipsis,

                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}