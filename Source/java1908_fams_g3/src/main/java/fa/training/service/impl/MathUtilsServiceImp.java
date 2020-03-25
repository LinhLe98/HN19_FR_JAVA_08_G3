package fa.training.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class MathUtilsServiceImp {
	public List<Integer> getDaysByMonth(String date) throws ParseException{
		 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-M-d");
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new SimpleDateFormat("yyyy-M-d").parse(date));
		LocalDate temp = LocalDate.parse(date,formatter).withDayOfMonth(1);
		int totalDate = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
		List<Integer> days = new ArrayList<Integer>();
		for (int i = 1; i <= totalDate; i++) {
			if (!temp.getDayOfWeek().equals(DayOfWeek.SATURDAY) && !temp.getDayOfWeek().equals(DayOfWeek.SUNDAY)) {
				days.add(i);
			}
			temp = temp.plusDays(1);
		}
		return days;
	}
}
