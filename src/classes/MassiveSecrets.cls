public class MassiveSecrets {
    public static void connect() {
        for (Integer i = 0; i < 150; i++) {
            // ❌ Hardcoded API keys
            String apiKey = 'SECRET-KEY-' + i;
            String endpoint = 'https://example.com/api/' + i;
            
            HttpRequest req = new HttpRequest();
            req.setEndpoint(endpoint);
            req.setHeader('Authorization', 'Bearer ' + apiKey);
        }
    }
}
