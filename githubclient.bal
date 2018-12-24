import ballerina/io;
import ballerina/http;
import ballerina/log;


public function main() {
    http:Client clientEP = new("https://api.github.com");

    var resp = clientEP->get("/events");

    if (resp is http:Response) {
        var payload = resp.getJsonPayload();

        io:println(payload);

    }
}
