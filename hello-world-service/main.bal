import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();
configurable string abc = ?;
service / on httpDefaultListener {

    resource function get greeting(string name = "world") returns string {
        // Returns the greeting message as a string
        return "Hello, " + name;
    }
}
