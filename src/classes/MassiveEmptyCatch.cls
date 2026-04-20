public class MassiveEmptyCatch {
    public static void riskyOps() {
        for (Integer i = 0; i < 200; i++) {
            try {
                Integer x = 10 / (i % 2);
            } catch (Exception e) {
                // ❌ Empty catch block
            }
        }
    }
}
