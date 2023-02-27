sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/lorum4re/aux/recharacteristics/test/integration/FirstJourney',
		'com/lorum4re/aux/recharacteristics/test/integration/pages/RECharacteristicsList',
		'com/lorum4re/aux/recharacteristics/test/integration/pages/RECharacteristicsObjectPage',
		'com/lorum4re/aux/recharacteristics/test/integration/pages/RECharacteristics_textsObjectPage'
    ],
    function(JourneyRunner, opaJourney, RECharacteristicsList, RECharacteristicsObjectPage, RECharacteristics_textsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/lorum4re/aux/recharacteristics') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRECharacteristicsList: RECharacteristicsList,
					onTheRECharacteristicsObjectPage: RECharacteristicsObjectPage,
					onTheRECharacteristics_textsObjectPage: RECharacteristics_textsObjectPage
                }
            },
            opaJourney.run
        );
    }
);