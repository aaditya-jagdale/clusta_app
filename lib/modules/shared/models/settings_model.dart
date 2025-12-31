import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    @Default("audio/ka-ching.mp3") String audio,
    @Default("en") String language,
    @Default("en") String voiceLanguage,
    @Default("") String vpa,
    @Default(true) bool isServiceActive,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelFromJson(json);
}
