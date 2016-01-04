package edu.bridgeport.cpsc350.project1.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class CommonUtil {
	public static Integer getIntId(){
		int id = (int)Calendar.getInstance().getTimeInMillis();
		id = id < 0 ? -id : id;
		return id;
	}
	public static String getCurrentDateTime(){
		Calendar calendar = Calendar.getInstance();
		return new SimpleDateFormat("yyyyMMddHHmmss").format(calendar.getTime());
	}
}
