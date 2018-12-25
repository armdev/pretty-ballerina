import ballerina / io;

public function main() {

worker firstWorker{
 io:println("I am first worker!");
}

worker secondWorker {
io:println("I am a second worker!");
}

}
