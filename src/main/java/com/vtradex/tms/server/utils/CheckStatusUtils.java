package com.vtradex.tms.server.utils;

import com.vtradex.thorn.server.exception.BusinessException;

public class CheckStatusUtils {
    
    /**单据状态entityStatus必须等于标准状态standardStatus 否则抛出异常customer.data.exist.state.valid*/
    public static void checkStatus(String entityStatus, String standardStatus) {
        checkStatus(entityStatus, standardStatus, "customer.data.exist.state.valid");
    }
    
    /**单据状态entityStatus必须等于标准状态standardStatus 否则抛出异常errorMessage*/
    public static void checkStatus(String entityStatus, String standardStatus, String errorMessage) {
        if(errorMessage == null || errorMessage.equals("")) {
            errorMessage = "customer.data.exist.state.valid";
        }
        if(entityStatus==null || standardStatus==null || (!entityStatus.equals(standardStatus))) {
            throw new BusinessException(errorMessage);
        }
    }

}
