//package edu.mum.job.repository;
//
//import java.util.Date;
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.CrudRepository;
//import org.springframework.data.repository.query.Param;
//import org.springframework.stereotype.Repository;
//import edu.mum.job.domain.Event;
//
///*
// * Repository which extends the "CrudRepository" and handles all the DB calls here. 
// * The "EventServiceImpl" class has functions that call the methods in this Repository interface.
// * By Amarbayar. A
// * */
//
//@Repository
//public interface EventRepository extends CrudRepository {	
////	@Query( "UPDATE event SET " + 
////	                          "even_date = :event_date, " + 
////	                          "event_time = :event_time, " + 
////	                          "event_title = :event_title, " +
////	                          "event_desc = :event_desc, " + 
////	                          "event_appid = :event_appid " + 
////	                          "WHERE event_id = :event_id")
////	
////	//Update an existing event
////	public void updateEvent(@Param("event_date") Date event_date,
////			                @Param("event_time") String event_time,
////			                @Param("event_title") String event_title,
////			                @Param("event_desc") String event_desc,
////			                @Param("event_appid") long event_appid,
////			                @Param("event_id") long event_id);
//	
//	//findAll() and findOne() shouldn't need to be defined here 
//	//since they are part of CrudRepository already
//}
