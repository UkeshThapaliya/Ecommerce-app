
import 'package:get_storage/get_storage.dart';

class ThLocalStorage{
  static final ThLocalStorage _instance = ThLocalStorage._internal();
  factory ThLocalStorage(){
    return _instance;
  }
  ThLocalStorage._internal();
  final _storage = GetStorage();

  //Generic Method to Save data
  Future<void> saveData <T> (String key, T value)async{
    await _storage.write(key, value);
  }

  //generic method to Read Data
  T? readData<T>(String key){
    return _storage.read<T>(key);
  }

  //Generic Method to remove Data
   Future<void> removeData <T> (String key, T value)async{
    await _storage.remove(key);
  }

  //Clear all the data in storage
   Future<void> clearAll() async{
    await _storage.erase();
  }
}