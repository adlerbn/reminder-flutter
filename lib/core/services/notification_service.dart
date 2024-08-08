import 'package:injectable/injectable.dart';
import 'package:reminder/core/db/database.dart';
import 'package:reminder/models/notification_entity_model.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class NotificationService {
  Future<int> insert(NotificationEntityModel model) async {
    final db = await database;

    final id = await db.insert(
      'notifications',
      model.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    return id;
  }

  Future<void> update(NotificationEntityModel model) async {
    final db = await database;

    await db.update(
      'notifications',
      model.toJson(),
      where: 'id = ?',
      whereArgs: [model.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> delete(int id) async {
    final db = await database;

    await db.delete(
      'notifications',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<NotificationEntityModel?> get(int id) async {
    final db = await database;

    final notificationMaps = await db.query(
      'notifications',
      where: 'id = ?',
      whereArgs: [id],
    );

    final map = notificationMaps.firstOrNull;
    if (map == null) return null;

    return NotificationEntityModel.fromJson(map);
  }

  Future<List<NotificationEntityModel>> getList() async {
    final db = await database;

    final notificationMaps = await db.query(
      'notifications',
    );

    return notificationMaps
        .map((e) => NotificationEntityModel.fromJson(e))
        .toList();
  }
}
