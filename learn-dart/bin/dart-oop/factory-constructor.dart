class Database {
  Database() {
    print("Database connected");
  }

  static Database database = Database();

  factory Database.set() {
    return database;
  }
}

void main() {
  var database1 = Database.set();
  var database2 = Database.set();
  print(database1 == database2);
}
