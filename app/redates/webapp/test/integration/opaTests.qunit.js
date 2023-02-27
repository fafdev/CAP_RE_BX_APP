sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/lorum4re/aux/redates/test/integration/FirstJourney',
		'com/lorum4re/aux/redates/test/integration/pages/REDatesList',
		'com/lorum4re/aux/redates/test/integration/pages/REDatesObjectPage',
		'com/lorum4re/aux/redates/test/integration/pages/REDates_textsObjectPage'
    ],
    function(JourneyRunner, opaJourney, REDatesList, REDatesObjectPage, REDates_textsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/lorum4re/aux/redates') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheREDatesList: REDatesList,
					onTheREDatesObjectPage: REDatesObjectPage,
					onTheREDates_textsObjectPage: REDates_textsObjectPage
                }
            },
            opaJourney.run
        );
    }
);