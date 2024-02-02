import 'package:core/core.dart';
import 'package:store/store.dart';

part 'finder_room_action.freezed.dart';

@freezed
abstract class FinderRoomAction with _$FinderRoomAction {
  const factory FinderRoomAction.onAppear() = _OnAppear;
  const factory FinderRoomAction.buttonTapped(String text) = _ButtonTapped;
  const factory FinderRoomAction.loading(bool isLoading) = _Loading;
  const factory FinderRoomAction.service() = _Service;
  const factory FinderRoomAction.success(Room dto) = _Success;
  const factory FinderRoomAction.failure(ErrorInfo error) = _Failure;
}
