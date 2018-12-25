import ballerina/io;

function printDefaultCredentials(string username = "armdev", string password = "Abcd", int status = 0) {

    io:println("Username is " + username);
    io:println("Password is " + password);
    io:println("Status is " + status);
    io:println("*********************************************************************");
    io:println("Username ", username, " | Password ", password, " | Status ", status);
    io:println("---------------------------------------------------------------------");

}

public function main(string... args) {

    printDefaultCredentials();
    printDefaultCredentials(username = "MXTX", password = "GOGO", status = 7777);
}

