public class TelemarketingProcessor {
    @InvocableMethod(label='Process Telemarketing Profiles')
    public static void processProfiles(List<Id> profileIds) {
        List<TelemarketingProfile__c> profiles = [
            SELECT Id, Profile_Name__c, Is_Active__c, External_System_ID__c	
            FROM TelemarketingProfile__c
            WHERE Id IN :profileIds
        ];

        for (TelemarketingProfile__c profile : profiles) {
            if (profile.Is_Active__c) {
                System.debug('Processing active profile: ' + profile.Profile_Name__c);
                sendToExternalSystem(profile);
            }
        }
    }

    private static void sendToExternalSystem(TelemarketingProfile__c profile) {
        System.debug('Sending to external system with ID: ' + profile.External_System_ID__c);
        // Simulated callout logic
    }
}