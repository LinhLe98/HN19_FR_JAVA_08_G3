package fa.training.service.impl;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.stereotype.Service;
@Service
public class AttendantStatusServiceImpl {
	
	public List<Integer> getDaysByMonth(String date){
		Calendar calendar = Calendar.getInstance();
		LocalDate temp = LocalDate.parse(date).withDayOfMonth(1);
		int totalDate = calendar.getMaximum(Calendar.DAY_OF_MONTH);
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
