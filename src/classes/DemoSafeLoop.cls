public class DemoSafeLoop {
    public static void processAccounts(List<String> names) {
        for (String n : names) {
            // ❌ Debug statement (violation)
            System.debug('Processing ' + n);
            
            try {
                // ❌ Empty catch block (violation)
                Integer x = 10 / 0;
            } catch (Exception e) {
            }
        }
        
        // ❌ Hardcoded credential (violation)
        String apiKey = 'HARDCODED-SECRET-123';
        System.debug(apiKey);
        
        // ❌ Unsafe SOQL injection (violation)
        String query = 'SELECT Id FROM Account WHERE Name = \'' + names[0] + '\'';
        Account acc = Database.query(query);
    }
}
