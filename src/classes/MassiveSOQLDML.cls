public class MassiveSOQLDML {
    public static void processData(List<String> names) {
        for (Integer i = 0; i < 50; i++) {
            for (String n : names) {
                // ❌ SOQL inside nested loop
                Account acc = [SELECT Id, Name FROM Account WHERE Name = :n LIMIT 1];
                
                // ❌ DML inside loop
                acc.Description = 'Updated ' + i;
                update acc;
            }
        }
    }
}
