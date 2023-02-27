sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/lorum4re/aux/reinfrastructures/test/integration/FirstJourney',
		'com/lorum4re/aux/reinfrastructures/test/integration/pages/REInfrastructuresList',
		'com/lorum4re/aux/reinfrastructures/test/integration/pages/REInfrastructuresObjectPage',
		'com/lorum4re/aux/reinfrastructures/test/integration/pages/REInfrastructures_textsObjectPage'
    ],
    function(JourneyRunner, opaJourney, REInfrastructuresList, REInfrastructuresObjectPage, REInfrastructures_textsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/lorum4re/aux/reinfrastructures') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheREInfrastructuresList: REInfrastructuresList,
					onTheREInfrastructuresObjectPage: REInfrastructuresObjectPage,
					onTheREInfrastructures_textsObjectPage: REInfrastructures_textsObjectPage
                }
            },
            opaJourney.run
        );
    }
);