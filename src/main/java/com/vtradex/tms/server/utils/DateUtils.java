package com.vtradex.tms.server.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.lang.math.NumberUtils;

import com.vtradex.thorn.server.exception.BusinessException;


public class DateUtils {

	
	private static SimpleDateFormat hm = new SimpleDateFormat("HH:mm");
	
	/**
	 * 两个日期之间的间隔天数
	 * @param sDate
	 * @param eDate
	 * @return
	 */
	public static Integer getBetweenDays(Date sDate,Date eDate) {
		long DAY = 24L * 60L * 60L * 1000L; 
		return new Integer((int)((eDate.getTime() - sDate.getTime())/DAY));
	}
	/**
	 * 两个日期之间的间隔月数
	 * @param sDate
	 * @param eDate
	 * @return
	 */
	public static Integer getBetweenMonths(Date sDate,Date eDate) {
		int betweentYears = getBetweenYears(sDate,eDate);
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(sDate);
		int month1 = calendar.get(Calendar.MONTH);
		calendar.setTime(eDate);
		int month2 = calendar.get(Calendar.MONTH);
		return new Integer(betweentYears*12 +( month2 - month1));
	}
	/**
	 * 两个日期之间间隔的年数
	 * @param sDate
	 * @param eDate
	 * @return
	 */
	public static Integer getBetweenYears(Date sDate,Date eDate) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(sDate);
		int year1 = calendar.get(Calendar.YEAR);
		calendar.setTime(eDate);
		int year2 = calendar.get(Calendar.YEAR);
		return new Integer(year2 - year1);
	}
	/**
	 * 目标日期是否在源日期之前
	 * @param sDate
	 * @param eDate
	 * @return
	 */
	public static Boolean before(Date sDate , Date eDate) {
		return eDate.before(sDate);
	}
	/**
	 * 目标日期是否在源日期之后
	 * @param sDate
	 * @param eDate
	 * @return
	 */
	public static Boolean after(Date sDate , Date eDate) {
		return eDate.after(sDate);
	}
	
	/**
	 * <br>比较两个日期大小|d1 > d2
	 * <br>d1或者d2为空时返回null
	 * @param d1
	 * @param d2
	 * @return Boolean
	 */
	public static Boolean dateGT(Date d1 , Date d2){
		if (d1 != null && d2 != null) {
			//System.out.println(d1+"__"+d1.getTime());
			//System.out.println(d2+"__"+d2.getTime());
			return d1.after(d2);
		}else {
			return null;
		}
	}
	/**
	 * <br>比较两个日期大小|d1 < d2
	 * <br>d1或者d2为空时返回null
	 * @param d1
	 * @param d2
	 * @return Boolean
	 */
	public static Boolean dateLT(Date d1 , Date d2){
		if (d1 != null && d2 != null) {
			//System.out.println(d1+"__"+d1.getTime());
			//System.out.println(d2+"__"+d2.getTime());
			return d1.before(d2);
		}else {
			return null;
		}
	}
	/**
	 * <br>比较两个日期大小|d1 >= d2
	 * <br>d1或者d2为空时返回null
	 * @param d1
	 * @param d2
	 * @return Boolean
	 */
	public static Boolean dateGE(Date d1 , Date d2){
		if (d1 != null && d2 != null) {
			//System.out.println(d1+"__"+d1.getTime());
			//System.out.println(d2+"__"+d2.getTime());
			return d1.getTime() == d2.getTime() || d1.after(d2);
		}else {
			return null;
		}
	}
	/**
	 * <br>比较两个日期大小|d1 <= d2
	 * <br>d1或者d2为空时返回null
	 * @param d1
	 * @param d2
	 * @return Boolean
	 */
	public static Boolean dateLE(Date d1 , Date d2){
		if (d1 != null && d2 != null) {
			//System.out.println(d1+"__"+d1.getTime());
			//System.out.println(d2+"__"+d2.getTime());
			return d1.getTime() == d2.getTime() || d1.before(d2);
		}else {
			return null;
		}
	}
	
	public static Object format(Object date){
		return format(date,null);
	}
	
	public static Object format(Object date,String format){
		if(format == null){
			format = "yyyyMMdd";
		}
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		String str = sdf.format(date);
		if(NumberUtils.isDigits(str)){
			return Integer.valueOf(str);
		}
		return str;
		
	}
	
	public static double getDateHour(Object date){
		String str  = hm.format(date);
		return getHour(str);
	}
	
	
	/**
	 * 将使用hh:mm 描述的时间，转换为相对于0点的秒数
	 * 
	 * @param time
	 */
	public static double getHour(String st) {

		if (st == null || st.length() < 3)
			return 0;

		int seperator = st.indexOf(":");
		if (seperator <= 0) {
			return 0;
		}

		String h = st.substring(0, seperator);
		String m = st.substring(seperator + 1);

		return Integer.parseInt(h)  +  Double.parseDouble(m) / 60;
	}
	
	
	public static Date setDateHour(Object date,Object hour){
		double h = Double.valueOf(hour.toString());
		return setDateMinute(date,(int)(h * 60));
	}
	
	public static Date addDateHour(Object date,Object hour){
		double h = Double.valueOf(hour.toString());
		return addDateMinute(date,(int)(h * 60));
	}
	
	public static Date addDateMinute(Object date,int min){
		Calendar c = Calendar.getInstance();
		c.setTime((Date)date);
		c.add(Calendar.MINUTE, min);
		return c.getTime();
	}
	
	public static void main(String[] args) {
		Date date = new Date();
		System.out.println("src:" + date.toLocaleString());
		date = com.vtradex.engine.utils.DateUtils.setDateHour(date, 8);
		System.out.println("desc:" + date.toLocaleString());
		date = com.vtradex.engine.utils.DateUtils.addDateHour(date, 1.5);
//		System.out.println(date.toLocaleString());
	}
	
	public static Date setDateMinute(Object date,int min){
		Calendar c = Calendar.getInstance();
		c.setTime((Date)date);
		c.set(Calendar.HOUR_OF_DAY, 0);
		c.set(Calendar.SECOND, 0);
		c.set(Calendar.MINUTE, min);
		return c.getTime();
	}
	
	
	public static String getWeek(Date date) {
		// 再转换为时间
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		// int hour=c.get(Calendar.DAY_OF_WEEK);
		// hour中存的就是星期几了，其范围 1~7
		// 1=星期日 7=星期六，其他类推
		return new SimpleDateFormat("EEEE").format(c.getTime());
	}
	
	public static int getWeekNumber(Date date){
		Calendar cd = Calendar.getInstance();
		cd.setTime(date);
		return cd.get(Calendar.DAY_OF_WEEK) - 1; 
	}
	
	
	 /****将字符串dateStr用formatStr格式来转换成日期 */
    public static Date getDate(String dateStr, String formatStr) {
        SimpleDateFormat yy = new SimpleDateFormat(formatStr);
        Date m ;
        try {
            m=yy.parse(dateStr);
        }
        catch (ParseException e) {
           throw new BusinessException("日期"+dateStr+"转换成"+formatStr+"格式错误");
        }
        return m;
    }
    /****将日期date转换成formatStr格式的字符串 */
    public static String getDateStr(Date date, String formatStr) {
        if(date == null) {
            return "";
        }
        SimpleDateFormat yy = new SimpleDateFormat(formatStr);
        try {
            return yy.format(date);
        }
        catch (Exception e) {
            throw new BusinessException("日期转换成"+formatStr+"的格式错误");
        }
    }
	
}
