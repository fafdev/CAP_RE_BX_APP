sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/lorum4re/cfg/recompanies/test/integration/FirstJourney',
		'com/lorum4re/cfg/recompanies/test/integration/pages/RECompaniesList',
		'com/lorum4re/cfg/recompanies/test/integration/pages/RECompaniesObjectPage'
    ],
    function(JourneyRunner, opaJourney, RECompaniesList, RECompaniesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/lorum4re/cfg/recompanies') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRECompaniesList: RECompaniesList,
					onTheRECompaniesObjectPage: RECompaniesObjectPage
                }
            },
            opaJourney.run
        );
    }
);