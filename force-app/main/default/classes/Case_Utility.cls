public with sharing class Case_Utility {

    private final String HANDLER_NAME= 'Case_Trigger_Handler';

    public static void updateCaseSubject (List<Case> caseList) {
        for(Case cs: caseList) {
            cs.subject = 'Kew New Subject';
        }
    }

    /*
    Example showing how we can control / bypass trigger runs:

    public static void createCase() {
        TriggerHandler.bypass(HANDLER_NAME);

        Case newCase = new Case();
        newCase.Subject = 'Awesome Case';
        insert newCase;


        TriggerHandler.clearBypass(HANDLER_NAME);
    }
    */
}