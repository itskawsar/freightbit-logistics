package com.sr.biz.freightbit.vendor.dao;

/**
 * Created with IntelliJ IDEA.
 * User: johnpelquingua.com
 */

import com.sr.biz.freightbit.core.entity.User;
import com.sr.biz.freightbit.vendor.entity.Trucks;

import java.util.List;
import java.util.Map;


public interface TrucksDao {

    public void updateTrucks(Trucks trucks);

    public void addTrucks(Trucks trucks);

    public void deleteTrucks(Trucks trucks);

    public Trucks findTrucksById(Long truckId);

    public List<Trucks> findTrucksByTruckCode(String truckCode);

    public List<Trucks> findTrucksByPlateNumber(String plateNumber, Integer vendorId);

    public List<Trucks> findAllTrucks();

    public List<Trucks> findTrucksByVendorId(Integer vendorId);

    public List<Trucks> findDuplicateTruckByTruckCodeAndId(String truckCode, Integer vendorId);
}
