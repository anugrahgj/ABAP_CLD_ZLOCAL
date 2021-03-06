@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Contractor Header'
define root view entity ZI_HD_CONTRACTOR as select from zhd_contractor as contractor
composition[0..*] of ZI_TM_ATTENDANCE as _attendance 
association[1..1] to I_Country as _country on $projection.Country = _country.Country
{
    key contr_key as ContractorKey,
    contractor_id as ContractorId,
    vendor_id as VendorId,
    first_name as FirstName,
    last_name as LastName,
    country as Country,
    start_date as StartDate,
    end_date as EndDate,
    status as Status,
@Semantics.user.createdBy: true    
    created_by as CreatedBy,
@Semantics.systemDateTime.createdAt: true    
    created_at as CreatedAt,
@Semantics.user.lastChangedBy: true    
    last_changed_by as ChangedBy,
@Semantics.systemDateTime.localInstanceLastChangedAt: true    
    last_changed_at as ChangedAt,
    _attendance, // Make association public
    _country // Make association public
}
