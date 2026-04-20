public class MassiveSOQLInjection {
    public static void getAccounts(List<String> names) {
        for (Integer i = 0; i < 150; i++) {
            // ❌ Unsafe query construction
            String query = 'SELECT Id, Name FROM Account WHERE Name = \'' + names[i % names.size()] + '\'';
            Account acc = Database.query(query);
            System.debug(acc);
        }
    }
}
