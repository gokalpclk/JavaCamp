package com.kodlamaio.hrms.business.concretes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kodlamaio.hrms.business.abstracts.JobService;
import com.kodlamaio.hrms.core.utilities.resutls.DataResult;
import com.kodlamaio.hrms.core.utilities.resutls.SuccessDataResult;
import com.kodlamaio.hrms.dataAccess.abstracts.JobDao;
import com.kodlamaio.hrms.entities.concretes.Job;

@Service
public class JobManager implements JobService{
	
	private JobDao jobDao;
	@Autowired
	public JobManager(JobDao jobDao) {
		super();
		this.jobDao = jobDao;
	}


	@Override
	public DataResult<List<Job>> getAll() {
		return new SuccessDataResult<List<Job>>(this.jobDao.findAll(), "data listelendi") ;
	}

}
