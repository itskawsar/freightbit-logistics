package com.sr.biz.freightbit.vesselSchedule.service.impl;

import com.sr.biz.freightbit.vesselSchedule.dao.VesselSchedulesDao;
import com.sr.biz.freightbit.vesselSchedule.entity.VesselSchedules;
import com.sr.biz.freightbit.vesselSchedule.exception.VesselSchedulesAlreadyExistsException;
import com.sr.biz.freightbit.vesselSchedule.service.VesselSchedulesService;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Clarence C. Victoria on 7/22/14.
 */
public class VesselSchedulesServiceImpl implements VesselSchedulesService {

    private VesselSchedulesDao vesselSchedulesDao;

    public void setVesselSchedulesDao(VesselSchedulesDao vesselSchedulesDao) {
        this.vesselSchedulesDao = vesselSchedulesDao;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void addVesselSchedule(VesselSchedules vesselSchedules) throws VesselSchedulesAlreadyExistsException {
        if (vesselSchedulesDao.findVesselScheduleById(vesselSchedules.getVesselScheduleId()).size() > 0) {
            throw new VesselSchedulesAlreadyExistsException(vesselSchedules.getVesselScheduleId());
        } else {
            vesselSchedulesDao.addVesselSchedule(vesselSchedules);
        }
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void deleteVesselSchedule(VesselSchedules vesselSchedules) {
        vesselSchedulesDao.deleteVesselSchedule(vesselSchedules);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void updateVesselschedule(VesselSchedules vesselSchedules) throws VesselSchedulesAlreadyExistsException {
        if (vesselSchedulesDao.findVesselScheduleById(vesselSchedules.getVesselScheduleId()).size() > 0) {
            throw new VesselSchedulesAlreadyExistsException(vesselSchedules.getVesselScheduleId());
        } else {
            vesselSchedulesDao.updateVesselSchedule(vesselSchedules);
        }
    }

    @Override
    public List<VesselSchedules> findAllVesselSchedules() {
        return vesselSchedulesDao.findAllVesselSchedules();
    }

    @Override
    public List<VesselSchedules> findVesselSchedulesById(Integer vesselScheduleId) {
        return vesselSchedulesDao.findVesselScheduleById(vesselScheduleId);
    }

    @Override
    public List<VesselSchedules> findVesselScheduleByVendorId(Integer vendorId) {
        return vesselSchedulesDao.findVesselSchedulesByVendorId(vendorId);
    }

    @Override
    public List<VesselSchedules> findVesselSchedulesByCriteria(String column, String value, Integer clientId) {
        return vesselSchedulesDao.findVesselSchedulesByCriteria(column, value, clientId);
    }
}