package com.cyou.ctu.service;

import java.util.ArrayList;
import java.util.List;

import com.cyou.ctu.model.BanAccountInfo;
import com.cyou.ctu.model.TableResult;

public class BanAccountInfoService {
    private TableResult data = new TableResult();
    
    public void addBanAccountInfo(BanAccountInfo bean) {
        List<BanAccountInfo> rows = data.getRows();
        if (null == rows) {
            rows = new ArrayList<BanAccountInfo>();
        }
        rows.add(bean);
        data.setRows(rows);
        data.setTotal(rows.size());
    }

    public TableResult getData() {
        return data;
    }
}
