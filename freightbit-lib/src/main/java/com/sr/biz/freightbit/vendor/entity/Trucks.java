package com.sr.biz.freightbit.vendor.entity;

/**
 * Created with IntelliJ IDEA.
 * User: johnpelquingua.com
 * Date: 5/13/14
 * Time: 4:43 PM
 * To change this template use File | Settings | File Templates.
 */

import com.sr.biz.freightbit.core.entity.Client;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "trucks", catalog = "freightbit", uniqueConstraints = @UniqueConstraint(columnNames = "truckId"))

public class Trucks implements Serializable {

    private Integer truckId;
    private Client client;
    private Integer vendorId;
    private String truckCode;
    private String truckType;
    private String plateNumber;
    private String modelNumber;
    private Integer modelYear;
    private String engineNumber;
    private Integer grossWeight;
    private Date createdTimestamp;
    private String createdBy;
    private Date modifiedTimestamp;
    private String modifiedBy;
    private String motorVehicleNumber;
    private Date issueDate;
    private Integer netWeight;
    private Integer netCapacity;
    private String ownerName;
    private String ownerAddress;
    private String officialReceipt;

    public Trucks() {
    }

    public Trucks(String modifiedBy, Integer truckId, Client client, Integer vendorId, String truckCode, String truckType, String plateNumber, String modelNumber, Integer modelYear, String engineNumber, Integer grossWeight, Date createdTimestamp, String createdBy, Date modifiedTimestamp, String motorVehicleNumber, Date issueDate, Integer netWeight, Integer netCapacity, String ownerName, String ownerAddress, String officialReceipt) {
        this.modifiedBy = modifiedBy;
        this.truckId = truckId;
        this.client = client;
        this.vendorId = vendorId;
        this.truckCode = truckCode;
        this.truckType = truckType;
        this.plateNumber = plateNumber;
        this.modelNumber = modelNumber;
        this.modelYear = modelYear;
        this.engineNumber = engineNumber;
        this.grossWeight = grossWeight;
        this.createdTimestamp = createdTimestamp;
        this.createdBy = createdBy;
        this.modifiedTimestamp = modifiedTimestamp;
        this.motorVehicleNumber = motorVehicleNumber;
        this.issueDate = issueDate;
        this.netWeight = netWeight;
        this.netCapacity = netCapacity;
        this.ownerName = ownerName;
        this.ownerAddress = ownerAddress;
        this.officialReceipt = officialReceipt;
    }

    @Id
    @GeneratedValue
    @Column(name = "truckId", unique = true)
    public Integer getTruckId() {
        return this.truckId;
    }

    public void setTruckId(Integer truckId) {
        this.truckId = truckId;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "clientId")
    public Client getClient() {
        return this.client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    @Column(name = "truckCode", nullable = false)
    public String getTruckCode() {
        return this.truckCode;
    }

    public void setTruckCode(String truckCode) {
        this.truckCode = truckCode;
    }

    @Column(name = "truckType")
    public String getTruckType() {
        return this.truckType;
    }

    public void setTruckType(String truckType) {
        this.truckType = truckType;
    }

    @Column(name = "plateNumber")
    public String getPlateNumber() {
        return this.plateNumber;
    }

    public void setPlateNumber(String plateNumber) {
        this.plateNumber = plateNumber;
    }

    @Column(name = "modelNumber")
    public String getModelNumber() {
        return this.modelNumber;
    }

    public void setModelNumber(String modelNumber) {
        this.modelNumber = modelNumber;
    }

    @Column(name = "modelYear")
    public Integer getModelYear() {
        return this.modelYear;
    }

    public void setModelYear(Integer modelYear) {
        this.modelYear = modelYear;
    }

    @Column(name = "engineNumber")
    public String getEngineNumber() {
        return this.engineNumber;
    }

    public void setEngineNumber(String engineNumber) {
        this.engineNumber = engineNumber;
    }

    @Column(name = "grossWeight")
    public Integer getGrossWeight() {
        return this.grossWeight;
    }

    public void setGrossWeight(Integer grossWeight) {
        this.grossWeight = grossWeight;
    }

    @Column(name = "createdTimestamp")
    public Date getCreatedTimestamp() {
        return this.createdTimestamp;
    }

    public void setCreatedTimestamp(Date createTimestamp) {
        this.createdTimestamp = createTimestamp;
    }

    @Column(name = "createdBy")
    public String getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Column(name = "modifiedTimestamp")
    public Date getModifiedTimestamp() {
        return this.modifiedTimestamp;
    }

    public void setModifiedTimestamp(Date modifiedTimestamp) {
        this.modifiedTimestamp = modifiedTimestamp;
    }

    @Column(name = "modifiedBy")
    public String getModifiedBy() {
        return this.modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    @Column(name = "vendorId")
    public Integer getVendorId() {
        return vendorId;
    }

    public void setVendorId(Integer vendorId) {
        this.vendorId = vendorId;
    }

    @Column(name = "motorVehicleNumber")
    public String getMotorVehicleNumber() {
        return motorVehicleNumber;
    }

    public void setMotorVehicleNumber(String motorVehicleNumber) {
        this.motorVehicleNumber = motorVehicleNumber;
    }

    @Column(name = "issueDate")
    public Date getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(Date issueDate) {
        this.issueDate = issueDate;
    }

    @Column(name = "netWeight")
    public Integer getNetWeight() {
        return netWeight;
    }

    public void setNetWeight(Integer netWeight) {
        this.netWeight = netWeight;
    }

    @Column(name = "netCapacity")
    public Integer getNetCapacity() {
        return netCapacity;
    }

    public void setNetCapacity(Integer netCapacity) {
        this.netCapacity = netCapacity;
    }

    @Column(name = "ownerName")
    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName;
    }

    @Column(name = "ownerAddress")
    public String getOwnerAddress() {
        return ownerAddress;
    }

    public void setOwnerAddress(String ownerAddress) {
        this.ownerAddress = ownerAddress;
    }

    @Column(name = "officialReceipt")
    public String getOfficialReceipt() {
        return officialReceipt;
    }

    public void setOfficialReceipt(String officialReceipt) {
        this.officialReceipt = officialReceipt;
    }
}
