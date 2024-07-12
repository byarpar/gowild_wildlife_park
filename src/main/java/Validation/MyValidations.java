package Validation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MyValidations {

	// https://beginnersbook.com/2013/05/java-date-format-validation/
	public static boolean validateJavaDate(String strDate) {
		/*
		 * Set preferred date format, For example MM-dd-yyyy, MM.dd.yyyy,dd.MM.yyyy etc.
		 */
		SimpleDateFormat sdfrmt = new SimpleDateFormat("yyyy-MM-dd");
		sdfrmt.setLenient(false);
		/*
		 * Create Date object parse the string into date
		 */
		try {
			Date javaDate = sdfrmt.parse(strDate);
			System.out.println(strDate + " is valid date format");
		}
		/* Date format is invalid */
		catch (ParseException e) {
			System.out.println(strDate + " is Invalid Date format");
			return false;
		}
		/* Return true if date format is valid */
		return true;
	}

	public static boolean checkKeeperRank(String krank) {
		String[] rankArr = { "Senior", "Junior", "Standard" };

		for (String rank : rankArr) {
			if (rank.equals(krank))
				return true;
		}

		return false;
	}

	public static boolean validNumber(String num) {
		try {
			Long.parseLong(num);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

//https://www.javatpoint.com/java-email-validation
	// Restrict E-mail from Trailing, Consecutive, and Leading
	public static boolean validEmail(String email) {
		String regex = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^-]+(?:\\.[a-zA-Z0-9_!#$%&'*+/=?`{|}~^-]+)*@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(email);

		return matcher.matches();
	}
	
	public static boolean validSpeciesGroup(String group) {
		String speciesGroup[] = {"Reptile","Bird","Mammal"};
		
		for(String gp : speciesGroup) {
			if(gp.equals(group))
				return true;
		}
		
		return false;
	}
	
	public static boolean validSpeciesLifeStyle(String lifeStyle) {
		String lifeStyles[] = {"Group","Pride","Troop","Herd","Social","Solitary"};
		
		for(String ls : lifeStyles) {
			if(ls.equals(lifeStyle))
				return true;
		}
		
		return false;
	}
	
	public static boolean validConservationStatus(String status) {
		String conservationStatus[] = {"Least Concern","Threatened","Endangered","Critically Endangered","Vulnerable"};
		
		for(String cs : conservationStatus) {
			if(cs.equals(status))
				return true;
		}
		return false;
	}

}
