package edu.mum.job.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import edu.mum.job.domain.History;



@Service
@Transactional
public interface HistoryService {
	void addHistoryApplication(History history);
	List<History> getAllHistory();
	History getHistoryByAppId(String id);

}
