@AbapCatalog.sqlViewName: 'ZZI_UXTEAM_5551'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface view for UX Team'
define root view ZI_UXTEAM_5551 as select from zrap_uxteam_5551
{

key id as Id,
firstname as Firstname,
lastname as Lastname,
age as Age,
role as Role,
salary as Salary,
active as Active,
@Semantics.systemDateTime.lastChangedAt: true
last_changed_at as LastChangedAt,
@Semantics.systemDateTime.localInstanceLastChangedAt: true
local_last_changed_at as LocalLastChangedAt
    
}
