sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.lorum4re.aux.recharacteristics',
            componentId: 'RECharacteristicsObjectPage',
            entitySet: 'RECharacteristics'
        },
        CustomPageDefinitions
    );
});