@AbapCatalog.sqlViewName: 'ZAOC_SO_HDR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for SO Header'

@UI:{
headerInfo:{

typeName: 'Sales Order',
typeNamePlural: 'Sales Orders',
title:{type: #STANDARD,value: 'so_id'}
}

}

@ObjectModel.semanticKey: ['so_id']
@ObjectModel.representativeKey: 'so_id'

define root view zcds_so_header as select from zaoc_so_header as so_hdr 
composition[0..*] of ZCDS_SO_ITEM as _SOItem {

    @UI.facet: [

    {   id: 'GeneralData',        
        type: #COLLECTION,        
        position: 10,        
        label: 'Sales Order Header'        
     },

    {
        type: #FIELDGROUP_REFERENCE,
        position: 10,
        targetQualifier: 'GeneralData1',        
        parentId: 'GeneralData',        
        isSummary: true,        
        isPartOfPreview: true        
     },

    {    
        type: #FIELDGROUP_REFERENCE,    
        position: 20,    
        targetQualifier: 'GeneralData2',    
        parentId: 'GeneralData',
        isSummary: true,    
        isPartOfPreview: true    
    },

    {
    
        id: 'SOItem',    
        purpose: #STANDARD,    
        type: #LINEITEM_REFERENCE,    
        label: 'Sales Order Item',    
        position: 10,    
        targetElement: '_SOItem'    
    }

]

@UI: {
        lineItem: [ { position: 10, importance: #HIGH , label: 'Sales Order#'} ],
        selectionField: [{position: 10 }],
        fieldGroup: [{qualifier: 'GeneralData1',position: 10,importance: #HIGH }]
}
@EndUserText:{label: 'Sales Order'}
  key so_hdr.so_id ,
  
@UI: {
lineItem: [ { position: 20, importance: #HIGH ,label: 'Sales Org'} ],
selectionField: [{position: 20 }],
fieldGroup: [{qualifier: 'GeneralData1',position: 20,importance: #HIGH }]
}
@EndUserText:{label: 'Sales Org'}
  so_hdr.sales_org,

@UI: {
lineItem: [ { position: 30, importance: #HIGH ,label: 'Division'} ],
fieldGroup: [{qualifier: 'GeneralData2',position: 10,importance: #HIGH }]
}
@EndUserText:{label: 'Division'}
so_hdr.div,


@UI: {
lineItem: [ { position: 40, importance: #HIGH,label: 'Dist. Channel' } ],
fieldGroup: [{qualifier: 'GeneralData2',position: 20,importance: #HIGH }]
}
@EndUserText:{label: 'Dist. hannel'}
so_hdr.dist_ch,

@UI: {
lineItem: [ { position: 50, importance: #HIGH,label: 'Created By' } ],
fieldGroup: [{qualifier: 'GeneralData2',position: 30,importance: #HIGH }]
}
@EndUserText:{label: 'Created By'}
so_hdr.created_by,

@UI: {
lineItem: [ { position: 60, importance: #HIGH,label: 'Created Date' } ],
fieldGroup: [{qualifier: 'GeneralData2',position: 40,importance: #HIGH }]
}
@EndUserText:{label: 'Created Date'}
so_hdr.created_dt,

//For action Set Favourite in UI

//@UI.lineItem: [{ type: #FOR_ACTION,dataAction: 'set_favourite',label: 'Set Favourite' },
//{position: 15, importance: #HIGH}]
//@EndUserText.label: 'Favourite'
//so_hdr.favourite,


/*Association*/
_SOItem


}
