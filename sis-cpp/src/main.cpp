#include <iostream>
#include <pqxx/pqxx>

int main() {
    try {
        
        std::string conn_str = "host=blabla port=blabla dbname=blabla user=blabla password=blabla";
        pqxx::connection c(conn_str);
        
        if (c.is_open()) {
            std::cout << "Successfully connected to: " << c.dbname() << std::endl;
        } else {
            std::cout << "Could not open database." << std::endl;
            return 1;
        }
    } catch (const std::exception &e) {
        std::cerr << "Error: " << e.what() << std::endl; 
        return 1;
    }
    return 0;
}