public class schemaParse{

/*
<schema targetNamespace="http://www.wellsfargo.com/CreditBridge" elementFormDefault="qualified" xmlns="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://www.wellsfargo.com/CreditBridge">

   <simpleType name="ConstructionType">

      <restriction base="string">

         <enumeration value="Ground Up LTEQ $350M"/>

         <enumeration value="Ground Up GT $350M"/>

         <enumeration value="Renovation/Addition LTEQ $350M"/>

         <enumeration value="Renovation/Addition GT $350M"/>

         <enumeration value="TI LT $125M"/>

         <enumeration value="TI GT $350M"/>

         <enumeration value="TI GTEQ $125M - $350M"/>

         <enumeration value="WFPF-Purchasing Only"/>

         <enumeration value="Site-built"/>

         <enumeration value="Manufactured Home"/>

      </restriction>

   </simpleType>

   <complexType name="MasterChecklist">

      <sequence>

         <element name="LineOfBusiness" type="string"/>

         <element name="Item" type="tns:MasterChecklistItem" maxOccurs="unbounded" minOccurs="1"></element>

      </sequence>

   </complexType>

   <simpleType name="ChecklistItemType">

      <restriction base="string">

         <enumeration value="Customer"/>

         <enumeration value="Internal"/>

         <enumeration value="Action Item"/>

      </restriction>

   </simpleType>

   <simpleType name="PropertyType">

      <restriction base="string">

         <enumeration value="Bare Land"/>

         <enumeration value="Leased"/>

         <enumeration value="Owned"/>

         <enumeration value="Warehoused"/>

      </restriction>

   </simpleType>

   <simpleType name="ChecklistItemCategory">

      <restriction base="string">

         <enumeration value="Affiliate Business"/>

         <enumeration value="Applicant Information"/>

         <enumeration value="Application Information"/>

         <enumeration value="Application Documents Required by U.S. Small Business Administration"/>

         <enumeration value="Application Package"/>

         <enumeration value="Business Acquisition"/>

         <enumeration value="Business Information"/>

         <enumeration value="Collateral Documents"/>

         <enumeration value="Construction"/>

         <enumeration value="Debt Refinance"/>

         <enumeration value="Debt subordination"/>

         <enumeration value="Entity Documents"/>

         <enumeration value="Equity Injection"/>

         <enumeration value="Financial Information"/>

         <enumeration value="Equipment Purchase"/>

         <enumeration value="Franchise"/>

         <enumeration value="Franchise Related"/>

         <enumeration value="Insurance Requirements"/>

         <enumeration value="Leased Business Premises"/>

         <enumeration value="Miscellaneous"/>

         <enumeration value="Other"/>

         <enumeration value="Pending Credit Items"/>

         <enumeration value="Personal Information"/>

         <enumeration value="Real Estate Related"/>

         <enumeration value="Real Estate Transactions"/>

         <enumeration value="Start-up or Working Capital Request"/>

         <enumeration value="Tenant Improvements or New Construction"/>

         <enumeration value="Underwriter and or Loan Documentation Specialist Special Instructions"/>

         <enumeration value="WFSBA Sales Team Documents"/>

      </restriction>

   </simpleType>

   <simpleType name="CommentType">

      <restriction base="string">

         <enumeration value="General"/>

         <enumeration value="Checklist"/>

         <enumeration value="Checklist Send/Receive"/>

         <enumeration value="Closing"/>

         <enumeration value="Construction"/>

         <enumeration value="Underwriting"/>

         <enumeration value="Portfolio Management"/>

         <enumeration value="Servicing"/>

         <enumeration value="Construction Monitoring"/>

         <enumeration value="Construction Monitoring F/S"/>

      </restriction>

   </simpleType>

   <simpleType name="ContactType">

      <restriction base="string">

         <enumeration value="BDO/SBAB"/>

         <enumeration value="BDO"/>

         <enumeration value="SBAB"/>

         <enumeration value="BA"/>

         <enumeration value="SA"/>

         <enumeration value="RSM"/>

         <enumeration value="ASM"/>

         <enumeration value="NSM"/>

         <enumeration value="BB"/>

         <enumeration value="BBM1"/>

         <enumeration value="BBM2"/>

         <enumeration value="CA"/>

         <enumeration value="UW"/>

         <enumeration value="UWTL"/>

         <enumeration value="Credit Mgr"/>

         <enumeration value="CLM"/>

         <enumeration value="CLMTL"/>

         <enumeration value="CLM Mgr"/>

         <enumeration value="LCO"/>

         <enumeration value="LCOTL"/>

         <enumeration value="LCO Mgr"/>

         <enumeration value="NPM"/>

         <enumeration value="PMG Banker"/>

         <enumeration value="PMGTL"/>

         <enumeration value="Opportunity Owner"/>

         <enumeration value="Relationship Mgr"/>

         <enumeration value="Requestor"/>

         <enumeration value="Co-Requestor"/>

         <enumeration value="Credit Analyst"/>

      </restriction>

   </simpleType>

   <simpleType name="SendReceiveType">

      <restriction base="string">

         <enumeration value="Needed Before Underwriting"/>

         <enumeration value="Needed Before Closing"/>

         <enumeration value="Needed By Closing"/>

      </restriction>

   </simpleType>

   <simpleType name="MasterChecklistItemStatus">

      <restriction base="string">

         <enumeration value="Active"/>

         <enumeration value="In Process"/>

         <enumeration value="Inactive"/>

      </restriction>

   </simpleType>

   <simpleType name="ChecklistItemStatus">

      <restriction base="string">

         <enumeration value="Accepted"/>

         <enumeration value="Received"/>

         <enumeration value="Not Requested"/>

         <enumeration value="Requested"/>

         <enumeration value="Pending"/>

         <enumeration value="In Review"/>

      </restriction>

   </simpleType>

   <simpleType name="OpportunityStage">

      <restriction base="string">

         <enumeration value="Chasing"/>

         <enumeration value="Qualifying"/>

         <enumeration value="Proposing"/>

         <enumeration value="Submitting"/>

         <enumeration value="Submitted"/>

         <enumeration value="Underwriting"/>

         <enumeration value="Processing"/>

         <enumeration value="Closed"/>

      </restriction>

   </simpleType>

   <simpleType name="InstrumentStage">

      <restriction base="string">

         <enumeration value="Sales"/>

         <enumeration value="Underwriting"/>

         <enumeration value="Closing"/>

         <enumeration value="Booking"/>

         <enumeration value="Servicing"/>

         <enumeration value="Maturity"/>

         <enumeration value="Paid Off/Off Books"/>

         <enumeration value="Flood Notice"/>

         <enumeration value="Flood Initiation"/>

         <enumeration value="Flood Determination"/>

         <enumeration value="Document Review"/>

         <enumeration value="Post Close QC"/>

      </restriction>

   </simpleType>

   <simpleType name="OverallStatus">

      <restriction base="string">

         <enumeration value="RED"/>

         <enumeration value="YELLOW"/>

         <enumeration value="GREEN"/>

      </restriction>

   </simpleType>

   <simpleType name="ActivityStatus">

      <restriction base="string">

         <enumeration value="Capture"/>

         <enumeration value="Pre-Process"/>

         <enumeration value="In Process"/>

         <enumeration value="On Hold"/>

         <enumeration value="Post-Process"/>

         <enumeration value="Declined"/>

         <enumeration value="Submitted"/>

         <enumeration value="Completed"/>

         <enumeration value="Withdrawn"/>

      </restriction>

   </simpleType>

   <complexType name="MasterChecklistItem">

      <sequence>

         <element name="ItemId" type="long" nillable="true"/>

         <element name="ItemName" type="string"/>

         <element name="ItemType" type="tns:ChecklistItemType"/>

         <element name="Category" type="tns:ChecklistItemCategory"/>

         <element name="ContactType" type="tns:ContactType"/>

         <element name="ItemDescription" type="string" minOccurs="0"/>

         <element name="Status" type="tns:MasterChecklistItemStatus"/>

         <element name="StatusDate" type="dateTime" nillable="true"/>

         <element name="NeedAtStage" type="tns:InstrumentStage" minOccurs="0"/>

         <element name="DocTemplate" type="string" minOccurs="0"/>

         <element name="CreateDate" type="dateTime" nillable="true"/>

         <element name="Rule" type="long" nillable="true"/>

         <element name="CollectFromParties" type="tns:CollectFromParty" maxOccurs="1" minOccurs="1"/>

         <element name="OrderedDateAppl" type="boolean" nillable="true"/>

         <element name="DueDateAppl" type="boolean" nillable="true"/>

         <element name="ExpiryDateAppl" type="boolean" nillable="true"/>

         <element name="ReTechsAppl" type="boolean" nillable="true"/>

         <element name="DaysUntilDue" type="int" nillable="true"/>

         <element name="DaysUntilExpiry" type="int" nillable="true"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

         <element name="InclInNeedsListGen" type="boolean" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="CollectFromParty">

      <sequence>

         <element name="Party" type="string" minOccurs="1" maxOccurs="unbounded"/>

      </sequence>

   </complexType>

   <simpleType name="SyndicationParticipation">

      <restriction base="string">

         <enumeration value="No Syndication or Participation"/>

         <enumeration value="Syndication - WF Agent"/>

         <enumeration value="Syndication - WF Member"/>

         <enumeration value="WF Participation - Sold"/>

         <enumeration value="WF Participation - Purchased"/>

      </restriction>

   </simpleType>

   <simpleType name="CreditEventType">

      <restriction base="string">

         <enumeration value="New Credit"/>

         <enumeration value="Modification - Increase"/>

         <enumeration value="Modification - Renewal"/>

         <enumeration value="Modification - Extension"/>

         <enumeration value="Assumption"/>

         <enumeration value="Collateral Addition"/>

         <enumeration value="Modification-Cross Collateral Clause (Collateral Add)"/>

      </restriction>

   </simpleType>

   <simpleType name="FDPAClearance">

      <restriction base="string">

         <enumeration value="Not Required"/>

         <enumeration value="Required"/>

         <enumeration value="Not Required but Requested"/>

      </restriction>

   </simpleType>

   <complexType name="Package">

      <sequence>

         <element name="ExternalPackageId" type="string" minOccurs="0"/>

         <element name="PackageId" type="long" nillable="true"/>

         <element name="WCISId" type="string" minOccurs="0"/>

         <element name="PartyName" type="string" minOccurs="0"/>

         <element name="LineOfBusiness" type="string" minOccurs="0"/>

         <element name="LendingRequest" type="tns:LendingRequest" minOccurs="1" maxOccurs="unbounded"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

      </sequence>

   </complexType>

   <simpleType name="LendingRequestType">

      <restriction base="string">

         <enumeration value="Bus Acq-Asset"/>

         <enumeration value="Bus Acq-Stock"/>

         <enumeration value="Constr-Ground Up &lt;= $350M"/>

         <enumeration value="Constr-Ground Up > $350M"/>

         <enumeration value="Constr-Ren/Add &lt;= $350M"/>

         <enumeration value="Constr-Ren/Add > $350M"/>

         <enumeration value="Constr-TI &lt; $125M"/>

         <enumeration value="Constr-TI > $350M"/>

         <enumeration value="Constr-TI >= $125M - $350M"/>

         <enumeration value="Constr-WFPF-Purchasing Only"/>

         <enumeration value="Debt Refi (Non CRE)"/>

         <enumeration value="Debt Refi (CRE)"/>

         <enumeration value="Equipment Purchase"/>

         <enumeration value="Increase Existing Loan"/>

         <enumeration value="Working Capital"/>

      </restriction>

   </simpleType>

   <simpleType name="QualityOfPackage">

      <restriction base="string">

         <enumeration value="Poor"/>

         <enumeration value="Needs"/>

         <enumeration value="Average"/>

         <enumeration value="Good"/>

         <enumeration value="Excellent"/>

      </restriction>

   </simpleType>

   <complexType name="LendingRequest">

      <sequence>

         <element name="LendingRequestInfo" type="tns:LendingRequestInfo"/>

         <element name="Teams" type="tns:Team" minOccurs="0" maxOccurs="1"/>

         <element name="Parties" type="tns:Parties" minOccurs="0" maxOccurs="1"/>

         <element name="Checklist" type="tns:Checklist" minOccurs="0" maxOccurs="1"/>

         <element name="ChecklistAnswers" type="tns:ChecklistAnswers" minOccurs="0" maxOccurs="1"/>

         <element name="Comments" type="tns:Comments" minOccurs="0" maxOccurs="1"/>

         <element name="SystemIdentifiers" type="tns:SystemIdentifiers" minOccurs="0" maxOccurs="1"/>

         <element name="Referral" type="tns:Referral" minOccurs="0" maxOccurs="1"/>

         <element name="CollateralList" type="tns:CollateralList" minOccurs="0" maxOccurs="1"/>

         <element name="History" type="tns:History" minOccurs="0" maxOccurs="1"/>

         <element name="SendReceives" type="tns:SendReceives" minOccurs="0" maxOccurs="1"/>

      </sequence>

   </complexType>

   <complexType name="LendingRequestInfo">

      <sequence>

         <element name="ExternalLendingRequestId" type="string" minOccurs="0"/>

         <element name="LendingRequestId" type="long" nillable="true"/>

         <element name="ActivityRef" type="string" minOccurs="0"/>

         <element name="LendingRequestType" type="tns:LendingRequestType" minOccurs="0" maxOccurs="1"/>

         <element name="LendingRequestName" type="string" minOccurs="1" maxOccurs="1"/>

         <element name="Amount" type="double" nillable="true"/>

         <element name="CurrencyCode" type="string" minOccurs="0"/>

         <element name="Product" type="string" minOccurs="1" maxOccurs="1"/>

         <element name="Country" type="string" minOccurs="0"/>

         <element name="IssuingState" type="string" minOccurs="0"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="ExtendedLendingRequestInfo">

      <complexContent>

         <extension base="tns:LendingRequestInfo">

            <sequence>

               <element name="BlastJobId" type="string" minOccurs="0"/>

               <element name="LendingRequestStage" type="tns:InstrumentStage" minOccurs="0"/>

               <element name="OpportunityStage" type="tns:OpportunityStage" minOccurs="0"/>

               <element name="ActivityStatus" type="tns:ActivityStatus" minOccurs="0"/>

               <element name="ActivityStatusReason" type="string" minOccurs="0"/>

               <element name="OverallStatus" type="tns:OverallStatus" minOccurs="0"/>

               <element name="Construction" type="boolean" nillable="true"/>

               <element name="BridgeLoanAmount" type="double" nillable="true"/>

               <element name="ProjectedCloseDate" type="date" nillable="true"/>

               <element name="CloseDate" type="date" nillable="true"/>

               <element name="ApplicationSignedDate" type="date" nillable="true"/>

               <element name="WorkbookCertifiedDate" type="date" nillable="true"/>

               <element name="ConsumerExpectedCloseDate" type="date" nillable="true"/>

               <element name="FinancialContingencyDate" type="date" nillable="true"/>

               <element name="FranchiseLoan" type="boolean" nillable="true"/>

               <element name="Franchise" type="string" minOccurs="0"/>

               <element name="NonTargetFranchiseName" type="string" minOccurs="0"/>

               <element name="VeteransAdvantage" type="boolean" nillable="true"/>

               <element name="OutOfFootprint" type="boolean" nillable="true"/>

               <element name="CertifiedDevCompany" type="string" minOccurs="0"/>

               <element name="EligibilityTesting" type="boolean" nillable="true"/>

               <element name="CommitmentReceivedDate" type="date" nillable="true"/>

               <element name="RecommendDecline" type="boolean" nillable="true"/>

               <element name="RecommendDeclineInternalContact" type="string" minOccurs="0"/>

               <element name="RecommendDeclineDate" type="date" nillable="true"/>

               <element name="RecommendDeclineReason" type="string" minOccurs="0"/>

               <element name="RecommendDeclineNameAddress" type="string" minOccurs="0"/>

              <element name="RecommendDeclineExplanation" type="string" minOccurs="0"/>

               <element name="InitialCustomerContacted" type="dateTime" nillable="true"/>

               <element name="LCOComplex" type="boolean" nillable="true"/>

               <element name="SBANumber" type="string" minOccurs="0"/>

               <element name="SBANumberDate" type="dateTime" nillable="true"/>

               <element name="RushJob" type="boolean" nillable="true"/>

               <element name="QualityOfPackage" type="tns:QualityOfPackage" minOccurs="0"/>

               <element name="ConstructionType" type="tns:ConstructionType" minOccurs="0"/>

               <element name="ConstructionAmount" type="double" nillable="true"/>

               <element name="MonitoringService" type="string" minOccurs="0"/>

               <element name="BridgeMonitoring" type="boolean" nillable="true"/>

               <element name="CollateralAsIsAmount" type="double" nillable="true"/>

               <element name="CollateralAsProposedAmount" type="double" nillable="true"/>

               <element name="ClosedWithoutPermit" type="boolean" nillable="true"/>

               <element name="Watchlist" type="boolean" nillable="true"/>

               <element name="SalesTeam" type="string" minOccurs="0"/>

               <element name="UnderwritingTeam" type="string" minOccurs="0"/>

               <element name="ClosingTeam" type="string" minOccurs="0"/>

               <element name="ConstructionTeam" type="string" minOccurs="0"/>

               <element name="ServicingTeam" type="string" minOccurs="0"/>

               <element name="RequestorTeam" type="string" minOccurs="0"/>

               <element name="SyndicationParticipation" type="tns:SyndicationParticipation" minOccurs="0"/>

              <element name="CrossCollateralizedWithOtherLoans" type="boolean" nillable="true"/>

               <element name="CreditEventType" type="tns:CreditEventType" minOccurs="0"/>

               <element name="SecuredByCollateral" type="boolean" nillable="true"/>

               <element name="Requestor" type="string" minOccurs="0"/>

               <element name="RequestorJob" type="string" minOccurs="0"/>

               <element name="FDPAClearance" type="tns:FDPAClearance" minOccurs="0"/>

               <element name="ReasonForSubmitting" type="string" minOccurs="0"/>

               <element name="FloodAttested" type="dateTime" nillable="true"/>

               <element name="FloodAttestationApprover" type="string" minOccurs="0"/>

               <element name="FloodAttestationApproved" type="dateTime" nillable="true"/>

               <element name="FixedRate" type="boolean" nillable="true"/>

               <element name="PurchaseContractExpireDate" type="date" nillable="true"/>

               <element name="SLAOverride" type="boolean" nillable="true"/>

            </sequence>

         </extension>

      </complexContent>

   </complexType>

   <complexType name="TeamMember">

      <sequence>

         <element name="EmployeeId" type="string" minOccurs="1"/>

         <element name="FirstName" type="string" minOccurs="0"/>

         <element name="LastName" type="string" minOccurs="0"/>

         <element name="Role" type="tns:ContactType"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="CollateralList">

      <sequence>

         <element name="Collateral" type="tns:Collateral" minOccurs="0" maxOccurs="unbounded"/>

      </sequence>

   </complexType>

   <complexType name="Collateral">

      <sequence>

         <element name="ExternalCollateralId" type="string" minOccurs="0"/>

         <element name="CollateralId" type="long" nillable="true"/>

         <element name="Primary" type="boolean" nillable="true"/>

         <element name="CollateralCode" type="string"/>

         <element name="Owner" type="string" minOccurs="0"/>

         <element name="OwnerWICSId" type="string" minOccurs="0"/>

         <element name="OwnerExternalId" type="string" minOccurs="0"/>

        <element name="OwnerLoanSystem" type="string" minOccurs="0"/>

         <element name="OwnerLoanSystemId" type="string" minOccurs="0"/>

         <element name="Description" type="string" minOccurs="0"/>

         <element name="PropertyList" type="tns:PropertyList"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="PropertyList">

      <sequence>

         <element name="Property" type="tns:Property" minOccurs="0" maxOccurs="unbounded"/>

      </sequence>

   </complexType>

   <complexType name="Property">

      <sequence>

         <element name="ExternalPropertyId" type="string" minOccurs="0"/>

         <element name="PropertyId" type="long" nillable="true"/>

         <element name="CrossCollateralized" type="boolean" nillable="true"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="RealEstate">

      <complexContent>

         <extension base="tns:Property">

            <sequence>

               <element name="TakenAsAbundanceOfCaution" type="boolean" nillable="true"/>

               <element name="FIRREAExemption" type="string" minOccurs="0"/>

               <element name="PropertyType" type="tns:PropertyType"/>

               <element name="AddressLine1" type="string"/>

               <element name="AddressLine2" type="string" minOccurs="0"/>

               <element name="AddressLine3" type="string" minOccurs="0"/>

               <element name="City" type="string" minOccurs="0"/>

               <element name="State" type="string" minOccurs="0"/>

               <element name="Zip" type="string" minOccurs="0"/>

               <element name="Country" type="string" minOccurs="0"/>

            </sequence>

         </extension>

      </complexContent>

   </complexType>

   <complexType name="Parties">

      <sequence>

         <element name="Party" type="tns:Party" minOccurs="1" maxOccurs="unbounded"/>

      </sequence>

   </complexType>

   <complexType name="Party">

      <sequence>

         <element name="ExternalPartyId" type="string" minOccurs="0"/>

         <element name="WICSId" type="string" minOccurs="0"/>

         <element name="PartyId" type="long" nillable="true"/>

         <element name="ContactLastName" type="string" nillable="true"/>

         <element name="ContactFirstName" type="string" nillable="true"/>

         <element name="PartyName" type="string" minOccurs="0"/>

         <element name="Role" type="string"/>

         <element name="AddressLine1" type="string" minOccurs="0"/>

         <element name="AddressLine2" type="string" minOccurs="0"/>

         <element name="AddressLine3" type="string" minOccurs="0"/>

         <element name="City" type="string" minOccurs="0"/>

         <element name="State" type="string" minOccurs="0"/>

         <element name="Zip" type="string" minOccurs="0"/>

         <element name="Country" type="string" minOccurs="0"/>

         <element name="Phone" type="string" minOccurs="0"/>

         <element name="Primary" type="boolean" nillable="true"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="ChecklistAnswers">

      <sequence>

         <element name="ChecklistAnswer" type="tns:ChecklistAnswer" minOccurs="0" maxOccurs="unbounded"/>

      </sequence>

   </complexType>

   <complexType name="ChecklistAnswer">

      <sequence>

         <element name="Code" type="string"/>

         <element name="Value" type="string" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="ChecklistItem">

      <sequence>

         <element name="ExternalChecklistItemId" type="string" minOccurs="0"/>

         <element name="ChecklistItemId" type="long" nillable="true"/>

         <element name="MasterChecklistItemId" type="long" nillable="true"/>

         <element name="ItemName" type="string"/>

         <element name="ItemType" type="tns:ChecklistItemType"/>

         <element name="Category" type="tns:ChecklistItemCategory"/>

         <element name="NeedAtStage" type="tns:InstrumentStage"/>

         <element name="ItemStatus" type="tns:ChecklistItemStatus"/>

         <element name="StatusDate" type="dateTime" nillable="true"/>

         <element name="DocumentTemplate" type="string" minOccurs="0"/>

         <element name="ItemDescription" type="string" minOccurs="0"/>

         <element name="CreateDate" type="dateTime" nillable="true"/>

         <element name="ReceivedDate" type="dateTime" nillable="true"/>

         <element name="OvrrdRcvdDate" type="dateTime" nillable="true"/>

         <element name="DocLink" type="string" minOccurs="0"/>

         <element name="Required" type="boolean" nillable="true"/>

         <element name="GenerateDoc" type="boolean" nillable="true"/>

         <element name="ContactType" type="tns:ContactType" minOccurs="0"/>

         <element name="ContactUser" type="string" minOccurs="0"/>

         <element name="ContactUserEmployeeId" type="string" minOccurs="0"/>

         <element name="ExternalPartyId" type="string" minOccurs="0"/>

         <element name="PartyId" type="long" nillable="true"/>

         <element name="PartyName" type="string" minOccurs="0"/>

         <element name="PartyType" type="string" minOccurs="0"/>

         <element name="OrderedDate" type="date" nillable="true"/>

         <element name="CalcDueDate" type="date" nillable="true"/>

         <element name="DueDate" type="date" nillable="true"/>

         <element name="CalcExpiryDate" type="date" nillable="true"/>

         <element name="ExpiryDate" type="date" nillable="true"/>

         <element name="RetechsRvwDueDate" type="date" nillable="true"/>

         <element name="RetechsRvwRcvdDate" type="date" nillable="true"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

         <element name="InclInNeedsListGen" type="boolean" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="Team">

      <sequence>

         <element name="TeamGroup" type="string" minOccurs="0"/>

         <element name="Member" type="tns:TeamMember" minOccurs="0" maxOccurs="unbounded"/>

      </sequence>

   </complexType>

   <complexType name="Checklist">

      <sequence>

         <element name="GenerateDocumentTimestamp" type="dateTime" nillable="true"/>

         <element name="GenerateDocumentRequestor" type="string" minOccurs="0"/>

         <element name="ChecklistItem" type="tns:ChecklistItem" maxOccurs="unbounded" minOccurs="1"/>

      </sequence>

   </complexType>

   <complexType name="Comment">

      <sequence>

         <element name="ExternalCommentId" type="string" minOccurs="0"/>

         <element name="CommentId" type="long" nillable="true"/>

         <element name="CommentDate" type="dateTime" nillable="true"/>

         <element name="CommentType" type="tns:CommentType" minOccurs="0"/>

         <element name="ItemRef" type="string" minOccurs="0"/>

         <element name="EmployeeId" type="string" minOccurs="0"/>

         <element name="User" type="string" minOccurs="0"/>

         <element name="Stage" type="tns:InstrumentStage" minOccurs="0"/>

         <element name="Comment" type="string"/>

      </sequence>

   </complexType>

   <complexType name="Comments">

      <sequence>

         <element name="Comment" type="tns:Comment" minOccurs="0" maxOccurs="unbounded"/>

      </sequence>

   </complexType>

   <complexType name="SystemIdentifiers">

      <sequence>

         <element name="SystemIdentifier" type="tns:SystemIdentifier" minOccurs="0" maxOccurs="unbounded"/>

      </sequence>

   </complexType>

   <complexType name="SystemIdentifier">

      <sequence>

         <element name="ExternalSystem" type="string"/>

         <element name="Type" type="string"/>

         <element name="Identifier" type="string"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="Referral">

      <sequence>

         <element name="InternalReferralSource" type="string" minOccurs="0"/>

         <element name="InternalReferralEmployee" type="string" minOccurs="0"/>

         <element name="InternalReferralEmail" type="string" minOccurs="0"/>

         <element name="InternalReferralPhone" type="string" minOccurs="0"/>

         <element name="ExternalReferralSource" type="string" minOccurs="0"/>

         <element name="ExternalReferralFirstName" type="string" minOccurs="0"/>

         <element name="ExternalReferralLastName" type="string" minOccurs="0"/>

         <element name="ExternalReferralPhone" type="string" minOccurs="0"/>

         <element name="ExternalReferralEmail" type="string" minOccurs="0"/>

         <element name="ReferToReferralSource" type="string" minOccurs="0"/>

         <element name="ReferToEmployee" type="string" minOccurs="0"/>

         <element name="ReferToEmail" type="string" minOccurs="0"/>

         <element name="ReferToPhone" type="string" minOccurs="0"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="History">

      <sequence>

         <element name="CreateDate" type="dateTime" nillable="true"/>

         <element name="SalesSubmitDate" type="dateTime" nillable="true"/>

        <element name="UWReceivedDate" type="dateTime" nillable="true"/>

         <element name="UWStartDate" type="dateTime" nillable="true"/>

         <element name="UWSubmitDate" type="dateTime" nillable="true"/>

         <element name="UWApprovedDate" type="dateTime" nillable="true"/>

         <element name="DeclinedDate" type="dateTime" nillable="true"/>

         <element name="ClosingStartDate" type="dateTime" nillable="true"/>

         <element name="ClosingReceivedDate" type="dateTime" nillable="true"/>

         <element name="ClosingSubmitDate" type="dateTime" nillable="true"/>

         <element name="CompletedDate" type="dateTime" nillable="true"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="SendReceives">

      <sequence>

         <element name="SendReceive" type="tns:SendReceive" minOccurs="0" maxOccurs="unbounded"/>

      </sequence>

   </complexType>

   <complexType name="SendReceive">

      <sequence>

         <element name="RequestId" type="long" nillable="true"/>

         <element name="RequestType" type="tns:SendReceiveType"/>

         <element name="RequestDate" type="dateTime" nillable="true"/>

         <element name="ReceivedDate" type="dateTime" nillable="true"/>

         <element name="CollectFromParty" type="string" minOccurs="0"/>

         <element name="CollectFromInternalContact" type="string" minOccurs="0"/>

         <element name="Stage" type="tns:InstrumentStage"/>

         <element name="User" type="string" minOccurs="0"/>

         <element name="EmployeeId" type="string" minOccurs="0"/>

         <element name="ContactType" type="tns:ContactType" minOccurs="0"/>

         <element name="Description" type="string" minOccurs="0"/>

         <element name="LastModifyDate" type="dateTime" nillable="true"/>

      </sequence>

   </complexType>

   <complexType name="ResponseHeader">

      <sequence>

         <element name="Status" type="int" nillable="true" maxOccurs="1" minOccurs="1"/>

         <element name="RequestTime" type="dateTime"/>

         <element name="ResponseTime" type="dateTime"/>

         <element name="RequestIdentifier" type="string" minOccurs="0"/>

         <element name="Context" type="tns:Context" maxOccurs="1" minOccurs="1"/>

         <element name="Message" type="string" nillable="true" maxOccurs="1" minOccurs="1"/>

         <element name="Description" type="string" maxOccurs="1" minOccurs="0"/>

         <element name="FWBuild" type="string" maxOccurs="1" minOccurs="1"/>

         <element name="Build" type="string" maxOccurs="1" minOccurs="1"/>

      </sequence>

   </complexType>

   <complexType name="Context">

      <sequence>

         <element name="UserName" type="string" maxOccurs="1" minOccurs="0"/>

         <element name="Method" type="string" maxOccurs="1" minOccurs="0"/>

         <element name="PathContext" type="string" maxOccurs="1" minOccurs="0"/>

         <element name="Version" type="string" maxOccurs="1" minOccurs="0"/>

         <element name="AppContext" type="string" maxOccurs="1" minOccurs="0"/>

         <element name="ResidualPath" type="string" maxOccurs="1" minOccurs="0"/>

         <element name="Query" type="string" maxOccurs="1" minOccurs="0"/>

         <element name="Context" type="string" maxOccurs="1" minOccurs="0"/>

      </sequence>

   </complexType>

   <!--requests-->

   <element name="ChecklistGenerationRequest">

      <complexType>

         <sequence>

            <element name="Package" type="tns:Package"/>

         </sequence>

      </complexType>

   </element>

   <element name="LendingRequestSynchRequest">

      <complexType>

         <sequence>

            <element name="Package" type="tns:Package" minOccurs="1" maxOccurs="unbounded"/>

         </sequence>

      </complexType>

   </element>

   <!--response-->

   <element name="SynchResponse">

      <complexType>

         <sequence>

            <element name="ResponseHeader" type="tns:ResponseHeader" maxOccurs="1" minOccurs="1"/>

            <choice>

               <element name="MasterChecklist" type="tns:MasterChecklist" maxOccurs="1" minOccurs="0"/>

               <element name="Package" type="tns:Package" minOccurs="0" maxOccurs="unbounded"/>

            </choice>

         </sequence>

      </complexType>

   </element>

</schema>
*/
}