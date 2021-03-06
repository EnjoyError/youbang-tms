package com.vtradex.tms.server.utils;

import java.math.BigDecimal;
import java.math.MathContext;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import com.vtradex.tms.server.service.GlobalParamUtils;

public class DoubleUtils{
	//默认除法运算精度
	private static final int DEF_DIV_SCALE = 10;
	
	/**
	 * 将一个数字的字符串，格式化为标准的三位小数的显示方式并且四舍五入
	 * @param a
	 * @return
	 */
	public static double format3Fraction(Object a) {
		return formatByPrecision(a,3);
	}
	
	public static double format2Fraction(Object a){
		return formatByPrecision(a,2);
	}
	
	public static double format1Fraction(Object a){
		return formatByPrecision(a,1);
	}
	
	public static double formatByPrecision(Object o,int precision){
		BigDecimal  bd = new  BigDecimal(o.toString());
		BigDecimal  bdWithPrecision = bd.setScale(precision,BigDecimal.ROUND_HALF_UP);
		return bdWithPrecision.doubleValue();
	}
	
	public static double formateByDefaultPrecesion(Object o){
		int pre = Integer.valueOf(GlobalParamUtils.getGloableStringValue("maintainTableDecimal")).intValue();
		return formatByPrecision(o,pre);
	}
	public static Double replaceNullToZero(Double d) {
		if(d==null) {
			return 0D;
		}
		return d;
	}
	
	/**
	 * 比较Double型字段大小
	 * 
	 * eg. source < target >>>> -1
	 * eg. source > target >>>> 1
	 * eg. source == target >>>> 0
	 * 
	 * @param source
	 * @param target
	 * @param precision
	 * @return
	 */
	public static int compareByPrecision(Double source, Double target, int precision) {
		BigDecimal src = (new BigDecimal(source.toString())).setScale(precision,BigDecimal.ROUND_HALF_UP);
		BigDecimal dst = (new BigDecimal(target.toString())).setScale(precision,BigDecimal.ROUND_HALF_UP);
		
		return src.compareTo(dst);
	}
	
	public static Double getDecimalHourByDate(Date date) {
		Calendar cal = new GregorianCalendar();
		cal.setTime(date);
		
		int a = cal.get(Calendar.HOUR_OF_DAY);
		double b = cal.get(Calendar.MINUTE) / 60.00;
		//double c = cal.get(Calendar.SECOND) / 3600.00;
		double hour = a + b;
		
		return formatByPrecision(hour,4);
	}
	
	/**
	 * 提供精确的加法运算。
	 * @param v1 被加数
	 * @param v2 加数
	 * @return 两个参数的和
	 */
	public static double add(double v1,double v2,int scale){
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.add(b2).setScale(scale, BigDecimal.ROUND_HALF_UP).doubleValue();
	}
	/**
	 * 提供精确的加法运算。
	 * @param v1 被加数
	 * @param v2 加数
	 * @return 两个参数的和
	 */
	public static double add(double v1,double v2){
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.add(b2).setScale(BigDecimal.ROUND_HALF_UP).doubleValue();
	}
	
	/**
	 * 提供精确的减法运算。
	 * @param v1 被减数
	 * @param v2 减数
	 * @return 两个参数的差
	 */
	public static double sub(double v1,double v2,int scale){
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.subtract(b2).setScale(scale, BigDecimal.ROUND_HALF_UP).doubleValue();
	} 
	
	/**
	 * 提供精确的减法运算。
	 * @param v1 被减数
	 * @param v2 减数
	 * @return 两个参数的差
	 */
	public static double sub(double v1,double v2){
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.subtract(b2).setScale(BigDecimal.ROUND_HALF_UP).doubleValue();
	} 
	
	/**
	 * 提供精确的乘法运算。
	 * @param v1 被乘数
	 * @param v2 乘数
	 * @return 两个参数的积
	 */
	public static double mul(double v1,double v2,int scale){
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.multiply(b2).setScale(scale, BigDecimal.ROUND_HALF_UP).doubleValue();
	}
	
	/**
	 * 提供（相对）精确的除法运算，当发生除不尽的情况时，精确到
	 * 小数点以后10位，以后的数字四舍五入。
	 * @param v1 被除数
	 * @param v2 除数
	 * @return 两个参数的商
	 */
	public static double div(double v1,double v2){
		return div(v1,v2,DEF_DIV_SCALE);
	}
	
	/**
	 * 提供（相对）精确的除法运算。当发生除不尽的情况时，由scale参数指
	 * 定精度，以后的数字四舍五入。
	 * @param v1 被除数
	 * @param v2 除数
	 * @param scale 表示表示需要精确到小数点以后几位。
	 * @return 两个参数的商
	 */
	public static double div(double v1,double v2,int scale){
		if(scale<0){
			throw new IllegalArgumentException(
					"The scale must be a positive integer or zero");
		}
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.divide(b2,scale,BigDecimal.ROUND_HALF_UP).doubleValue();
	}
	
	public static void main(String[] args) {
		Double d1 = 8D;
		Double d2 = 3D;
		System.out.println(DoubleUtils.div(d1, d2, 3));
	}
}
