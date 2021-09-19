package com.kodlamaio.hrms.business.abstracts;

import java.util.List;

import com.kodlamaio.hrms.core.utilities.resutls.DataResult;
import com.kodlamaio.hrms.entities.concretes.Job;



public interface JobService {
	DataResult<List<Job>> getAll();

}
