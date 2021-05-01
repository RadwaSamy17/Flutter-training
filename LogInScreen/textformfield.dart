import 'package:flutter/material.dart';

TextEditingController userNameController = TextEditingController();
TextEditingController phoneNumberController = TextEditingController();

Column InputField(BuildContext context, String title, String hinttext,
    bool prefix, double radius, Color color, TextEditingController controller) {
  return Column(
    textDirection: TextDirection.rtl,
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).primaryColor),
        ),
      ),
      SizedBox(
        height: 7,
      ),
      Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(color: Colors.grey[200], width: 3)),
          child: Center(
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  controller: controller,
                  validator: (value) {
                    if (value.isNotEmpty) {
                      controller.text = value;
                    }
                    return controller.text;
                  },
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    hintText: hinttext,
                    //contentPadding: EdgeInsets.only(right: 15),
                    // filled: true,
                    fillColor: Colors.white,
                    suffixIcon: prefix
                        ? Icon(
                            Icons.edit,
                            color: Colors.grey,
                          )
                        : null,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                )),
          )),
    ],
  );
}

Text Username(BuildContext context) {
  return Text(
    userNameController.text,
    style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 20),
  );
}
