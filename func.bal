import ballerina/io;

function sendMessage(string message) {
  io:println("Sending message: " + message);
}

function addValue(int a, int b) returns(int) {
 return a + b;
}

function getUsername(string message) returns(string) {
   if(message.equalsIgnoreCase("java")){
       return "javatar";
   }else{
       return "BALLERINA";
   }
}

public function main() {
    sendMessage("Aloha My Dear!");
    int result = addValue(200, 500);
    io:println(result);
    string username = getUsername("Dragon");
    io:println("Found the best username: " + username);
}
