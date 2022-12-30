package com.community.Task;

import cn.hutool.core.date.DateTime;
import com.community.bean.MerYearIncome;
import com.community.bean.Merchant;
import com.community.dao.MerchantDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.ArrayList;


@Component
public class Timing_Task {

    @Autowired
    MerchantDao merchantDao;

    @Scheduled(cron = "0 0 0 30 12 ?")
    public void InsertMonthIncomeSql(){
        System.out.println(new DateTime()+"创建明年的商家月收入表");
        ArrayList<Merchant> list=merchantDao.gerMerchantID();
        String[] date=(new DateTime()).toString().split(" ");
        String[] arr=date[0].split("-");
        String year=arr[0];
        String month=arr[1];
        int a= Integer.parseInt(year)+1;
        for(int i=0;i<list.size();i++)
        {
            for(int j=1;j<=12;j++)
            {
                String b=null;
                if(j<10)
                    b="0"+j;
                else
                    b=""+j;
                merchantDao.InsertMonthIncome(list.get(i).getMerchantid(),a+"-"+b);
            }
        }
    }

    @Scheduled(cron = "0 0 0 1 1 ?")
    public void InsertYearIncomeSql(){
        System.out.println(new DateTime()+"创建去年的商家年收入表");
        ArrayList<Merchant> list=merchantDao.gerMerchantID();
        String[] date=(new DateTime()).toString().split(" ");
        String[] arr=date[0].split("-");
        String year=arr[0];
        String month=arr[1];
        int a= Integer.parseInt(year)-1;
        for(int i=0;i<list.size();i++)
        {
            MerYearIncome merYearIncome=new MerYearIncome();
            merYearIncome.setMerchantid(list.get(i).getMerchantid());
            merYearIncome.setYear(a+"%");
            Double Income=merchantDao.getYearMonthIncome(merYearIncome);
            merYearIncome.setYear(a+"");
            merYearIncome.setAnnualIncome(Income);
            merchantDao.setYearMonthIncome(merYearIncome);
        }
    }
}
