package tk.service.general;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.dto.general.ApproveGeneralDTO;

@Service
public class ApproveGeneralServiceImpl implements ApproveGeneralService {
	
	@Autowired
	ApproveGeneralServiceLogic approveGeneralServiceLogic;
	
	public List<ApproveGeneralDTO> approveGeneralList() {
		return approveGeneralServiceLogic.approveGeneralList();
	}
	
	public ApproveGeneralDTO approveGeneralDetail(ApproveGeneralDTO approveGeneralDTO) {
		return approveGeneralServiceLogic.approveGeneralDetail(approveGeneralDTO);
	}
	
	public int approveGeneralInsert(ApproveGeneralDTO approveGeneralDTO) {
		return approveGeneralServiceLogic.approveGeneralInsert(approveGeneralDTO);
	}
	
	public int approveGeneralDelete(ApproveGeneralDTO approveGeneralDTO) {
		return approveGeneralServiceLogic.approveGeneralDelete(approveGeneralDTO);
	}
	
}