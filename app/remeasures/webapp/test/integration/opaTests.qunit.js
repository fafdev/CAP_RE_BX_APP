sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/lorum4re/aux/remeasures/test/integration/FirstJourney',
		'com/lorum4re/aux/remeasures/test/integration/pages/REMeasuresList',
		'com/lorum4re/aux/remeasures/test/integration/pages/REMeasuresObjectPage',
		'com/lorum4re/aux/remeasures/test/integration/pages/REMeasures_textsObjectPage'
    ],
    function(JourneyRunner, opaJourney, REMeasuresList, REMeasuresObjectPage, REMeasures_textsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/lorum4re/aux/remeasures') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheREMeasuresList: REMeasuresList,
					onTheREMeasuresObjectPage: REMeasuresObjectPage,
					onTheREMeasures_textsObjectPage: REMeasures_textsObjectPage
                }
            },
            opaJourney.run
        );
    }
);