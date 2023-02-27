using AuxCatalogService as service from '../../srv/lrebx-services-aux';
@odata.draft.enabled
annotate service.REDates with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Code,
        },
        {
            $Type : 'UI.DataField',
            Value : Description,
        },
        { 
            $Type : 'UI.DataField',
            Value : InSites,
        },
        {
            $Type : 'UI.DataField',
            Value : InObjects,
        },
        {
            $Type : 'UI.DataField',
            Value : InUnits,
        },
        {
            $Type : 'UI.DataField',
            Value : InContracts,
        },
    ]
);
annotate service.REDates with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Code,
            },
            {
                $Type : 'UI.DataField',
                Value : Description,
            },
            {
                $Type : 'UI.DataField',
                Value : InSites,
            },
            {
                $Type : 'UI.DataField',
                Value : InObjects,
            },
            {
                $Type : 'UI.DataField',
                Value : InUnits,
            },
            {
                $Type : 'UI.DataField',
                Value : InContracts,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.REDates with @(
    UI.SelectionFields : [
        Code,
        Description,
    ]
);
annotate service.REDates with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : Code,
                    Descending : false,
                },
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.REDates with {
    Code @Common.FieldControl : #Mandatory
};
annotate service.REDates with {
    Description @Common.FieldControl : #Mandatory
};
annotate service.REDates with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : Description,
        },
        TypeName : '',
        TypeNamePlural : '',
        TypeImageUrl : 'sap-icon://appointment',
    }
);