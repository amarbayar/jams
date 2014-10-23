/**
 * @author Sadakul
 */


package edu.mum.job.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import edu.mum.job.domain.History;



@Service
@Transactional
public interface HistoryService {
	
	/**
	 * 
	 * @param history Function for add new Service
	 */
	void addHistoryApplication(History history);
	
	/**
	 * 
	 * @return Function to get all histroy 
	 */
	List<History> getAllHistory();
	
	/**
	 * 
	 * @param id 
	 * @return Function to get all history using application id
	 */
	List<History> getHistoryByAppId(String id);

}
