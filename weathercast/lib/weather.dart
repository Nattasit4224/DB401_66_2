import 'package:http/http.dart' as http;

class Weather {
//eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjU2MGQ2MjMyNjYxMWM1NDRhMDkwNzY2MDMyZWYxZDg4YmFlNjllODQ4OGVmZDMwMTBhZjIzYWEwOWE5MjM1YmFhMWNmNGNmMDMxMmMwZjlkIn0.eyJhdWQiOiIyIiwianRpIjoiNTYwZDYyMzI2NjExYzU0NGEwOTA3NjYwMzJlZjFkODhiYWU2OWU4NDg4ZWZkMzAxMGFmMjNhYTA5YTkyMzViYWExY2Y0Y2YwMzEyYzBmOWQiLCJpYXQiOjE3MDc4ODIyMzEsIm5iZiI6MTcwNzg4MjIzMSwiZXhwIjoxNzM5NTA0NjMxLCJzdWIiOiIzMDAzIiwic2NvcGVzIjpbXX0.tHkh0um5Q0gyUPXnCk1oK7UA7Iac5SKcgw2qmkF8BR72OQWWKJdFoOkNRGFoGXiHwx2vdvmZZgGNLSqyGC0DI3ikDvW81ytxxRSQ6bTSySh4MizyKTxgWxtCgE4SDKT3c25MxfZtSAaP57N8NnyvZQIWSil1_3ENLWioDakOxJESNI8WzgxOI7Z-UVGoOfPgPC1aSDVupz-FHGU1oZUIOAGDXNxhrYlP76OYkxSCf7aSFv0S1knhnUBAiEDe9Wo2BftpMmBxWoAV2gEkKXLfpPiAfb90uEYEdSm3eWqWrPKyjXN0KgwqxTHgwxpHt7h2y2Df7Bg4E2cAz-cTYbz65cJIYFWy35Jq4P04O3lHVcXsprsvZFVP4JbUJc-I2orV34MXekUQdvKFW1nMFOZlicgCvTdqn770Xk9Bi10IrhzepJeXt3X3i9N_kxiWOuCKZgQ8V0jkAT3uCzSQHut7sEBR_-QNXv7gndvofwLBDr0s3YutqxRTIVmFJbZpEKheyXMOaxDM6kRQLe2KtUOeGg6MMwmKkkuRTJUk6YT5EFmVDBNWip7ARqzlo4jaLeNgEJ-D6jdF6L0DyH1_ZhiihTpmYYC9oITn_LcGiJ_gJyD3UHiWRoEf6O-buEgaQ5UqHahteVmy6YLf9dJ3kDISGGDiKcnBNs2NbUPMijKAmbM
  static const _condition = [
    '',
    'ท้องฟ้าแจ่มใส (Clear)',
    'มีเมฆบางส่วน (Partly cloudy)',
    'เมฆเป็นส่วนมาก (Cloudy)',
    'มีเมฆมาก (Overcast)',
    'ฝนตกเล็กน้อย (Light rain)',
    'ฝนปานกลาง (Moderate rain)',
    'ฝนตกหนัก (Heavy rain)',
    'ฝนฟ้าคะนอง (Thunderstorm)',
    'อากาศหนาวจัด (Very cold)',
    'อากาศหนาว (Cold)',
    'อากาศเย็น (Cool)',
    'อากาศร้อนจัด (Very hot)',
  ];

  static const _symbol = [
    '',
    '🌈',
    '☁',
    '☁☁',
    '☁☁☁',
    '🌦',
    '🌧',
    '☔',
    '⛈',
    '☃',
    '⛄',
    '❄',
    '☀',
  ];
  final String address;
  final double temperature;
  final int cond;

  Weather(
      {required this.address, required this.temperature, required this.cond});

  String get condition => _condition[cond];

  String get symbol => _symbol[cond];
}
