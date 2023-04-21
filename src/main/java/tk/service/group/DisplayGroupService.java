package tk.service.group;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.dto.group.DisplayBelongsDTO;
import tk.dto.group.DisplayKingdomsDTO;

@Service
public class DisplayGroupService {
	
	@Autowired
	private SqlSessionTemplate excuteQuery;
	
	public List<DisplayKingdomsDTO> displayKingdomsList() {
		return excuteQuery.selectList("displayGroupMapper.displayKingdomsList");
	}
	
	public List<DisplayBelongsDTO> displayBelongsList() {
		return excuteQuery.selectList("displayGroupMapper.displayBelongsList");
	}

}