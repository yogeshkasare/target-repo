public class MassiveSecrets {
    public static void connect() {
        for (Integer i = 0; i < 150; i++) {
            // ❌ Hardcoded API key
            String apiKey = 'SECRET-KEY-' + i;
            String endpoint = 'http://insecure-endpoint.com/api/' + i;
            HttpRequest req = new HttpRequest();
            req.setEndpoint(endpoint);
            req.setHeader('Authorization', 'Bearer ' + apiKey);
        }
    }
}
