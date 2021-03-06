package com.mss.tpo.util;

import com.mss.tpo.ajax.AjaxHandlerService;
import com.mss.tpo.ajax.AjaxHandlerServiceImpl;
import com.mss.tpo.general.GeneralService;
import com.mss.tpo.general.GeneralServiceImpl;
import com.mss.tpo.tpOnboarding.TpOnboardingService;
import com.mss.tpo.tpOnboarding.TpOnboardingServiceImpl;
/*
 * This Class Creates instances of all classes.
 */

public class ServiceLocator {

    /**
     * Creates a new instance of ServiceLocator
     */
    private ServiceLocator() {
    }

    public static GeneralService getGeneralService() throws ServiceLocatorException {
        GeneralService generalService = new GeneralServiceImpl();
        return generalService;
    }

    public static AjaxHandlerService getAjaxHandlerService() throws ServiceLocatorException {
        AjaxHandlerService ajaxHandlerService = new AjaxHandlerServiceImpl();
        return ajaxHandlerService;
    }

    public static TpOnboardingService getTpOnboardingService() throws ServiceLocatorException {
        TpOnboardingService tpOnboardingService = new TpOnboardingServiceImpl();
        return tpOnboardingService;
    }
}
