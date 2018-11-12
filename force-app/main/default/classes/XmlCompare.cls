public class XmlCompare{
        public static void parseXml(){
        String xml = ' <SynchResponse xmlns="http://www.wellsfargo.com/CreditBridge"> <ResponseHeader> <Status>0</Status> <RequestTime>2018-05-10T22:12:53.484Z</RequestTime> <ResponseTime>2018-05-10T22:12:54.638Z</ResponseTime> <Context> <UserName>SALESFORCE</UserName> <Method>POST</Method> <PathContext>underwriting</PathContext> <Version>Integration</Version> <AppContext>LendingRequestSynchronization</AppContext> <ResidualPath>LendingRequestSynchronization/</ResidualPath> <Query>https://wspra96a0258.wellsfargo.com:10059/underwriting/services/Integration/LendingRequestSynchronization</Query> <Context>services</Context> </Context> <Message>Synchronization accepted.</Message> <FWBuild>3.0.0_134</FWBuild> <Build>31020180215_1540</Build> </ResponseHeader> <Package> <ExternalPackageId>006q000000F8skDAAR</ExternalPackageId> <PackageId>2168</PackageId> <PartyName>Squared R Tech, LLC</PartyName> <LineOfBusiness>SBA</LineOfBusiness> <LendingRequest> <LendingRequestInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ExtendedLendingRequestInfo"> <ExternalLendingRequestId>006q000000F8skDAAR</ExternalLendingRequestId> <LendingRequestId>2325</LendingRequestId> <ActivityRef>2369</ActivityRef> <LendingRequestName>Squared R Tech4444, LLC</LendingRequestName> <Amount>700000.0</Amount> <CurrencyCode>USD</CurrencyCode> <Product>7A - Standard</Product> <LastModifyDate>2018-05-10T21:38:09.104Z</LastModifyDate> <LendingRequestStage>Sales</LendingRequestStage> <OpportunityStage>Chasing</OpportunityStage> <ActivityStatus>In Process</ActivityStatus> <ActivityStatusReason>Checklist</ActivityStatusReason> <OverallStatus>RED</OverallStatus> <Construction>false</Construction> <BridgeLoanAmount xsi:nil="true"/> <ProjectedCloseDate>2018-07-23Z</ProjectedCloseDate> <CloseDate xsi:nil="true"/> <ApplicationSignedDate xsi:nil="true"/> <WorkbookCertifiedDate>2018-05-01Z</WorkbookCertifiedDate> <ConsumerExpectedCloseDate>2018-06-29Z</ConsumerExpectedCloseDate> <FinancialContingencyDate xsi:nil="true"/> <FranchiseLoan>false</FranchiseLoan> <VeteransAdvantage>false</VeteransAdvantage> <OutOfFootprint>false</OutOfFootprint> <EligibilityTesting>false</EligibilityTesting> <CommitmentReceivedDate xsi:nil="true"/> <RecommendDecline xsi:nil="true"/> <RecommendDeclineDate xsi:nil="true"/> <InitialCustomerContacted xsi:nil="true"/> <LCOComplex xsi:nil="true"/> <SBANumberDate xsi:nil="true"/> <RushJob xsi:nil="true"/> <ConstructionAmount xsi:nil="true"/> <BridgeMonitoring xsi:nil="true"/> <CollateralAsIsAmount xsi:nil="true"/> <CollateralAsProposedAmount xsi:nil="true"/> <ClosedWithoutPermit xsi:nil="true"/> <Watchlist xsi:nil="true"/> <CrossCollateralizedWithOtherLoans>false</CrossCollateralizedWithOtherLoans> <SecuredByCollateral>false</SecuredByCollateral> <FloodAttested xsi:nil="true"/> <FloodAttestationApproved xsi:nil="true"/> <FixedRate>false</FixedRate> <PurchaseContractExpireDate xsi:nil="true"/> <SLAOverride xsi:nil="true"/> </LendingRequestInfo> <Teams> <Member> <EmployeeId>00001458724</EmployeeId> <FirstName>Ramon</FirstName> <LastName>Ramirez</LastName> <Role>BDO</Role> <LastModifyDate>2018-05-10T21:38:08.736Z</LastModifyDate> </Member> </Teams> <Parties> <Party> <ExternalPartyId>a0Jq0000003VXA7EAO</ExternalPartyId> <PartyId>4983</PartyId> <ContactLastName>Squared R Tech, LLC</ContactLastName> <ContactFirstName xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <PartyName>Squared R Tech, LLC</PartyName> <Role>Borrower</Role> <Country>US</Country> <Primary>true</Primary> <LastModifyDate>2018-05-10T22:12:54.425Z</LastModifyDate> </Party> <Party> <ExternalPartyId>a0Jq0000003VXA8EAO</ExternalPartyId> <PartyId>4984</PartyId> <ContactLastName>Pence</ContactLastName> <ContactFirstName>Mike</ContactFirstName> <PartyName>Mike Pence</PartyName> <Role>Guarantor Individual</Role> <Country>US</Country> <Primary>false</Primary> <LastModifyDate>2018-05-10T22:12:54.425Z</LastModifyDate> </Party> </Parties> <Checklist> <GenerateDocumentTimestamp xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ChecklistItem> <ExternalChecklistItemId>a0Hq0000004bvL5EAI</ExternalChecklistItemId> <ChecklistItemId>22277</ChecklistItemId> <MasterChecklistItemId>3380</MasterChecklistItemId> <ItemName>SBA Form 1919 Section 1 (Sales)</ItemName> <ItemType>Customer</ItemType> <Category>Personal Information</Category> <NeedAtStage>Sales</NeedAtStage> <ItemStatus>Requested</ItemStatus> <StatusDate>2018-05-10T07:00:00.000Z</StatusDate> <DocumentTemplate>SBA-1919-Section-1</DocumentTemplate> <ItemDescription>SBA Form 1919 Borrower Information Form Section 1 (form enclosed) for each Borrower and Co-Applicant Borrower.</ItemDescription> <CreateDate>2018-05-10T21:38:09.027Z</CreateDate> <ReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <OvrrdRcvdDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <Required>true</Required> <GenerateDoc xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ContactType>UW</ContactType> <ExternalPartyId>a0Jq0000003VXA7EAO</ExternalPartyId> <PartyId>4983</PartyId> <PartyName>Squared R Tech, LLC</PartyName> <PartyType>Borrower</PartyType> <OrderedDate>2018-05-10Z</OrderedDate> <CalcDueDate>2018-05-10Z</CalcDueDate> <DueDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <CalcExpiryDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ExpiryDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <RetechsRvwDueDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <RetechsRvwRcvdDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <LastModifyDate>2018-05-10T22:12:54.426Z</LastModifyDate> <InclInNeedsListGen>false</InclInNeedsListGen> </ChecklistItem> </Checklist> <ChecklistAnswers> <ChecklistAnswer> <Code>1a</Code> <Value>Y</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>1b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>2</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>3</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4a</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4c</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4d</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4e</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f</Code> <Value>Y</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f1</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f2</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f3</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>5</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>6</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>7</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8a</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8c</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8d</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>9</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>10</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>11</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>12</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>13</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>14</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>15</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>16</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>17</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>18</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>19</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>20</Code> <Value>Y</Value> </ChecklistAnswer> </ChecklistAnswers> <SystemIdentifiers> <SystemIdentifier> <ExternalSystem>Salesforce</ExternalSystem> <Type>Identifier</Type> <Identifier>006q000000F8skDAAR</Identifier> <LastModifyDate>2018-05-10T21:38:09.103Z</LastModifyDate> </SystemIdentifier> </SystemIdentifiers> <Referral> <LastModifyDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> </Referral> <History> <CreateDate>2018-05-10T21:38:09.101Z</CreateDate> <SalesSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWStartDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWApprovedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <DeclinedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingStartDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <CompletedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <LastModifyDate>2018-05-10T21:38:09.102Z</LastModifyDate> </History> </LendingRequest> <LastModifyDate>2018-05-10T21:38:08.029Z</LastModifyDate> </Package> </SynchResponse>';
    	Dom.Document doc = new Dom.Document();
        doc.load(xml);
        DOM.XMLNode rootElement = doc.getRootElement();
        //System.debug(traverse(rootElement));
    }
    
public static String traverse(DOM.XMLNode node) {
    System.debug('trav:'+node.getName());
  String result = '\n';
  if (node.getNodeType() == DOM.XMLNodeType.TEXT) {
    return 'Text (' + node.getText() + ')';
  }
  if (node.getNodeType() == DOM.XMLNodeType.ELEMENT) {
    result += 'Element: ' + node.getName();
    if (node.getText().trim() != '') {
      result += ', text=' + node.getText().trim();
    }
    for (Dom.XMLNode child: node.getChildElements()) {
      result += traverse(child);
    }
    System.debug('result:'+result);
    return result;
  }
  return '';  //should never reach here 
}
    public static string getMessage(String Mesgid){
        String fullMesg = '';
        /*wfcb__CB_Response__c resp = [SELECT Id, wfcb__Response2_XML__c, wfcb__Response3_XML__c, wfcb__Response_XML__c, wfcb__SFDC_Request_Id__c, wfcb__Status__c, wfcb__Response4_XML__c, wfcb__Response5_XML__c, wfcb__Response6_XML__c FROM wfcb__CB_Response__c where id=:mesgid];
        if(resp.wfcb__Response_XML__c != null || resp.wfcb__Response_XML__c != '')
        	fullMesg+=resp.wfcb__Response_XML__c;
        if(resp.wfcb__Response_XML__c != null || resp.wfcb__Response_XML__c != '')
        	fullMesg+=resp.wfcb__Response2_XML__c;
        if(resp.wfcb__Response_XML__c != null || resp.wfcb__Response_XML__c != '')
        	fullMesg+=resp.wfcb__Response3_XML__c;
        if(resp.wfcb__Response_XML__c != null || resp.wfcb__Response_XML__c != '')
        	fullMesg+=resp.wfcb__Response4_XML__c;
        if(resp.wfcb__Response_XML__c != null || resp.wfcb__Response_XML__c != '')
        	fullMesg+=resp.wfcb__Response5_XML__c;
        if(resp.wfcb__Response_XML__c != null || resp.wfcb__Response_XML__c != '')
        	fullMesg+=resp.wfcb__Response6_XML__c;   */             
        return fullMesg;
    }
    public static void compare(String id1, String id2){
		String xml1 = getMessage(id1);
        String xml2 = getMessage(id2);
        
        Dom.Document doc1 = new Dom.Document();
        doc1.load(xml1);
        Dom.Document doc2 = new Dom.Document();
        doc2.load(xml1);

        /*
        Dom.XmlNode xroot = docx.getrootelement() ;
        String ns = xroot.getNamespace();     
        Dom.XmlNode[] nodes = xroot.getChildElements();        */
    }
    
    public static void diffNodes(DOM.XMLNode node1, DOM.XMLNode node2, List<String> diffs){
       Map<String, List<DOM.XMLNode>> childMap1 = new Map<String,List<DOM.XMLNode>>();
       Map<String, List<DOM.XMLNode>> childMap2 = new Map<String,List<DOM.XMLNode>>();
       
        
       for (Dom.XMLNode child: node1.getChildElements()) {   
           if(childMap1.containsKey(child.getName())){
               List<DOM.XMLNode> cldList = childMap1.get(child.getName());
               cldList.add(child);
           } else {
               List<DOM.XMLNode> cldList = new List<DOM.XMLNode>();
               cldList.add(child);
               childMap1.put(child.getName(),cldList);
           }
       }

       for (Dom.XMLNode child: node2.getChildElements()) {   
           if(childMap2.containsKey(child.getName())){
               List<DOM.XMLNode> cldList = childMap2.get(child.getName());
               cldList.add(child);
           } else {
               List<DOM.XMLNode> cldList = new List<DOM.XMLNode>();
               cldList.add(child);
               childMap2.put(child.getName(),cldList);
           }
       }        
        /*
        for(Dom.XMLNode child1:childMap1.values()){
            Dom.XMLNode child2 = childMap2.remove(child1.getName());
            diffNodes(child1,child2,diffs);
        }*/
       /*if(node1.getNodeType() == DOM.XMLNodeType.ELEMENT) {
            for (Dom.XMLNode child: node1.getChildElements()) {               
                traverse(child);
            }
            //return ''; 
        }
        //return '';                
        */
    }
    /*
    private static String traverse(DOM.XMLNode node){
        if(node.getNodeType() == DOM.XMLNodeType.ELEMENT) {
            for (Dom.XMLNode child: node.getChildElements()) {               
                traverse(child);
            }
            return ''; 
        }
        return '';        
    }*/
    
}