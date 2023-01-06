import ballerina/io;
import ballerina/http;

type Staff record {
    string id;
    string department;
};

service /staff on new http:Listener(9091) {

    resource function get [string id]() returns Staff|error {
        io:println("Retrieving patient: " + id);
        Staff p = {id: "P632", department: "Sales"};
        return p;
    }
}
