package tk.service.general;

import java.util.List;

import tk.dto.general.ApproveGeneralDTO;

public interface ApproveGeneralService {

	List<ApproveGeneralDTO> approveGeneralList();
	
	ApproveGeneralDTO approveGeneralDetail(ApproveGeneralDTO approveGeneralDTO);

	int approveGeneralInsert(ApproveGeneralDTO approveGeneralDTO);
	
	int approveGeneralDelete(ApproveGeneralDTO approveGeneralDTO);
	
}