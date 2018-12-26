import ballerina/io;

function(string, string) returns (string) anonFunction =
function(string x, string y) returns (string) {
 return x+ y;
};

public function main() {

    io:println("Output: " + anonFunction.call("Hello Will Join with ", "World.!!!"));



}
