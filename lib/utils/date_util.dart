class DateUtil {
  static String discWriteTime(DateTime writeTime) {
    final _now = DateTime.now();

    final _t = writeTime.difference(_now);

    if (_t.inDays < 0) return '${_t.inDays.abs()}일 전';
    if (_t.inHours < 0) return '${_t.inHours.abs()}시간 전';
    if (_t.inMinutes < 0) return '${_t.inMinutes.abs()}분 전';
    return '${_t.inSeconds.abs()}초 전';
  }
}
