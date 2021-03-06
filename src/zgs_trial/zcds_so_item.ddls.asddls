@AbapCatalog.sqlViewName: 'ZAOC_SO_ITM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view for SO Item'
@ObjectModel.semanticKey: ['so_id','so_item']
//@Search.searchable: true


define view ZCDS_SO_ITEM as select from zaoc_so_item as SOItem
association to parent zcds_so_header as _SOhdr
    on $projection.so_id = _SOhdr.so_id
    

//    association [0..*] to I_UnitOfMeasureText as _uom 
//    on $projection.unit = _uom.UnitOfMeasure
    
    {
    
    @UI.facet: [

{type: #COLLECTION, position: 10, id: 'SoItem', label: 'Sales Order Item'},

{type: #FIELDGROUP_REFERENCE, position: 10, targetQualifier: 'SoItem1',parentId: 'SoItem', isSummary: true, isPartOfPreview: true},
{type: #FIELDGROUP_REFERENCE, position: 20, targetQualifier: 'SoItem2',parentId: 'SoItem', isSummary: true, isPartOfPreview: true}

]

@UI: {

lineItem: [ { position: 10, importance: #HIGH,label: 'Sales Order' } ],

fieldGroup: [{qualifier: 'SoItem1',position: 10,importance: #HIGH }]

}
@EndUserText:{label: 'Sales Order'}
key  SOItem.so_id,

@UI: {

lineItem: [ { position: 20, importance: #HIGH,label: 'Item' } ],

fieldGroup: [{qualifier: 'SoItem1',position: 20,importance: #HIGH }]

}
@EndUserText:{label: 'Item'}
key  SOItem.so_item,

@UI: {

lineItem: [ { position: 30, importance: #HIGH,label: 'Material' } ],

fieldGroup: [{qualifier: 'SoItem1',position: 30,importance: #HIGH }]

}
@EndUserText:{label: 'Material'}
//@Search.defaultSearchElement: true
//@Search.fuzzinessThreshold: 0.8
SOItem.material,

@UI: {

lineItem: [ { position: 40, importance: #HIGH ,label: 'Quantity'} ],

fieldGroup: [{qualifier: 'SoItem2',position: 10,importance: #HIGH }]

}
@EndUserText:{label: 'Sales Qty'}
SOItem.qty,

@UI: {

lineItem: [ { position: 50, importance: #HIGH ,label: 'UoM'} ],

fieldGroup: [{qualifier: 'SoItem2',position: 20,importance: #HIGH }]

}

@EndUserText:{label: 'UoM'}

//@Semantics.unitOfMeasure: true
//@Consumption.valueHelpDefinition: [{
//        entity:{
//        element: 'UnitOfMeasure',
//        name:'I_UnitOfMeasure'
//        }
//
// }]
  
SOItem.unit,
//_uom,
_SOhdr // Make association public
}
