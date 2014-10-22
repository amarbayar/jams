package edu.mum.job.service;

import java.util.List;

import edu.mum.job.domain.Event;
import edu.mum.job.domain.Phase;

public interface PhaseService {
	
	public Phase getPhase(int PhaseID);
	List<Phase> getAllPhase();

}
