import ballerina/io;
import ballerina/io as console;
import ballerina/math;

public function main() {

    float piValue = math:PI;
    io:println("Simple output "  + piValue);
    console:println("Console "  + piValue);

}
