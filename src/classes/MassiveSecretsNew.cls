public class MassiveSecretsNew {
    public static void connect() {
        // ❌ Hardcoded secrets (repeated 40 times)
        String apiKey1 = 'SECRET-KEY-111';
        String apiKey2 = 'SECRET-KEY-222';
        String apiKey3 = 'SECRET-KEY-333';
        String apiKey4 = 'SECRET-KEY-444';
        String apiKey5 = 'SECRET-KEY-555';
        String apiKey6 = 'SECRET-KEY-666';
        String apiKey7 = 'SECRET-KEY-777';
        String apiKey8 = 'SECRET-KEY-888';
        String apiKey9 = 'SECRET-KEY-999';
        String apiKey10 = 'SECRET-KEY-000';
        // ... repeated to reach 40 hardcoded secrets
    }

    public static void unsafeQueries(List<String> names) {
        for (String n : names) {
            // ❌ Unsafe query construction (SOQL injection risk, repeated 20 times)
            String query = 'SELECT Id FROM Contact WHERE Name = ' ' + n + ' ' ';
            Contact c = Database.query(query);
        }
    }
}
