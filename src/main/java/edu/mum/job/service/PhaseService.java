/**
 * @author Adiya
 */

package edu.mum.job.service;

import java.util.List;

import edu.mum.job.domain.Event;
import edu.mum.job.domain.Phase;

public interface PhaseService {
	
	/**
	 * 
	 * @param PhaseID
	 * @return Function that find phase object based on PhaseID
	 */
	public Phase getPhase(int PhaseID);
	
	/**
	 * 
	 * @return Function that return all Phase List from DB
	 */
	List<Phase> getAllPhase();

}
