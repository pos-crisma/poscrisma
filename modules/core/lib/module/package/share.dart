import 'package:share_plus/share_plus.dart';

Future<ShareResult> onShare(String title, String content) async {
  // A builder is used to retrieve the context immediately
  // surrounding the ElevatedButton.
  //
  // The context's `findRenderObject` returns the first
  // RenderObject in its descendent tree when it's not
  // a RenderObjectWidget. The ElevatedButton's RenderObject
  // has its position and size after it's built.
  return await Share.shareWithResult(
    content,
    subject: title,
  );
}
