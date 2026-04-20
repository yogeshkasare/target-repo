public class DemoMixedViolations {
    public static void run(List<String> names) {
        for (Integer i = 0; i < 5; i++) {
            // ❌ Debug statement
            System.debug('Iteration ' + i);
            
            try {
                Integer y = 100 / (i % 2);
            } catch (Exception e) {
                // ❌ Empty catch block
            }
            
            // ❌ Hardcoded credential
            String password = 'HARDCODED-PASS-' + i;
            System.debug(password);
        }
        
        // ❌ Unsafe SOQL injection
        String query = 'SELECT Id FROM Contact WHERE LastName = \'' + names[0] + '\'';
        Contact c = Database.query(query);
    }
}
