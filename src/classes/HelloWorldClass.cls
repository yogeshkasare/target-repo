public class HelloWorldClass {
    
    // A simple method to print a messa
    public static void sayHello() {
        System.debug('Hello, Salesforce World!');
    }
    
    // A method to add two numbers
    public static Integer addNumbers(Integer a, Integer b) {
        return a + b;
    }
    
    // A method to fetch a single Account record
    public static Account getFirstAccount() {
        return [SELECT Id, Name FROM Account LIMIT 1];
    }
}
