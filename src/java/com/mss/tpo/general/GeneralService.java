package com.mss.tpo.general;

import com.mss.tpo.util.ServiceLocatorException;

public interface GeneralService {

    public UserInfoBean tpLoginCheck(String loginId) throws ServiceLocatorException;
}
