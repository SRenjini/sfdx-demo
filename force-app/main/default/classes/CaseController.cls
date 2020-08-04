public with sharing class CaseController {

    @AuraEnabled(cacheable=true)
    public static List<Case> findCases(String searchKey) {
        String key = '%' + searchKey + '%';
        return [SELECT Id, Type, CaseNumber FROM Account WHERE Name LIKE :key  LIMIT 10];
    }

}