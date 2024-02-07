import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MedicalLaboratoryAppBar extends AppBar {
  MedicalLaboratoryAppBar({super.key, super.actions})
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
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset('assets/images/logo_horizontal.png'),
                ),
              ),
            ));
}
