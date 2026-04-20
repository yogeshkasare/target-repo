public class MixedViolations {
    public static void demo(List<String> names) {
        for (Integer i = 0; i < 100; i++) {
            try {
                // ❌ SOQL inside loop
                Account acc = [SELECT Id FROM Account WHERE Name = 'Test' LIMIT 1];
                // ❌ DML inside loop
                acc.Description = 'Bad practice';
                update acc;
                // ❌ Hardcoded secret
                String password = 'HARDCODED-PASSWORD-' + i;
                System.debug(password);
            } catch (Exception e) {
                // ❌ Empty catch block
            }
        }
    }
}
