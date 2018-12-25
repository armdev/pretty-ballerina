import ballerina/io;

function testme(string name, string ... more) {

    io:println("Name " + name);
    io:println("Much more " , more);

}

public function main(string... args) {

    testme("Rose", "Mo", "Do", "Re");
    testme("Only Rose ");
}
