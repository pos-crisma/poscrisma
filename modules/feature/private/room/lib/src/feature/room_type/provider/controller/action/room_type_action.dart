// ignore_for_file: library_private_types_in_public_api

sealed class RoomTypeAction {
  static RoomTypeAction onAppear() => _OnAppearTapped();
  static RoomTypeAction updateRoomTypeImage() => _UpdateRoomTypeImage();

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_UpdateRoomTypeImage action) updateRoomTypeImage,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _UpdateRoomTypeImage action => updateRoomTypeImage(action),
      };
}

class _OnAppearTapped extends RoomTypeAction {}

class _UpdateRoomTypeImage extends RoomTypeAction {}
