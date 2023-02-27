sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.lorum4re.aux.reroles',
            componentId: 'RERolesList',
            entitySet: 'RERoles'
        },
        CustomPageDefinitions
    );
});