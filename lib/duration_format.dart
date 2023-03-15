extension DurationFormat on Duration {
  // returns HH:MM:SS
  String secToTime() {
    return RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
            .firstMatch("$this")
            ?.group(1) ??
        '$this';
  }
}
