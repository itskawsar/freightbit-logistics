package com.sr.apps.freightbit.vendor.formbean;

import com.sr.apps.freightbit.common.formbean.AddressBean;
import com.sr.apps.freightbit.common.formbean.ContactBean;

import java.util.Date;
import java.util.List;

public class VendorBean {

    private Integer vendorId;
    private Integer clientId;
    private String vendorCode;
    private String vendorName;
    private String vendorClass;
    private String vendorType;
    private String vendorStatus;
    private String vendorSearchCriteria;
    private String vendorKeyword;
    private String createdBy;
    private Date createdTimeStamp;

    private List<VesselBean> vesselBeanList;
    private List<TruckBean> truckBeanList;
    private List<DriverBean> driverBeanList;
    private List<AddressBean> addressBeanList;
    private List<ContactBean> contactBeanList;

    public VendorBean() {

    }

    public VendorBean(Integer vendorId, Integer clientId, String vendorCode, String vendorName, String vendorClass, String vendorType, String vendorStatus, String vendorSearchCriteria, String vendorKeyword, String createdBy, Date createdTimeStamp, List<VesselBean> vesselBeanList, List<TruckBean> truckBeanList, List<DriverBean> driverBeanList, List<AddressBean> addressBeanList, List<ContactBean> contactBeanList) {
        this.vendorId = vendorId;
        this.clientId = clientId;
        this.vendorCode = vendorCode;
        this.vendorName = vendorName;
        this.vendorClass = vendorClass;
        this.vendorType = vendorType;
        this.vendorStatus = vendorStatus;
        this.vendorSearchCriteria = vendorSearchCriteria;
        this.vendorKeyword = vendorKeyword;
        this.createdBy = createdBy;
        this.createdTimeStamp = createdTimeStamp;
        this.vesselBeanList = vesselBeanList;
        this.truckBeanList = truckBeanList;
        this.driverBeanList = driverBeanList;
        this.addressBeanList = addressBeanList;
        this.contactBeanList = contactBeanList;
    }

    public String getVendorSearchCriteria() {
        return vendorSearchCriteria;
    }

    public void setVendorSearchCriteria(String vendorSearchCriteria) {
        this.vendorSearchCriteria = vendorSearchCriteria;
    }

    public String getVendorKeyword() {
        return vendorKeyword;
    }

    public void setVendorKeyword(String vendorKeyword) {
        this.vendorKeyword = vendorKeyword;
    }

    public Integer getVendorId() {
        return vendorId;
    }

    public void setVendorId(Integer vendorId) {
        this.vendorId = vendorId;
    }

    public Integer getClientId() {
        return clientId;
    }

    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    public String getVendorCode() {
        return vendorCode;
    }

    public void setVendorCode(String vendorCode) {
        this.vendorCode = vendorCode;
    }

    public String getVendorName() {
        return vendorName;
    }

    public void setVendorName(String vendorName) {
        this.vendorName = vendorName;
    }

    public String getVendorClass() {
        return vendorClass;
    }

    public void setVendorClass(String vendorClass) {
        this.vendorClass = vendorClass;
    }

    public String getVendorStatus() {
        return vendorStatus;
    }

    public void setVendorStatus(String vendorStatus) {
        this.vendorStatus = vendorStatus;
    }

    public String getVendorType() {
        return vendorType;
    }

    public void setVendorType(String vendorType) {
        this.vendorType = vendorType;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public List<VesselBean> getVesselBeanList() {
        return vesselBeanList;
    }

    public void setVesselBeanList(List<VesselBean> vesselBeanList) {
        this.vesselBeanList = vesselBeanList;
    }

    public List<TruckBean> getTruckBeanList() {
        return truckBeanList;
    }

    public void setTruckBeanList(List<TruckBean> truckBeanList) {
        this.truckBeanList = truckBeanList;
    }

    public List<DriverBean> getDriverBeanList() {
        return driverBeanList;
    }

    public void setDriverBeanList(List<DriverBean> driverBeanList) {
        this.driverBeanList = driverBeanList;
    }

    public List<AddressBean> getAddressBeanList() {
        return addressBeanList;
    }

    public void setAddressBeanList(List<AddressBean> addressBeanList) {
        this.addressBeanList = addressBeanList;
    }

    public List<ContactBean> getContactBeanList() {
        return contactBeanList;
    }

    public void setContactBeanList(List<ContactBean> contactBeanList) {
        this.contactBeanList = contactBeanList;
    }

    public Date getCreatedTimeStamp() {
        return createdTimeStamp;
    }

    public void setCreatedTimeStamp(Date createdTimeStamp) {
        this.createdTimeStamp = createdTimeStamp;
    }
}
