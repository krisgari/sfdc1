public with sharing class OpportunityTriggerHandler {
    public OpportunityTriggerHandler(){
        
    }

        public void OnBeforeInsert(List<Opportunity> newOpportunity)
    {
        system.debug('Opportunity Trigger On Before Insert');
    }
    public void OnAfterInsert(List<Opportunity> newOpportunity)
    {
        system.debug('Opportunity Trigger On After Insert');
    }
    public void OnAfterUpdate( List<Opportunity> newOpportunity, List<Opportunity> oldOpportunity, Map<ID, Opportunity> newOpportunityMap , Map<ID, Opportunity> oldOpportunityMap )
    {
        system.debug('Opportunity Trigger On After Update ');
       // AccountActions.updateContact (newAccount);
    }
    public void OnBeforeUpdate( List<Opportunity> newOpportunity, List<Opportunity> oldOpportunity, Map<ID, Opportunity> newOpportunityMap , Map<ID, Opportunity> oldOpportunityMap )
    {
        system.debug('Opportunity Trigger On Before Update ');
    }
    /*
     @future 
    public static void OnAfterUpdateAsync(Set<ID> newAccountIDs)
    {

    }      
    public boolean IsTriggerContext
    {
        get{ return m_isExecuting;}
    }
    
    public boolean IsVisualforcePageContext
    {
        get{ return !IsTriggerContext;}
    }
    
    public boolean IsWebServiceContext
    {
        get{ return !IsTriggerContext;}
    }
    
    public boolean IsExecuteAnonymousContext
    {
        get{ return !IsTriggerContext;}
    }
     */
}