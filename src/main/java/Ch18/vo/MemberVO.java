package Ch18.vo;

//DTO(Data Transfer Object0
//계층간 데이터 교환을 위한 자바빈즈를 의미
//값저장과 값확인 모두 가능(getter/setter함수 존재)
//VO에 비해 사용효율성이 높으나 보안적인 측면에서 다소 취약 
//값의 수정이 가능

//VO(Value Object)
//계층간 데이터 교환을 위한 자바빈즈를 의미
//VO객체의 값은 확인만 가능(getter함수만 존재) 하다(ReadOnly)

public class MemberVO {
	private String userid;
	private String pwd;
	private String name;
	private String email;
	
	public MemberVO(String userid,String pwd , String name, String email)
	{
		this.userid=userid; this.pwd=pwd; this.name=name; this.email=email;
	}
	
	public String getUserid() {
		return userid;
	}
	public String getPwd() {
		return pwd;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	
	

}



