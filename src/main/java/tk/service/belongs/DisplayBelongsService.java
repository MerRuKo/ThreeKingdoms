package tk.service.belongs;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.dto.group.DisplayBelongsDTO;
import tk.dto.group.DisplayKingdomsDTO;

@Service
public class DisplayBelongsService {
	
	@Autowired
	private SqlSessionTemplate excuteQuery;

	public List<DisplayBelongsDTO> showBelongsList() {
		return excuteQuery.selectList("displayBelongsMapper.showBelongsList");
	}

}