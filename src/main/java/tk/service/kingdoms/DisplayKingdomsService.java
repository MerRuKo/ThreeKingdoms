package tk.service.kingdoms;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.dto.group.DisplayKingdomsDTO;

@Service
public class DisplayKingdomsService {
	
	@Autowired
	private SqlSessionTemplate excuteQuery;
	
	public List<DisplayKingdomsDTO> showKingdomsList() {
		return excuteQuery.selectList("displayKingdomsMapper.showKingdomsList");
	}

}