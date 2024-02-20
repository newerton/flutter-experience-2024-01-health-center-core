import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HealthCenterAppBar extends AppBar {
  HealthCenterAppBar(
      {super.key, super.actions, super.automaticallyImplyLeading})
      : super(
            toolbarHeight: 72,
            backgroundColor: Colors.transparent,
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark),
            flexibleSpace: Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.50),
                  offset: const Offset(0, 1),
                  blurRadius: 4,
                )
              ]),
              child: SafeArea(
                child: Padding(
                  padding: automaticallyImplyLeading
                      ? const EdgeInsets.only(left: 56)
                      : const EdgeInsets.only(left: 16),
                  child: Image.asset('assets/images/logo_horizontal.png'),
                ),
              ),
            ));
}
