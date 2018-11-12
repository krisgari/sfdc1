public with sharing class SalesforceTool
{
    public static void diffNodes(Map<String,DOM.XMLNode> map1, Map<String,DOM.XMLNode> map2, String ns){        
        for(String key:map1.keySet()){
            if(map2.containsKey(key)){
                compareNodes(map1.get(key), map2.get(key), ns);
            }
        }    
    }
    public static void compareNodes(DOM.XMLNode node1, DOM.XMLNode node2, String ns){
        String temp = '';
		for(DOM.XMLNode child1:node1.getChildElements()){
            DOM.XMLNode child2 = node2.getChildElement(child1.getName(), ns);
            
            String txt1 = child1.getText();
            String txt2 = child2.getText();
            if(txt1 != txt2){
            	System.debug(txt1+' '+txt2);    
            } else {
                temp+='#';
            }
        }
        System.debug('printing equals'+temp);
    }
    public static void parseXml(){
        List<String> diffs = new List<String>();
        //String xml = ' <SynchResponse xmlns="http://www.wellsfargo.com/CreditBridge"> <ResponseHeader> <Status>0</Status> <RequestTime>2018-05-10T22:12:53.484Z</RequestTime> <ResponseTime>2018-05-10T22:12:54.638Z</ResponseTime> <Context> <UserName>SALESFORCE</UserName> <Method>POST</Method> <PathContext>underwriting</PathContext> <Version>Integration</Version> <AppContext>LendingRequestSynchronization</AppContext> <ResidualPath>LendingRequestSynchronization/</ResidualPath> <Query>https://wspra96a0258.wellsfargo.com:10059/underwriting/services/Integration/LendingRequestSynchronization</Query> <Context>services</Context> </Context> <Message>Synchronization accepted.</Message> <FWBuild>3.0.0_134</FWBuild> <Build>31020180215_1540</Build> </ResponseHeader> <Package> <ExternalPackageId>006q000000F8skDAAR</ExternalPackageId> <PackageId>2168</PackageId> <PartyName>Squared R Tech, LLC</PartyName> <LineOfBusiness>SBA</LineOfBusiness> <LendingRequest> <LendingRequestInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ExtendedLendingRequestInfo"> <ExternalLendingRequestId>006q000000F8skDAAR</ExternalLendingRequestId> <LendingRequestId>2325</LendingRequestId> <ActivityRef>2369</ActivityRef> <LendingRequestName>Squared R Tech4444, LLC</LendingRequestName> <Amount>700000.0</Amount> <CurrencyCode>USD</CurrencyCode> <Product>7A - Standard</Product> <LastModifyDate>2018-05-10T21:38:09.104Z</LastModifyDate> <LendingRequestStage>Sales</LendingRequestStage> <OpportunityStage>Chasing</OpportunityStage> <ActivityStatus>In Process</ActivityStatus> <ActivityStatusReason>Checklist</ActivityStatusReason> <OverallStatus>RED</OverallStatus> <Construction>false</Construction> <BridgeLoanAmount xsi:nil="true"/> <ProjectedCloseDate>2018-07-23Z</ProjectedCloseDate> <CloseDate xsi:nil="true"/> <ApplicationSignedDate xsi:nil="true"/> <WorkbookCertifiedDate>2018-05-01Z</WorkbookCertifiedDate> <ConsumerExpectedCloseDate>2018-06-29Z</ConsumerExpectedCloseDate> <FinancialContingencyDate xsi:nil="true"/> <FranchiseLoan>false</FranchiseLoan> <VeteransAdvantage>false</VeteransAdvantage> <OutOfFootprint>false</OutOfFootprint> <EligibilityTesting>false</EligibilityTesting> <CommitmentReceivedDate xsi:nil="true"/> <RecommendDecline xsi:nil="true"/> <RecommendDeclineDate xsi:nil="true"/> <InitialCustomerContacted xsi:nil="true"/> <LCOComplex xsi:nil="true"/> <SBANumberDate xsi:nil="true"/> <RushJob xsi:nil="true"/> <ConstructionAmount xsi:nil="true"/> <BridgeMonitoring xsi:nil="true"/> <CollateralAsIsAmount xsi:nil="true"/> <CollateralAsProposedAmount xsi:nil="true"/> <ClosedWithoutPermit xsi:nil="true"/> <Watchlist xsi:nil="true"/> <CrossCollateralizedWithOtherLoans>false</CrossCollateralizedWithOtherLoans> <SecuredByCollateral>false</SecuredByCollateral> <FloodAttested xsi:nil="true"/> <FloodAttestationApproved xsi:nil="true"/> <FixedRate>false</FixedRate> <PurchaseContractExpireDate xsi:nil="true"/> <SLAOverride xsi:nil="true"/> </LendingRequestInfo> <Teams> <Member> <EmployeeId>00001458724</EmployeeId> <FirstName>Ramon</FirstName> <LastName>Ramirez</LastName> <Role>BDO</Role> <LastModifyDate>2018-05-10T21:38:08.736Z</LastModifyDate> </Member> </Teams> <Parties> <Party> <ExternalPartyId>a0Jq0000003VXA7EAO</ExternalPartyId> <PartyId>4983</PartyId> <ContactLastName>Squared R Tech, LLC</ContactLastName> <ContactFirstName xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <PartyName>Squared R Tech, LLC</PartyName> <Role>Borrower</Role> <Country>US</Country> <Primary>true</Primary> <LastModifyDate>2018-05-10T22:12:54.425Z</LastModifyDate> </Party> <Party> <ExternalPartyId>a0Jq0000003VXA8EAO</ExternalPartyId> <PartyId>4984</PartyId> <ContactLastName>Pence</ContactLastName> <ContactFirstName>Mike</ContactFirstName> <PartyName>Mike Pence</PartyName> <Role>Guarantor Individual</Role> <Country>US</Country> <Primary>false</Primary> <LastModifyDate>2018-05-10T22:12:54.425Z</LastModifyDate> </Party> </Parties> <Checklist> <GenerateDocumentTimestamp xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ChecklistItem> <ExternalChecklistItemId>a0Hq0000004bvL5EAI</ExternalChecklistItemId> <ChecklistItemId>22277</ChecklistItemId> <MasterChecklistItemId>3380</MasterChecklistItemId> <ItemName>SBA Form 1919 Section 1 (Sales)</ItemName> <ItemType>Customer</ItemType> <Category>Personal Information</Category> <NeedAtStage>Sales</NeedAtStage> <ItemStatus>Requested</ItemStatus> <StatusDate>2018-05-10T07:00:00.000Z</StatusDate> <DocumentTemplate>SBA-1919-Section-1</DocumentTemplate> <ItemDescription>SBA Form 1919 Borrower Information Form Section 1 (form enclosed) for each Borrower and Co-Applicant Borrower.</ItemDescription> <CreateDate>2018-05-10T21:38:09.027Z</CreateDate> <ReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <OvrrdRcvdDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <Required>true</Required> <GenerateDoc xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ContactType>UW</ContactType> <ExternalPartyId>a0Jq0000003VXA7EAO</ExternalPartyId> <PartyId>4983</PartyId> <PartyName>Squared R Tech, LLC</PartyName> <PartyType>Borrower</PartyType> <OrderedDate>2018-05-10Z</OrderedDate> <CalcDueDate>2018-05-10Z</CalcDueDate> <DueDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <CalcExpiryDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ExpiryDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <RetechsRvwDueDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <RetechsRvwRcvdDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <LastModifyDate>2018-05-10T22:12:54.426Z</LastModifyDate> <InclInNeedsListGen>false</InclInNeedsListGen> </ChecklistItem> </Checklist> <ChecklistAnswers> <ChecklistAnswer> <Code>1a</Code> <Value>Y</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>1b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>2</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>3</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4a</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4c</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4d</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4e</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f</Code> <Value>Y</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f1</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f2</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f3</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>5</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>6</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>7</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8a</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8c</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8d</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>9</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>10</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>11</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>12</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>13</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>14</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>15</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>16</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>17</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>18</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>19</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>20</Code> <Value>Y</Value> </ChecklistAnswer> </ChecklistAnswers> <SystemIdentifiers> <SystemIdentifier> <ExternalSystem>Salesforce</ExternalSystem> <Type>Identifier</Type> <Identifier>006q000000F8skDAAR</Identifier> <LastModifyDate>2018-05-10T21:38:09.103Z</LastModifyDate> </SystemIdentifier> </SystemIdentifiers> <Referral> <LastModifyDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> </Referral> <History> <CreateDate>2018-05-10T21:38:09.101Z</CreateDate> <SalesSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWStartDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWApprovedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <DeclinedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingStartDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <CompletedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <LastModifyDate>2018-05-10T21:38:09.102Z</LastModifyDate> </History> </LendingRequest> <LastModifyDate>2018-05-10T21:38:08.029Z</LastModifyDate> </Package> </SynchResponse>';

        String xml1 = ' <SynchResponse xmlns="http://www.wellsfargo.com/CreditBridge"> <ResponseHeader> <Status>0</Status> <RequestTime>2018-05-10T22:12:53.484Z</RequestTime> <ResponseTime>2018-05-10T22:12:54.638Z</ResponseTime> <Context> <UserName>SALESFORCE</UserName> <Method>POST</Method> <PathContext>underwriting</PathContext> <Version>Integration</Version> <AppContext>LendingRequestSynchronization</AppContext> <ResidualPath>LendingRequestSynchronization/</ResidualPath> <Query>https://wspra96a0258.wellsfargo.com:10059/underwriting/services/Integration/LendingRequestSynchronization</Query> <Context>services</Context> </Context> <Message>Synchronization accepted.</Message> <FWBuild>3.0.0_134</FWBuild> <Build>31020180215_1540</Build> </ResponseHeader> <Package> <ExternalPackageId>006q000000F8skDAAR</ExternalPackageId> <PackageId>2168</PackageId> <PartyName>Squared R Tech, LLC</PartyName> <LineOfBusiness>SBA</LineOfBusiness> <LendingRequest> <LendingRequestInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ExtendedLendingRequestInfo"> <ExternalLendingRequestId>006q000000F8skDAAR</ExternalLendingRequestId> <LendingRequestId>2325</LendingRequestId> <ActivityRef>2369</ActivityRef> <LendingRequestName>Squared R Tech4444, LLC</LendingRequestName> <Amount>700000.0</Amount> <CurrencyCode>USD</CurrencyCode> <Product>7A - Standard</Product> <LastModifyDate>2018-05-10T21:38:09.104Z</LastModifyDate> <LendingRequestStage>Sales</LendingRequestStage> <OpportunityStage>Chasing</OpportunityStage> <ActivityStatus>In Process</ActivityStatus> <ActivityStatusReason>Checklist</ActivityStatusReason> <OverallStatus>RED</OverallStatus> <Construction>false</Construction> <BridgeLoanAmount xsi:nil="true"/> <ProjectedCloseDate>2018-07-23Z</ProjectedCloseDate> <CloseDate xsi:nil="true"/> <ApplicationSignedDate xsi:nil="true"/> <WorkbookCertifiedDate>2018-05-01Z</WorkbookCertifiedDate> <ConsumerExpectedCloseDate>2018-06-29Z</ConsumerExpectedCloseDate> <FinancialContingencyDate xsi:nil="true"/> <FranchiseLoan>false</FranchiseLoan> <VeteransAdvantage>false</VeteransAdvantage> <OutOfFootprint>false</OutOfFootprint> <EligibilityTesting>false</EligibilityTesting> <CommitmentReceivedDate xsi:nil="true"/> <RecommendDecline xsi:nil="true"/> <RecommendDeclineDate xsi:nil="true"/> <InitialCustomerContacted xsi:nil="true"/> <LCOComplex xsi:nil="true"/> <SBANumberDate xsi:nil="true"/> <RushJob xsi:nil="true"/> <ConstructionAmount xsi:nil="true"/> <BridgeMonitoring xsi:nil="true"/> <CollateralAsIsAmount xsi:nil="true"/> <CollateralAsProposedAmount xsi:nil="true"/> <ClosedWithoutPermit xsi:nil="true"/> <Watchlist xsi:nil="true"/> <CrossCollateralizedWithOtherLoans>false</CrossCollateralizedWithOtherLoans> <SecuredByCollateral>false</SecuredByCollateral> <FloodAttested xsi:nil="true"/> <FloodAttestationApproved xsi:nil="true"/> <FixedRate>false</FixedRate> <PurchaseContractExpireDate xsi:nil="true"/> <SLAOverride xsi:nil="true"/> </LendingRequestInfo> <Teams> <Member> <EmployeeId>00001458724</EmployeeId> <FirstName>Ramon</FirstName> <LastName>Ramirez</LastName> <Role>BDO</Role> <LastModifyDate>2018-05-10T21:38:08.736Z</LastModifyDate> </Member> </Teams> <Parties> <Party> <ExternalPartyId>a0Jq0000003VXA7EAO</ExternalPartyId> <PartyId>4983</PartyId> <ContactLastName>Squared R Tech, LLC</ContactLastName> <ContactFirstName xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <PartyName>Squared R Tech, LLC</PartyName> <Role>Borrower</Role> <Country>US</Country> <Primary>true</Primary> <LastModifyDate>2018-05-10T22:12:54.425Z</LastModifyDate> </Party> <Party> <ExternalPartyId>a0Jq0000003VXA8EAO</ExternalPartyId> <PartyId>4984</PartyId> <ContactLastName>Pence</ContactLastName> <ContactFirstName>Mike</ContactFirstName> <PartyName>Mike Pence</PartyName> <Role>Guarantor Individual</Role> <Country>US</Country> <Primary>false</Primary> <LastModifyDate>2018-05-10T22:12:54.425Z</LastModifyDate> </Party> </Parties> <Checklist> <GenerateDocumentTimestamp xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ChecklistItem> <ExternalChecklistItemId>a0Hq0000004bvL5EAI</ExternalChecklistItemId> <ChecklistItemId>22277</ChecklistItemId> <MasterChecklistItemId>3380</MasterChecklistItemId> <ItemName>SBA Form 1919 Section 1 (Sales)</ItemName> <ItemType>Customer</ItemType> <Category>Personal Information</Category> <NeedAtStage>Sales</NeedAtStage> <ItemStatus>Requested</ItemStatus> <StatusDate>2018-05-10T07:00:00.000Z</StatusDate> <DocumentTemplate>SBA-1919-Section-1</DocumentTemplate> <ItemDescription>SBA Form 1919 Borrower Information Form Section 1 (form enclosed) for each Borrower and Co-Applicant Borrower.</ItemDescription> <CreateDate>2018-05-10T21:38:09.027Z</CreateDate> <ReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <OvrrdRcvdDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <Required>true</Required> <GenerateDoc xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ContactType>UW</ContactType> <ExternalPartyId>a0Jq0000003VXA7EAO</ExternalPartyId> <PartyId>4983</PartyId> <PartyName>Squared R Tech, LLC</PartyName> <PartyType>Borrower</PartyType> <OrderedDate>2018-05-10Z</OrderedDate> <CalcDueDate>2018-05-10Z</CalcDueDate> <DueDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <CalcExpiryDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ExpiryDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <RetechsRvwDueDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <RetechsRvwRcvdDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <LastModifyDate>2018-05-10T22:12:54.426Z</LastModifyDate> <InclInNeedsListGen>false</InclInNeedsListGen> </ChecklistItem> </Checklist> <ChecklistAnswers> <ChecklistAnswer> <Code>1a</Code> <Value>Y</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>1b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>2</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>3</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4a</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4c</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4d</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4e</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f</Code> <Value>Y</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f1</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f2</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f3</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>5</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>6</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>7</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8a</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8c</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8d</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>9</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>10</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>11</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>12</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>13</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>14</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>15</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>16</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>17</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>18</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>19</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>20</Code> <Value>Y</Value> </ChecklistAnswer> </ChecklistAnswers> <SystemIdentifiers> <SystemIdentifier> <ExternalSystem>Salesforce</ExternalSystem> <Type>Identifier</Type> <Identifier>006q000000F8skDAAR</Identifier> <LastModifyDate>2018-05-10T21:38:09.103Z</LastModifyDate> </SystemIdentifier> </SystemIdentifiers> <Referral> <LastModifyDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> </Referral> <History> <CreateDate>2018-05-10T21:38:09.101Z</CreateDate> <SalesSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWStartDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWApprovedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <DeclinedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingStartDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <CompletedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <LastModifyDate>2018-05-10T21:38:09.102Z</LastModifyDate> </History> </LendingRequest> <LastModifyDate>2018-05-10T21:38:08.029Z</LastModifyDate> </Package> </SynchResponse>';


        String xml2 = ' <SynchResponse xmlns="http://www.wellsfargo.com/CreditBridge"> <ResponseHeader> <Status>0</Status> <RequestTime>2018-05-10T22:12:53.484Z</RequestTime> <ResponseTime>2018-05-10T22:12:54.638Z</ResponseTime> <Context> <UserName>SALESFORCE</UserName> <Method>POST</Method> <PathContext>underwriting</PathContext> <Version>Integration</Version> <AppContext>LendingRequestSynchronization</AppContext> <ResidualPath>LendingRequestSynchronization/</ResidualPath> <Query>https://wspra96a0258.wellsfargo.com:10059/underwriting/services/Integration/LendingRequestSynchronization</Query> <Context>services</Context> </Context> <Message>Synchronization accepted.</Message> <FWBuild>3.0.0_134</FWBuild> <Build>31020180215_1540</Build> </ResponseHeader> <Package> <ExternalPackageId>006q000000F8skDAAR</ExternalPackageId> <PackageId>2168</PackageId> <PartyName>Squared R Tech, LLC</PartyName> <LineOfBusiness>SBA</LineOfBusiness> <LendingRequest> <LendingRequestInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ExtendedLendingRequestInfo"> <ExternalLendingRequestId>006q000000F8skDAAR</ExternalLendingRequestId> <LendingRequestId>2325</LendingRequestId> <ActivityRef>2369</ActivityRef> <LendingRequestName>Squared R Tech4444, LLC</LendingRequestName> <Amount>700000.0</Amount> <CurrencyCode>USD</CurrencyCode> <Product>7A - Standard</Product> <LastModifyDate>2018-05-10T21:38:09.104Z</LastModifyDate> <LendingRequestStage>Sales</LendingRequestStage> <OpportunityStage>Chasing</OpportunityStage> <ActivityStatus>In Process</ActivityStatus> <ActivityStatusReason>Checklist</ActivityStatusReason> <OverallStatus>RED</OverallStatus> <Construction>false</Construction> <BridgeLoanAmount xsi:nil="true"/> <ProjectedCloseDate>2018-07-23Z</ProjectedCloseDate> <CloseDate xsi:nil="true"/> <ApplicationSignedDate xsi:nil="true"/> <WorkbookCertifiedDate>2018-05-01Z</WorkbookCertifiedDate> <ConsumerExpectedCloseDate>2018-06-29Z</ConsumerExpectedCloseDate> <FinancialContingencyDate xsi:nil="true"/> <FranchiseLoan>false</FranchiseLoan> <VeteransAdvantage>false</VeteransAdvantage> <OutOfFootprint>false</OutOfFootprint> <EligibilityTesting>false</EligibilityTesting> <CommitmentReceivedDate xsi:nil="true"/> <RecommendDecline xsi:nil="true"/> <RecommendDeclineDate xsi:nil="true"/> <InitialCustomerContacted xsi:nil="true"/> <LCOComplex xsi:nil="true"/> <SBANumberDate xsi:nil="true"/> <RushJob xsi:nil="true"/> <ConstructionAmount xsi:nil="true"/> <BridgeMonitoring xsi:nil="true"/> <CollateralAsIsAmount xsi:nil="true"/> <CollateralAsProposedAmount xsi:nil="true"/> <ClosedWithoutPermit xsi:nil="true"/> <Watchlist xsi:nil="true"/> <CrossCollateralizedWithOtherLoans>false</CrossCollateralizedWithOtherLoans> <SecuredByCollateral>false</SecuredByCollateral> <FloodAttested xsi:nil="true"/> <FloodAttestationApproved xsi:nil="true"/> <FixedRate>false</FixedRate> <PurchaseContractExpireDate xsi:nil="true"/> <SLAOverride xsi:nil="true"/> </LendingRequestInfo> <Teams> <Member> <EmployeeId>00001458724</EmployeeId> <FirstName>kris</FirstName> <LastName>gari</LastName> <Role>BDO</Role> <LastModifyDate>2018-05-10T21:38:08.736Z</LastModifyDate> </Member> </Teams> <Parties> <Party> <ExternalPartyId>a0Jq0000003VXA7EAO</ExternalPartyId> <PartyId>4983</PartyId> <ContactLastName>Squared R Tech, LLC</ContactLastName> <ContactFirstName xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <PartyName>Squared R Tech, LLC</PartyName> <Role>Borrower</Role> <Country>US</Country> <Primary>true</Primary> <LastModifyDate>2018-05-10T22:12:54.425Z</LastModifyDate> </Party> <Party> <ExternalPartyId>a0Jq0000003VXA8EAO</ExternalPartyId> <PartyId>4984</PartyId> <ContactLastName>Pence</ContactLastName> <ContactFirstName>Mike</ContactFirstName> <PartyName>Mike Pence</PartyName> <Role>Guarantor Individual</Role> <Country>US</Country> <Primary>false</Primary> <LastModifyDate>2018-05-10T22:12:54.425Z</LastModifyDate> </Party> </Parties> <Checklist> <GenerateDocumentTimestamp xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ChecklistItem> <ExternalChecklistItemId>a0Hq0000004bvL5EAI</ExternalChecklistItemId> <ChecklistItemId>1234</ChecklistItemId> <MasterChecklistItemId>3380</MasterChecklistItemId> <ItemName>SBA Form 1919 Section 1 (Sales)</ItemName> <ItemType>action item</ItemType> <Category>Personal Information</Category> <NeedAtStage>Sales</NeedAtStage> <ItemStatus>Requested</ItemStatus> <StatusDate>2018-05-10T07:00:00.000Z</StatusDate> <DocumentTemplate>SBA-1919-Section-1</DocumentTemplate> <ItemDescription>SBA Form 1919 Borrower Information Form Section 1 (form enclosed) for each Borrower and Co-Applicant Borrower.</ItemDescription> <CreateDate>2018-05-10T21:38:09.027Z</CreateDate> <ReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <OvrrdRcvdDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <Required>true</Required> <GenerateDoc xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ContactType>UW</ContactType> <ExternalPartyId>a0Jq0000003VXA7EAO</ExternalPartyId> <PartyId>4983</PartyId> <PartyName>Squared R Tech, LLC</PartyName> <PartyType>Borrower</PartyType> <OrderedDate>2018-05-10Z</OrderedDate> <CalcDueDate>2018-05-10Z</CalcDueDate> <DueDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <CalcExpiryDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ExpiryDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <RetechsRvwDueDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <RetechsRvwRcvdDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <LastModifyDate>2018-05-10T22:12:54.426Z</LastModifyDate> <InclInNeedsListGen>false</InclInNeedsListGen> </ChecklistItem> </Checklist> <ChecklistAnswers> <ChecklistAnswer> <Code>1a</Code> <Value>Y</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>1b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>2</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>3</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4a</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4c</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4d</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4e</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f</Code> <Value>Y</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f1</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f2</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>4f3</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>5</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>6</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>7</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8a</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8b</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8c</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>8d</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>9</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>10</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>11</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>12</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>13</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>14</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>15</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>16</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>17</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>18</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>19</Code> <Value>N</Value> </ChecklistAnswer> <ChecklistAnswer> <Code>20</Code> <Value>Y</Value> </ChecklistAnswer> </ChecklistAnswers> <SystemIdentifiers> <SystemIdentifier> <ExternalSystem>Salesforce</ExternalSystem> <Type>Identifier</Type> <Identifier>006q000000F8skDAAR</Identifier> <LastModifyDate>2018-05-10T21:38:09.103Z</LastModifyDate> </SystemIdentifier> </SystemIdentifiers> <Referral> <LastModifyDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> </Referral> <History> <CreateDate>2018-05-10T21:38:09.101Z</CreateDate> <SalesSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWStartDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <UWApprovedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <DeclinedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingStartDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingReceivedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <ClosingSubmitDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <CompletedDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/> <LastModifyDate>2018-05-10T21:38:09.102Z</LastModifyDate> </History> </LendingRequest> <LastModifyDate>2018-05-10T21:38:08.029Z</LastModifyDate> </Package> </SynchResponse>';

        
        Dom.Document doc1 = new Dom.Document();
        doc1.load(xml1);
        DOM.XMLNode rootElement1 = doc1.getRootElement();
        String ns1 = rootElement1.getNamespace();

        Dom.Document doc2 = new Dom.Document();
        doc2.load(xml2);
        DOM.XMLNode rootElement2 = doc2.getRootElement();
        String ns2 = rootElement2.getNamespace();
        
        Map<String, Map<String,DOM.XMLNode>> map1 = getNodeMap(rootElement1,ns1);
		Map<String, Map<String,DOM.XMLNode>> map2 = getNodeMap(rootElement2,ns1);
        
        //Map<String,DOM.XMLNode> chklst = mm.get('Checklist');
        
        for(String key:map1.keySet()){
        	diffNodes(map1.get(key),map2.get(key),ns1);
        }
        
        /*for(String child: chklst.keySet()){
            String[] keyVal = child.split('||~||');
            DOM.XMLNode val = chklst.get(child);
            System.debug('child:'+child+' '+val.getChildElement(keyval[0],ns1));
        }
        DOM.XMLNode lr = rootElement1.getChildElement('Package', ns1).getChildElement('LendingRequest',ns1);
        for(DOM.XMLNode nod: lr.getChildElements()){
            System.debug('nod:'+nod.getName());
        }
        System.debug('lr:'+lr.getChildElement('LendingRequestInfo',ns1));*/
    }
    
    public static Map<String, Map<String,DOM.XMLNode>> getNodeMap(DOM.XMLNode node1,String ns){
        DOM.XMLNode lendingRequest = node1.getChildElement('Package', ns).getChildElement('LendingRequest',ns);
        DOM.XMLNode LendingRequestInfo = lendingRequest.getChildElement('LendingRequestInfo',ns);
        DOM.XMLNode Teams = lendingRequest.getChildElement('Teams',ns);
        DOM.XMLNode Parties = lendingRequest.getChildElement('Parties',ns);
        DOM.XMLNode Checklist = lendingRequest.getChildElement('Checklist',ns);
        DOM.XMLNode ChecklistAnswers = lendingRequest.getChildElement('ChecklistAnswers',ns);
        DOM.XMLNode SystemIdentifiers = lendingRequest.getChildElement('SystemIdentifiers',ns);
        DOM.XMLNode History = lendingRequest.getChildElement('History',ns);

        Map<String, Map<String,DOM.XMLNode>> nodeMap = new Map<String, Map<String,DOM.XMLNode>>();        
        Map<String,DOM.XMLNode> l1 = new Map<String,DOM.XMLNode>();
        
        DOM.XMLNode lendReqInfo = LendingRequestInfo.getChildElement('ExternalLendingRequestId',ns);
        l1.put('ExternalLendingRequestId'+'||~||'+lendReqInfo.getText(),LendingRequestInfo);
        nodeMap.put('LendingRequestInfo',l1);
        
        Map<String,DOM.XMLNode> l2 = new Map<String,DOM.XMLNode>();
        for(DOM.XMLNode child:Teams.getChildElements()){
            if(child.getChildren().size() > 0) {
                DOM.XMLNode team = child.getChildElement('EmployeeId',ns);
                l2.put('EmployeeId'+'||~||'+team.getText(),child);                
            }
        }
        nodeMap.put('Teams',l2);
        
        Map<String,DOM.XMLNode> l3 = new Map<String,DOM.XMLNode>();
        for(DOM.XMLNode child:Parties.getChildElements()){
            if(child.getChildren().size() > 0) {
                DOM.XMLNode party = child.getChildElement('ExternalPartyId',ns);
                l3.put('ExternalPartyId'+'||~||'+party.getText(),party);                
            }
        }        
        nodeMap.put('Parties',l3);
 
        Map<String,DOM.XMLNode> l4 = new Map<String,DOM.XMLNode>();
        for(DOM.XMLNode child:Checklist.getChildElements()){
            System.debug('name:'+child.getName()+' size:'+child.getChildren().size());
            if(child.getChildren().size() > 0) {
                DOM.XMLNode chk = child.getChildElement('ExternalChecklistItemId',ns);
                l4.put('ExternalChecklistItemId'+'||~||'+chk.getText(),child);                
            }
        }   
        System.debug('check size:'+l4.size());
        nodeMap.put('Checklist',l4);
        
        Map<String,DOM.XMLNode> l5 = new Map<String,DOM.XMLNode>();
        for(DOM.XMLNode child:ChecklistAnswers.getChildElements()){
            if(child.getChildren().size() > 0) {
                DOM.XMLNode team = child.getChildElement('Code',ns);
                l5.put('Code'+'||~||'+team.getText(),child);                
            }
        }        
        nodeMap.put('ChecklistAnswers',l5);
        
        /*
        Map<String,DOM.XMLNode> l6 = new Map<String,DOM.XMLNode>();
        DOM.XMLNode sysId = SystemIdentifiers.getChildElement('SystemIdentifier',ns);
        l6.put('Identifier'+'||~||'+sysId.getText(),SystemIdentifiers);
        nodeMap.put('SystemIdentifiers',l6);
        */
        Map<String,DOM.XMLNode> l7 = new Map<String,DOM.XMLNode>();
        DOM.XMLNode hist = History.getChildElement('CreateDate',ns);
        l7.put('CreateDate'+'||~||'+hist.getText(),LendingRequestInfo);
        nodeMap.put('History',l7);
        
        System.debug('lendingRequest'+lendingRequest);
        return nodeMap;
    }
    
    /*
    public static Map<String, List<DOM.XMLNode>> getNodeMap(DOM.XMLNode node1,String ns){
        DOM.XMLNode lendingRequest = node1.getChildElement('Package', ns).getChildElement('LendingRequest',ns);
        DOM.XMLNode LendingRequestInfo = lendingRequest.getChildElement('lendingRequest',ns);
        DOM.XMLNode Teams = lendingRequest.getChildElement('Teams',ns);
        DOM.XMLNode Parties = lendingRequest.getChildElement('Parties',ns);
        DOM.XMLNode Checklist = lendingRequest.getChildElement('Checklist',ns);
        DOM.XMLNode ChecklistAnswers = lendingRequest.getChildElement('ChecklistAnswers',ns);
        DOM.XMLNode SystemIdentifiers = lendingRequest.getChildElement('SystemIdentifiers',ns);
        DOM.XMLNode History = lendingRequest.getChildElement('History',ns);
        
        Map<String, List<DOM.XMLNode>> nodeMap = new Map<String, List<DOM.XMLNode>>();
        List<DOM.XMLNode> l1 = new List<DOM.XMLNode>();
        l1.add(LendingRequestInfo);
        nodeMap.put('LendingRequestInfo',l1);
        List<DOM.XMLNode> l2 = new List<DOM.XMLNode>();
        for(DOM.XMLNode child:Teams.getChildElements()){
            if(child.getChildren().size() > 0)
        	l2.add(child);
        }
        nodeMap.put('Teams',l2);
        List<DOM.XMLNode> l3 = new List<DOM.XMLNode>();
        for(DOM.XMLNode child:Parties.getChildElements()){
            if(child.getChildren().size() > 0)
        		l3.add(child);
        }        
        nodeMap.put('Parties',l3);
        List<DOM.XMLNode> l4 = new List<DOM.XMLNode>();
        for(DOM.XMLNode child:Checklist.getChildElements()){
//            System.debug('name:'+child.getName()+' size:'+child.getChildren().size());
            if(child.getChildren().size() > 0)
        		l4.add(child);
        }   
//        System.debug('check size:'+l4.size());
        nodeMap.put('Checklist',l4);
        List<DOM.XMLNode> l5 = new List<DOM.XMLNode>();
        for(DOM.XMLNode child:Checklist.getChildElements()){
            if(child.getChildren().size() > 0)
        	l5.add(child);
        }        
        nodeMap.put('ChecklistAnswers',l5);
        List<DOM.XMLNode> l6 = new List<DOM.XMLNode>();
        l6.add(SystemIdentifiers);
        nodeMap.put('SystemIdentifiers',l6);
        List<DOM.XMLNode> l7 = new List<DOM.XMLNode>();
        l7.add(History);
        nodeMap.put('History',l7);
        System.debug('lendingRequest'+lendingRequest);
        return nodeMap;
    }
    */
    public static void createCSVandEmail(){
        String objName= 'Account'; 
        Map<String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
        Map<String, Schema.SObjectField> fieldMap = schemaMap.get(objName).getDescribe().fields.getMap();
        String fields= '';
        for(String fieldName : fieldMap.keyset()){
        	if(fields == null || fields== ''){
        		fields= fieldName;
        	}else{
        		fields= fields+ ', ' + fieldName;
        	}
        }
        System.debug('fields:'+fields);
        String query = 'select ' + fields+ ' from ' + objName+ ' Limit 10';
        List<Account> acclist = Database.query(query);
        system.debug(acclist);

        string header = 'Record Id, Name , Created Date, Modified Date \n';
        string finalstr = header ;
        string recordString= fields;
		for(Account acc: acclist)
        {
            for(String fieldName : fieldMap.keyset()){
                 recordString =recordString+ '"'+acc.get(fieldName)+'","';
            }
            recordString =recordString+'"\n';
        }
        System.debug('recordString\n'+recordString);
        /*
        for(Account acc: acclist)
        {
               string recordString = '"'+acc.id+'","'+acc.Name+'","'+acc.CreatedDate+'","'+acc.LastModifiedDate +'"\n';
               finalstr = finalstr +recordString;
        }*/
        
        Messaging.EmailFileAttachment csvAttc = new Messaging.EmailFileAttachment();
        blob csvBlob = Blob.valueOf(recordString);
        string csvname= 'Account.csv';
        csvAttc.setFileName(csvname);
        csvAttc.setBody(csvBlob);
        Messaging.SingleEmailMessage email =new Messaging.SingleEmailMessage();
        String[] toAddresses = new list<string> {'krishna.m.garikipati@wellsfargo.com'};
        String subject ='Account CSV';
        email.setSubject(subject);
        email.setToAddresses( toAddresses );
        email.setPlainTextBody('Account CSV ');
        email.setFileAttachments(new Messaging.EmailFileAttachment[]{csvAttc});
        Messaging.SendEmailResult [] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});        
    }    

    
    /*
    public static Map<String, DOM.XMLNode> getNodeMap(DOM.XMLNode node1,String ns){
        DOM.XMLNode lendingRequest = node1.getChildElement('Package', ns).getChildElement('LendingRequest',ns);
        DOM.XMLNode LendingRequestInfo = lendingRequest.getChildElement('lendingRequest',ns);

        DOM.XMLNode Teams = lendingRequest.getChildElement('Teams',ns);
        DOM.XMLNode Parties = lendingRequest.getChildElement('Parties',ns);
        DOM.XMLNode Checklist = lendingRequest.getChildElement('Checklist',ns);
        DOM.XMLNode ChecklistAnswers = lendingRequest.getChildElement('ChecklistAnswers',ns);
        DOM.XMLNode SystemIdentifiers = lendingRequest.getChildElement('SystemIdentifiers',ns);
        DOM.XMLNode History = lendingRequest.getChildElement('History',ns);
        
        Map<String, DOM.XMLNode> nodeMap = new Map<String, DOM.XMLNode>();
        nodeMap.put('LendingRequestInfo',LendingRequestInfo);
        nodeMap.put('Teams',Teams);
        nodeMap.put('Parties',Parties);
        nodeMap.put('Checklist',Checklist);
        nodeMap.put('ChecklistAnswers',ChecklistAnswers);
        nodeMap.put('SystemIdentifiers',SystemIdentifiers);
        nodeMap.put('History',History);
        
        System.debug('lendingRequest'+lendingRequest);
        return nodeMap;
    }
    

    public static void diffNode(DOM.XMLNode node1, DOM.XMLNode node2){
        
    }
    
    public static void diff(DOM.XMLNode node1, DOM.XMLNode node2, List<String> diffs){ //} String ns1, String ns2){

      if (node1.getNodeType() == DOM.XMLNodeType.ELEMENT) {
          Dom.XmlNode[] node1Arr = node1.getChildElements();
          Dom.XmlNode[] node2Arr = node2.getChildElements();
          if(node1Arr.size() != node2Arr.size()){
              System.debug('not equal size..');
          }
          if(node1.getText() != ''){
              System.debug(node1.getText() +' -- '+node2.getText());
          }
          for(integer i=0; i<node1Arr.size(); i++){
              diff(node1Arr[i], node2Arr[i], diffs);
          }
           
      }        
    }

    
    
 
     	/*for (Dom.XMLNode child1: node1Arr) {
        	Dom.XMLNode child2 = node2.getChildElement(child1.getName(), ns2);
            diff(child1,child2,child1.getNamespace(),child2.getNamespace(),diffs);
      	}*/

    
/*System.debug(node1.getNodeType()+'~~'+node1.getName()+'~~'+node1.getText());
      if (node1.getNodeType() == DOM.XMLNodeType.TEXT) {
        System.debug(node1.getText() +''+node2.getText());
      } 
     public static void diffNodes1(DOM.XMLNode node1, DOM.XMLNode node2, List<String> diffs){
       Map<String, DOM.XMLNode> childMap1 = new Map<String, DOM.XMLNode>();
       Map<String, DOM.XMLNode> childMap2 = new Map<String, DOM.XMLNode>();
               
       for (Dom.XMLNode child: node1.getChildElements()) {   
           if(childMap1.containsKey(child.getName())){
               String name = child.getName()+'##';
				childMap1.put(child.getName(),child);
           } else {
               childMap1.put(child.getName(),child);
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
    }*/
    
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
    }
    public static String traverse(DOM.XMLNode node) {
      String result = '\n';
      //System.debug('traverse:'+node.getName());
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
    
    //final String endpoint = 'https://na73.salesforce.com/services/data/v28.0/tooling/sobjects';

    // SomeValues to be store
    public String oid ;
    public String cid ;
    public String apmid ;
    public String carid ;

    public SalesforceTool()
    {
    }

    // used receive response by sending a http request
    private static String getResponse(HttpRequest req)
    {
        try
        {
            Http httpreq = new Http();
            HttpResponse res = httpreq.send(req);
            String reqresponse = res.getBody();
            return reqresponse;
        }
        catch (Exception e)
        {
          return 'Error:' +e.getMessage();
        }
    }

    // create a http request with required endpoint and request method
    private static HttpRequest createHttpRequest(String endpoint, String method)
    {
        HttpRequest req = new
        HttpRequest();
        endpoint += '';
        req.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionID());
        req.setHeader('Content-Type', 'application/json');
        req.setEndpoint(endpoint);
        req.setMethod(method);
        return req;
    }
    
    public static void createApexClass(){
        String endpoint = 'https://na73.salesforce.com/services/data/v28.0/tooling/sobjects';
        // create a Http request with post method
        HttpRequest req = createHttpRequest('https://na73.salesforce.com/services/data/v28.0/tooling/sobjects/ApexClass','POST');
        req.setBody( '{"Name":"ApexClass1","Body":"public class ApexClass1 {}"}');
        // send request and receive response
        String response = getResponse(req);
        // These two lines have no role in creating apex class. So they can be ignored for now.
       // Map<String,Object> rmp = (Map<String,Object>)JSON.deserializeuntyped(response);
       // oid = (String)rmp.get('id');
       System.debug('response:'+response);
    }        
    
}