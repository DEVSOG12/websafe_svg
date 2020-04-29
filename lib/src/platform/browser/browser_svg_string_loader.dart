import 'package:meta/meta.dart';
import 'package:websafe_svg/src/platform/browser/browser_svg_loader.dart';

@immutable
class BrowserSvgStringLoader implements BrowserSvgLoader {
  BrowserSvgStringLoader({
    @required this.string,
  }) : assert(string?.isNotEmpty == true);

  final String string;

  @override
  bool operator ==(dynamic other) =>
      other is BrowserSvgStringLoader && other.string == string;

  @override
  int get hashCode => string.hashCode;

  @override
  Future<String> load() => Future.value(string);
}
