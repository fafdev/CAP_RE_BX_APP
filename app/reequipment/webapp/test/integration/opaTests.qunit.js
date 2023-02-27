sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/lorum4re/aux/reequipment/test/integration/FirstJourney',
		'com/lorum4re/aux/reequipment/test/integration/pages/REEquipmentList',
		'com/lorum4re/aux/reequipment/test/integration/pages/REEquipmentObjectPage',
		'com/lorum4re/aux/reequipment/test/integration/pages/REEquipment_textsObjectPage'
    ],
    function(JourneyRunner, opaJourney, REEquipmentList, REEquipmentObjectPage, REEquipment_textsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/lorum4re/aux/reequipment') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheREEquipmentList: REEquipmentList,
					onTheREEquipmentObjectPage: REEquipmentObjectPage,
					onTheREEquipment_textsObjectPage: REEquipment_textsObjectPage
                }
            },
            opaJourney.run
        );
    }
);