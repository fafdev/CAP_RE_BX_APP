sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/lorum4re/cfg/businesspartner/test/integration/FirstJourney',
		'com/lorum4re/cfg/businesspartner/test/integration/pages/BusinessPartnerList',
		'com/lorum4re/cfg/businesspartner/test/integration/pages/BusinessPartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, BusinessPartnerList, BusinessPartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/lorum4re/cfg/businesspartner') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBusinessPartnerList: BusinessPartnerList,
					onTheBusinessPartnerObjectPage: BusinessPartnerObjectPage
                }
            },
            opaJourney.run
        );
    }
);