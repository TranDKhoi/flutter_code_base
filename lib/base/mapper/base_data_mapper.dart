// M is Model and E is Entity
abstract class BaseDataMapper<M, E> {
  const BaseDataMapper();

  E mapToEntity(M? model);

  List<E> mapToListEntity(List<M>? listModel) =>
      listModel?.map(mapToEntity).toList() ?? List.empty();

  M mapToModel(E entity);

  M? mapToNullableModel(E? entity) =>
      entity == null ? null : mapToModel(entity);

  List<M>? mapToNullableListModel(List<E>? listEntity) =>
      listEntity?.map(mapToModel).toList();

  List<M> mapToListModel(List<E>? listEntity) =>
      mapToNullableListModel(listEntity) ?? List.empty();
}
