@EndUserText.label: 'Consumption View for UX team'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #NOT_REQUIRED

define root view entity ZC_UXTEAM_5551 as projection on ZI_UXTEAM_5551 as UXTeam
{
    @EndUserText.label: 'Id' 
    key Id,
    @EndUserText.label: 'First Name'
    @Search.defaultSearchElement: true
    Firstname,
    @EndUserText.label: 'Last Name'
    @Search.defaultSearchElement: true
    Lastname,
    @EndUserText.label: 'Age'
    Age,
    @Search.defaultSearchElement: true
    @EndUserText.label: 'Role'
    Role,
    @EndUserText.label: 'Salary'
    Salary,
    @EndUserText.label: 'Active'
    Active,
    LastChangedAt,
    LocalLastChangedAt   
}
