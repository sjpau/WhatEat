// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_preview.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipePreviewAdapter extends TypeAdapter<RecipePreview> {
  @override
  final int typeId = 1;

  @override
  RecipePreview read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecipePreview(
      label: fields[0] as String,
      image: fields[1] as String,
      source: fields[2] as String,
      url: fields[3] as String,
      calories: fields[4] as int,
      healthLabels: (fields[5] as List).cast<String>(),
      ingredientCount: fields[6] as int,
      shareAs: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RecipePreview obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.label)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.source)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.calories)
      ..writeByte(5)
      ..write(obj.healthLabels)
      ..writeByte(6)
      ..write(obj.ingredientCount)
      ..writeByte(7)
      ..write(obj.shareAs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipePreviewAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
