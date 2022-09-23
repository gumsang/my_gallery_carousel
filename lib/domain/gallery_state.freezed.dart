// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gallery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GalleryState {
  List<XFile>? get imageList => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GalleryStateCopyWith<GalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryStateCopyWith<$Res> {
  factory $GalleryStateCopyWith(
          GalleryState value, $Res Function(GalleryState) then) =
      _$GalleryStateCopyWithImpl<$Res>;
  $Res call({List<XFile>? imageList, int index});
}

/// @nodoc
class _$GalleryStateCopyWithImpl<$Res> implements $GalleryStateCopyWith<$Res> {
  _$GalleryStateCopyWithImpl(this._value, this._then);

  final GalleryState _value;
  // ignore: unused_field
  final $Res Function(GalleryState) _then;

  @override
  $Res call({
    Object? imageList = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      imageList: imageList == freezed
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<XFile>?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_GalleryStateCopyWith<$Res>
    implements $GalleryStateCopyWith<$Res> {
  factory _$$_GalleryStateCopyWith(
          _$_GalleryState value, $Res Function(_$_GalleryState) then) =
      __$$_GalleryStateCopyWithImpl<$Res>;
  @override
  $Res call({List<XFile>? imageList, int index});
}

/// @nodoc
class __$$_GalleryStateCopyWithImpl<$Res>
    extends _$GalleryStateCopyWithImpl<$Res>
    implements _$$_GalleryStateCopyWith<$Res> {
  __$$_GalleryStateCopyWithImpl(
      _$_GalleryState _value, $Res Function(_$_GalleryState) _then)
      : super(_value, (v) => _then(v as _$_GalleryState));

  @override
  _$_GalleryState get _value => super._value as _$_GalleryState;

  @override
  $Res call({
    Object? imageList = freezed,
    Object? index = freezed,
  }) {
    return _then(_$_GalleryState(
      imageList: imageList == freezed
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<XFile>?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GalleryState implements _GalleryState {
  const _$_GalleryState(
      {final List<XFile>? imageList = const [], this.index = 0})
      : _imageList = imageList;

  final List<XFile>? _imageList;
  @override
  @JsonKey()
  List<XFile>? get imageList {
    final value = _imageList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'GalleryState(imageList: $imageList, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GalleryState &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_imageList),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_GalleryStateCopyWith<_$_GalleryState> get copyWith =>
      __$$_GalleryStateCopyWithImpl<_$_GalleryState>(this, _$identity);
}

abstract class _GalleryState implements GalleryState {
  const factory _GalleryState({final List<XFile>? imageList, final int index}) =
      _$_GalleryState;

  @override
  List<XFile>? get imageList;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_GalleryStateCopyWith<_$_GalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}
