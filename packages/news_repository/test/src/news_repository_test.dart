// ignore_for_file: prefer_const_constructors
import 'package:news_repository/news_repository.dart';
import 'package:test/test.dart';

void main() {
  group('NewsRepository', () {
    test('can be instantiated', () {
      expect(NewsRepository(), isNotNull);
    });
  });
}
