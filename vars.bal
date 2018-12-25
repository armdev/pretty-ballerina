import ballerina/io;

int price = 100;
public int count = 0;
const string ok ="JustOK";
public final int userStatus = 1;


public function main() {


    io:println("Price " + price);
    count += 2;

    io:println("Count " + count);

    boolean iPhoneAvailable = false;
    io:println("iPhoneAvailable " + iPhoneAvailable);

   // userStatus += 4;

    io:println("UserStatus " + userStatus);


}
