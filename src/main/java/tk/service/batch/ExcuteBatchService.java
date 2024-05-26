package tk.service.batch;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.stereotype.Service;

import tk.dto.general.SearchGeneralDTO;

@Service
public class ExcuteBatchService {
	
	private static String fileName = "C:\\workspace\\ThreeKingdoms\\src\\main\\webapp\\logs\\generalInfoList.txt";
	private String timeStamp;
	
	public void createTextFile(List<SearchGeneralDTO> generalInfoList) {		
		
        try {
        	 
            // 1. 파일 객체 생성
            File file = new File(fileName);
 
            // 2. 파일 존재여부 체크 및 생성
            if (!file.exists()) {
                file.createNewFile();
            }
 
            // 3. Buffer를 사용해서 File에 write할 수 있는 BufferedWriter 생성
            // * FileWriter 객체생성에서 2번째 파라미터는 이어쓰기 플래그
            FileWriter fw = new FileWriter(file, true);
            BufferedWriter writer = new BufferedWriter(fw);
 
            // 4. 파일에 쓰기
    		for (SearchGeneralDTO obj : generalInfoList) {
    			timeStamp = LocalDateTime.now().toString();
    			writer.write(timeStamp);
    			writer.write(obj.toString() + "\n");
    		}
    		
            // * 가독성을 위해 실행 분기로 로그 자르기
    		writer.write("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
    		
            // 5. BufferedWriter close (자원낭비 막기 위해)
            writer.close();
 
        } catch (IOException e) {
            e.printStackTrace();
        }
        
    }
}