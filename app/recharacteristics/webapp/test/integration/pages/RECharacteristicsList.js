sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.lorum4re.aux.recharacteristics',
            componentId: 'RECharacteristicsList',
            entitySet: 'RECharacteristics'
        },
        CustomPageDefinitions
    );
});