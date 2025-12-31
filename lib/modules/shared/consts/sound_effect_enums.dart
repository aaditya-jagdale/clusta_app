enum SoundEffect {
  kaChing,
  gunshot;

  // get filename function
  String get fileName {
    switch (this) {
      case SoundEffect.kaChing:
        return "audio/ka-ching.mp3";
      case SoundEffect.gunshot:
        return "audio/gunshot.mp3";
    }
  }

  // get displayname
  String get displayName {
    switch (this) {
      case SoundEffect.kaChing:
        return "Ka-Ching";
      case SoundEffect.gunshot:
        return "Gun Shot";
    }
  }
}
