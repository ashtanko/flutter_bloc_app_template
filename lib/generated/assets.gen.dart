/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $GoogleFontsGen {
  const $GoogleFontsGen();

  /// File path: google_fonts/Roboto-Medium.ttf
  String get robotoMedium => 'google_fonts/Roboto-Medium.ttf';

  /// List of all assets
  List<String> get values => [robotoMedium];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/chevrons-right.svg
  SvgGenImage get chevronsRight =>
      const SvgGenImage('assets/images/chevrons-right.svg');

  /// File path: assets/images/file_doc.svg
  SvgGenImage get fileDoc => const SvgGenImage('assets/images/file_doc.svg');

  /// File path: assets/images/file_pdf.svg
  SvgGenImage get filePdf => const SvgGenImage('assets/images/file_pdf.svg');

  /// File path: assets/images/flutter_logo.png
  AssetGenImage get flutterLogo =>
      const AssetGenImage('assets/images/flutter_logo.png');

  /// File path: assets/images/giveway_outline.svg
  SvgGenImage get givewayOutline =>
      const SvgGenImage('assets/images/giveway_outline.svg');

  /// File path: assets/images/google_pay.svg
  SvgGenImage get googlePay =>
      const SvgGenImage('assets/images/google_pay.svg');

  /// File path: assets/images/help_outline.svg
  SvgGenImage get helpOutline =>
      const SvgGenImage('assets/images/help_outline.svg');

  /// File path: assets/images/hide.svg
  SvgGenImage get hide => const SvgGenImage('assets/images/hide.svg');

  /// File path: assets/images/icon_star.svg
  SvgGenImage get iconStar => const SvgGenImage('assets/images/icon_star.svg');

  /// File path: assets/images/icon_star_active.svg
  SvgGenImage get iconStarActive =>
      const SvgGenImage('assets/images/icon_star_active.svg');

  /// File path: assets/images/phone.svg
  SvgGenImage get phone => const SvgGenImage('assets/images/phone.svg');

  /// File path: assets/images/trip_outline.svg
  SvgGenImage get tripOutline =>
      const SvgGenImage('assets/images/trip_outline.svg');

  /// File path: assets/images/twemoji_sun_behind_cloud.svg
  SvgGenImage get twemojiSunBehindCloud =>
      const SvgGenImage('assets/images/twemoji_sun_behind_cloud.svg');

  /// File path: assets/images/visa.svg
  SvgGenImage get visa => const SvgGenImage('assets/images/visa.svg');

  /// List of all assets
  List<dynamic> get values => [
        chevronsRight,
        fileDoc,
        filePdf,
        flutterLogo,
        givewayOutline,
        googlePay,
        helpOutline,
        hide,
        iconStar,
        iconStarActive,
        phone,
        tripOutline,
        twemojiSunBehindCloud,
        visa
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $GoogleFontsGen googleFonts = $GoogleFontsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated Clip? clipBehavior,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior ?? Clip.hardEdge,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
