namespace com.lorum4re.aux;

using
{
    Currency,
    cuid,
    managed,
    sap
}
from '@sap/cds/common';

entity REDates : managed
{
    key Code : Integer
        @title : '{i18n>Code}';
    Description : localized String
        @title : '{i18n>Description}';
    InSites : Boolean
        @title : '{i18n>InSites}';
    InObjects : Boolean
        @title : '{i18n>InObjects}';
    InUnits : Boolean
        @title : '{i18n>InUnits}';
    InContracts : Boolean
        @title : '{i18n>InContracts}';
}

entity RERoles : managed
{
    key Code : Integer
        @title : '{i18n>Code}';
    Description : localized String
        @title : '{i18n>Description}';
    InSites : Boolean
        @title : '{i18n>InSites}';
    InObjects : Boolean
        @title : '{i18n>InObjects}';
    InUnits : Boolean
        @title : '{i18n>InUnits}';
    InContracts : Boolean
        @title : '{i18n>InContracts}';
}

entity RECharacteristics : managed
{
    key Code : Integer
        @title : '{i18n>Code}';
    Description : localized String
        @title : '{i18n>Description}';
    InSites : Boolean
        @title : '{i18n>InSites}';
    InObjects : Boolean
        @title : '{i18n>InObjects}';
    InUnits : Boolean
        @title : '{i18n>InUnits}';
}

entity REInfrastructures : managed
{
    key Code : Integer
        @title : '{i18n>Code}';
    Description : localized String
        @title : '{i18n>Description}';
    InSites : Boolean
        @title : '{i18n>InSites}';
    InObjects : Boolean
        @title : '{i18n>InObjects}';
    InUnits : Boolean
        @title : '{i18n>InUnits}';
}

entity REMeasures : managed
{
    key Code : Integer
        @title : '{i18n>Code}';
    Description : localized String
        @title : '{i18n>Description}';
    InSites : Boolean
        @title : '{i18n>InSites}';
    InObjects : Boolean
        @title : '{i18n>InObjects}';
    InUnits : Boolean
        @title : '{i18n>InUnits}';
}

entity REEquipment : managed
{
    key Code : Integer
        @title : '{i18n>Code}';
    Description : localized String
        @title : '{i18n>Description}';
    InSites : Boolean
        @title : '{i18n>InSites}';
    InObjects : Boolean
        @title : '{i18n>InObjects}';
    InUnits : Boolean
        @title : '{i18n>InUnits}';
}
