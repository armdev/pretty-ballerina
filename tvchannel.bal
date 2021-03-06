import ballerina/io;
import ballerina/http;
import ballerina/log;

channel<json> jsonChannel = new;

service channelService on new http:Listener(9595){

    resource function receive(http:Caller caller, http:Request request){
        string key ="DR";

        json jsonMsg;

        jsonMsg = <- jsonChannel, key;


        var result = caller->respond(jsonMsg);

        if(result is error){
            log:printError("Error sending response", err = result);
        }
    }

    resource function send(http:Caller caller, http:Request request) {

        json|error message = request.getJsonPayload();

        string key = "DR";


        json jsonMessage = {};

        if (message is json) {
            jsonMessage = message;
        } else {
            log:printError("Invalid message content", err = message);
        }
        jsonMessage -> jsonChannel, key;

        var result = caller->respond({ "send": "Success!!" });

        if (result is error) {
            log:printError("Error sending response", err = result);
        }
    }


}
