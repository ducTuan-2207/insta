import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  const textField(
      {super.key,
      required this.hintText,
      this.isPass = false,
      required this.textEditingController,
      required this.textInputType}); //: super(key: key);

  @override
  Widget build(BuildContext context) {
    // Định nghĩa một InputBorder tùy chỉnh với kiểu dáng dựa trên Divider.createBorderSide
    final InputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));

    // Trả về một widget TextField với các thuộc tính và cấu hình được chỉ định
    return TextField(
      controller:
          textEditingController, // Sử dụng bộ điều khiển textEditingController để quản lý văn bản
      decoration: InputDecoration(
        hintText: hintText, // Hiển thị đoạn văn bản hintText như một gợi ý
        border:
            InputBorder, // Sử dụng InputBorder tùy chỉnh làm đường viền mặc định
        focusedBorder:
            InputBorder, // Áp dụng cùng một đường viền khi TextField được tập trung
        enabledBorder:
            InputBorder, // Áp dụng cùng một đường viền khi TextField được kích hoạt
        filled: true, // Đổ màu nền cho TextField
        contentPadding:
            EdgeInsets.all(8), // Thêm padding xung quanh nội dung văn bản
      ),
      keyboardType:
          textInputType, // Thiết lập loại bàn phím dựa trên textInputType được cung cấp
      obscureText: isPass,
    );
  }
}
