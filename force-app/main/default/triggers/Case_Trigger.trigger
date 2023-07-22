trigger Case_Trigger on Case (before insert) {
    
    // Reference the Process Switch Custom Setting I've Created for the Current User's Profile Id (System Administrator)
    Process_Switches__c processSwitches = Process_Switches__c.getInstance(UserInfo.getProfileId());

    // Check that the Process Switch is not Active. If it is Active, then the Case Trigger will be bypassed and will not execute
    // If it's NOT Active, the Trigger will run like normal
    if(!processSwitches.Case_Process_Bypass__c){

        new Case_Trigger_Handler().run();
        System.debug('The Case Trigger Ran');
    }
}