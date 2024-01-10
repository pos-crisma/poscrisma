import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:store/feature/room/dto/room_setting_response_dto.dart';

interface class RoomState {
  AssetImage image;
  ScrollController controller;

  bool isCenterTitle;

  RoomSettingResponseDTO? response;

  RoomState({
    this.image = roomDay,
    this.isCenterTitle = false,
    required this.controller,
  });
}
