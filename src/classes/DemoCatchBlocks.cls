public class DemoCatchBlocks {
    public static void riskyOps() {
        for (Integer i = 0; i < 10; i++) {
            try {
                Integer x = 100 / (i % 2);
            } catch (Exception e) {
                // ❌ Empty catch block
            }
        }
    }
}
