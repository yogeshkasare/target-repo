@isTest
private class ContactHandlerTest {

    @isTest
    static void testGetContactEmail() {
        Contact con = new Contact(
            LastName = 'Test',
            Email = 'test@example.com'
        );

        String result = ContactHandler.getContactEmail(con);

        System.assertEquals('test@example.com', result);
    }
}