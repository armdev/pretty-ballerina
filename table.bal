import ballerina/io;

type Employee record {
    int id;
    int age;
    string name;
};

public function main(string... args) {
    table<Employee> tableEmployee = table {
        { key id, age, name },
        [ { 1, 20, "Mary" },
        { 2, 30, "John" },
        { 3, 23, "Jim" }
        ]
    };

    foreach var row in tableEmployee {
        io:println(row);
    }


    io:println("Using query syntax:");
    table<Employee> filteredTable = from tableEmployee where age > 21 select *;

    foreach var row in filteredTable {
        io:println(row);
    }
}