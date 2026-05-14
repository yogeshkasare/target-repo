public class DemoClass {
    public static void sayHello() {
        // ❌ Hardcoded debug message (minor, but flagged in some s
        System.debug('Hello from Opsera demo!');
        
        // ❌ SOQL inside loop
        for (Integer i = 0; i < 5; i++) {
            Account acc = [SELECT Id, Name FROM Account WHERE Name = 'Test' LIMIT 1];
            System.debug(acc);
        }
        
        // ❌ Empty catch block
        try {
            Integer x = 10 / 0;
        } catch (Exception e) {
            // violation: nothing logged or handled
        }
        
        // ❌ Hardcoded secret (security violation)
        String apiKey = 'HARDCODED-SECRET-12345';
        System.debug(apiKey);
    }
}
