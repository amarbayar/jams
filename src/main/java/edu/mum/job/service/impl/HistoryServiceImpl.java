package edu.mum.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.History;
import edu.mum.job.repository.HistoryRepository;
import edu.mum.job.service.HistoryService;

@Component
public class HistoryServiceImpl implements HistoryService {
//	public class HistoryServiceImpl{
	
	@Autowired
	HistoryRepository historyRepository;
		

	
	@Override
	public History getHistoryByAppId(String id) {			
		return historyRepository.getHistoryByAppId(Integer.parseInt(id));
	}
	@Override
	public List<History> getAllHistory() {
		return historyRepository.getAllHistory();
	}
	
	@Override
	public void addHistoryApplication(History history) {
		historyRepository.save(history);
	}

	
}
