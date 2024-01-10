import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:store/feature/room/dto/room_setting_response_dto.dart';

interface class RoomState {
  AssetImage image;
  ScrollController controller;
  RoomAreaPage areaPage;
  bool isCenterTitle;

  RoomSettingResponseDTO? response;
  ErrorInfo? info;

  RoomState({
    this.image = roomDay,
    this.isCenterTitle = false,
    this.areaPage = RoomAreaPage.all,
    required this.controller,
  });
}

enum RoomAreaPage { all, type, search }
