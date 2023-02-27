sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.lorum4re.aux.remeasures',
            componentId: 'REMeasures_textsObjectPage',
            entitySet: 'REMeasures_texts'
        },
        CustomPageDefinitions
    );
});