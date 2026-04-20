public class MassiveSOQLDMLNew {
    public static void processAccounts(List<String> names) {
        for (String n : names) {
            // ❌ SOQL inside loop (repeated 20 times)
            Account acc = [SELECT Id, Name FROM Account WHERE Name = :n LIMIT 1];
            acc.Description = 'Updated';
            // ❌ DML inside loop (repeated 20 times)
            update acc;
        }
    }

    public static void repeatViolations() {
        for (Integer i = 0; i < 30; i++) {
            Account a = [SELECT Id FROM Account LIMIT 1];
            delete a; // ❌ DML inside loop (repeated 30 times)
        }
    }
}
