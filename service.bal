import ballerina/io;
import ballerina/http;

type Patient record {
    string id;
    string name;
};

service /patients on new http:Listener(9090) {

    resource function get [string id]() returns Patient|error {
        io:println("Retrieving patient: " + id);
        Patient p = {id: "P632", name: "Mike Ross"};
        return p;
    }
}
