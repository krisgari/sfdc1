public class DynSoql {
    public static void test(){
        Sobject s = new Account();
        System.debug(s.getsObjectType() == Account.sObjectType);
        
		Schema.DescribeSObjectResult dsr = Account.sObjectType.getDescribe();
		// Get the field describe result for the Name field on the Account object
		Schema.DescribeFieldResult dfr = Schema.sObjectType.Account.fields.Name;
		// Verify that the field token is the token for the Name field on an Account object
		System.assert(dfr.getSObjectField() == Account.Name);
		// Get the field describe result from the token
		dfr = dfr.getSObjectField().getDescribe();  
        
        Schema.sObjectType tokenA = s.getSObjectType();
        Account b = (Account)tokenA.newSObject();
        System.debug('accct:'+b);
        
        Map<String, Schema.SObjectType> gd = Schema.getGlobalDescribe(); 
        Map<String, Schema.SObjectField> mapf = Schema.SObjectType.Account.Fields.getMap();
        
        Schema.SObjectField fieldToken = Account.Description;

        
    }
}