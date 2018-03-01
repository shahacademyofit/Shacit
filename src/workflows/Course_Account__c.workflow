<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Record_Name</fullName>
        <field>Name</field>
        <formula>TEXT(Course__r.Standard__c) + &apos;-&apos; +  TEXT(Course__r.Type__c) + &apos;-&apos; +  Course__r.Name + &apos;-&apos; +  Account__r.Name + &apos;(&apos; + 
TEXT(YEAR( Start_Date__c )) + &apos;-&apos; + TEXT(YEAR( Start_Date__c )+ 1) + &apos;)&apos;</formula>
        <name>Record Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Name</fullName>
        <actions>
            <name>Record_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Course_Account__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
