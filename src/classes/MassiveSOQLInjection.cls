public class MassiveSOQLInjection {
    public static void getAccounts(List<String> names) {
        for (String n : names) {
            // ❌ String concatenation in SOQL (injection risk)
            String query = 'SELECT Id, Name FROM Account WHERE Name = \'' + n + '\'';
            Account acc = Database.query(query);
            System.debug(acc);
        }
    }
}
