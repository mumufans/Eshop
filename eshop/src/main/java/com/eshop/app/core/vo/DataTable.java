package com.eshop.app.core.vo;

import java.util.List;

/**
 * Created by hubin1 on 2016/12/5.
 */
public class DataTable<T> {
    private int draw; //Clint request times;
    private int recordsTotal; //Total records number without conditions;
    private int recordsFiltered; //Total records number with conditions;
    private List<T> data; //The data we should display on the page;

    public int getDraw() {
        return draw;
    }

    public void setDraw(int draw) {
        this.draw = draw;
    }

    public int getRecordsTotal() {
        return recordsTotal;
    }

    public void setRecordsTotal(int recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public int getRecordsFiltered() {
        return recordsFiltered;
    }

    public void setRecordsFiltered(int recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
