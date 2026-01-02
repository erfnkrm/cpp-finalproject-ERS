#include <iostream>
#include <pqxx/pqxx>

try {

  std::string connection_string =
      "host=ers_db port=5432 dbname=ers_db user=admin password=Ers-Root@123";

  pqxx::connection C(connection_string);

  if (C.is_open()) {
    std::cout << "SUCCESS: Connected to database: " << C.dbname() << std::endl;
  } else {
    std::cout << "ERROR: Failed to connect!" << std::endl;
    return 1;
  }

} catch (const std::exception &e) {
  std::cerr << "ERROR: " << e.what() << std::endl;
  return 1;
}
return 0;
}
