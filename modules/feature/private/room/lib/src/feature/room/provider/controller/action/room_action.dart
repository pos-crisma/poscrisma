// ignore_for_file: library_private_types_in_public_api

sealed class RoomAction {
  static RoomAction onAppear() => _OnAppearTapped();
  static RoomAction updateRoomImage() => _UpdateRoomImage();

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_UpdateRoomImage action) updateRoomImage,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _UpdateRoomImage action => updateRoomImage(action),
      };
}

class _OnAppearTapped extends RoomAction {}

class _UpdateRoomImage extends RoomAction {}
