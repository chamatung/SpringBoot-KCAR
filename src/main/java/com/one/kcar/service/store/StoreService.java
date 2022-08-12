package com.one.kcar.service.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.kcar.dao.store.IStoreDAO;
import com.one.kcar.dto.store.StoreDTO;

@Service
public class StoreService {

	@Autowired IStoreDAO dao;
	public List<StoreDTO> storelistAll() {
		
		return dao.storelistAll();
	}
	public StoreDTO storelist(String name) {
		// TODO Auto-generated method stub
		return dao.storelist(name);
	}

}