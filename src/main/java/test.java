import com.se.pojo.Doctor;
import com.se.service.DoctorService;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Doctor doctor = DoctorService.GetDoctorById(30);
		System.out.println(doctor.getDoctorId());
		System.out.println(doctor.getAge());
		System.out.println(doctor.getDoctorName());
		System.out.println(doctor.getAccountId());
		System.out.println(doctor.getDeptName());
		System.out.println(doctor.getPhone());
	}

}
