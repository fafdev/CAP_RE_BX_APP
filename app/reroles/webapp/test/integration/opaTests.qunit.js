sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/lorum4re/aux/reroles/test/integration/FirstJourney',
		'com/lorum4re/aux/reroles/test/integration/pages/RERolesList',
		'com/lorum4re/aux/reroles/test/integration/pages/RERolesObjectPage',
		'com/lorum4re/aux/reroles/test/integration/pages/RERoles_textsObjectPage'
    ],
    function(JourneyRunner, opaJourney, RERolesList, RERolesObjectPage, RERoles_textsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/lorum4re/aux/reroles') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRERolesList: RERolesList,
					onTheRERolesObjectPage: RERolesObjectPage,
					onTheRERoles_textsObjectPage: RERoles_textsObjectPage
                }
            },
            opaJourney.run
        );
    }
);