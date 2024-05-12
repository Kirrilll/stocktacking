class StuffDto {
  final int id;


  // storage: {id: num, title: string, type: user | stock | storage) -> stock (adress, lat, lon), storage ( storage )
  //Вся информация о предмете + storage - user /stock / storage (storageType: user | stock | storage)
  const StuffDto({required this.id});
}