SELECT waveDoc.CODE AS "组号",
        waveDoc.CODE AS "波次.波次号",
        waveDoc.WORK_MODE AS "波次.作业方式",
        waveDoc.TO_LOC_CODE AS "波次.分拣库位"
 FROM WMS_WAVE_DOC waveDoc
 WHERE 1=1
 /~代码: AND waveDoc.CODE = {代码}~/

