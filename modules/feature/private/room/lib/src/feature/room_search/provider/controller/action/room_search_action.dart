// ignore_for_file: library_private_types_in_public_api

sealed class RoomSearchAction {
  static RoomSearchAction onAppear() => _OnAppearTapped();
  static RoomSearchAction updateRoomSearchImage() => _UpdateRoomSearchImage();

  T fold<T>(
    T Function(_OnAppearTapped action) onAppear,
    T Function(_UpdateRoomSearchImage action) updateRoomSearchImage,
  ) =>
      switch (this) {
        _OnAppearTapped action => onAppear(action),
        _UpdateRoomSearchImage action => updateRoomSearchImage(action),
      };
}

class _OnAppearTapped extends RoomSearchAction {}

class _UpdateRoomSearchImage extends RoomSearchAction {}
