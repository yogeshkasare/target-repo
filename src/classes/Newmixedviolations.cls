public class MixedViolationsNew {
    public static void riskyOperation() {
        try {
            Integer x = 10 / 0;
        } catch (Exception e) {
            // ❌ Empty catch block (repeated 15 times)
        }
    }

    public static void repeatEmptyCatch() {
        for (Integer i = 0; i < 25; i++) {
            try {
                Integer y = i / 0;
            } catch (Exception e) {
                // ❌ Empty catch block (repeated 25 times)
            }
        }
    }

    public static void unsafeSOQL(List<String> names) {
        for (String n : names) {
            // ❌ Unsafe query construction (repeated 20 times)
            String query = 'SELECT Id FROM Account WHERE Name = ' ' + n + ' ' ';
            Account a = Database.query(query);
        }
    }
}
