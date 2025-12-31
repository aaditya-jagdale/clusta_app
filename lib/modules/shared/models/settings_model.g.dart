// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsModelImpl _$$SettingsModelImplFromJson(Map<String, dynamic> json) =>
    _$SettingsModelImpl(
      audio: json['audio'] as String? ?? "audio/ka-ching.mp3",
      language: json['language'] as String? ?? "en",
      voiceLanguage: json['voiceLanguage'] as String? ?? "en",
      vpa: json['vpa'] as String? ?? "",
      isServiceActive: json['isServiceActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$SettingsModelImplToJson(_$SettingsModelImpl instance) =>
    <String, dynamic>{
      'audio': instance.audio,
      'language': instance.language,
      'voiceLanguage': instance.voiceLanguage,
      'vpa': instance.vpa,
      'isServiceActive': instance.isServiceActive,
    };
