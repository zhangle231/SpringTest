package com.cyou.ctu.model;

import java.util.List;

public class TableResult {
    int total;
    List<BanAccountInfo> rows;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<BanAccountInfo> getRows() {
        return rows;
    }

    public void setRows(List<BanAccountInfo> rows) {
        this.rows = rows;
    }

}