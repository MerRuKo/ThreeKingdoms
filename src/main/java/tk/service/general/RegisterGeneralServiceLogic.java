package tk.service.general;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tk.dto.general.RegisterGeneralDTO;

@Repository
public class RegisterGeneralServiceLogic {
	
	@Autowired
	private SqlSessionTemplate excuteQuery;
	
	public int registerGeneral(RegisterGeneralDTO registerGeneralDTO) {
		return excuteQuery.insert("registerGeneralMapper.registerGeneral", registerGeneralDTO);
	}

}