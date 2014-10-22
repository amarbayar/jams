package edu.mum.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.Event;
import edu.mum.job.domain.Phase;
import edu.mum.job.repository.EventRepository;
import edu.mum.job.repository.PhaseRepository;
import edu.mum.job.service.PhaseService;

@Service
@Transactional
public class PhaseServiceImpl implements PhaseService {
	
	@Autowired
	PhaseRepository phaseRepository;
		
	@Override
	public Phase getPhase(int phaseID) {
		return phaseRepository.getPhase(phaseID);
	}

	@Override
	public List<Phase> getAllPhase() {		
		return phaseRepository.getAllPhase();
	}
	
	
}
