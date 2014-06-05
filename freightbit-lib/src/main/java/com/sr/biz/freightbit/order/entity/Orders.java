package com.sr.biz.freightbit.order.entity;
// Generated Jun 4, 2014 9:55:23 PM by Hibernate Tools 3.6.0


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * Orders generated by hbm2java
 */
@Entity
@Table(name="orders"
    ,catalog="freightbit"
    , uniqueConstraints = @UniqueConstraint(columnNames="orderNumber") 
)
public class Orders  implements java.io.Serializable {


     private Integer orderId;
     private Integer clientId;
     private Integer orderNumber;
     private String serviceType;
     private String serviceMode;
     private String notificationType;
     private Date orderDate;
     private String paymentMode;
     private String comments;
     private String orderStatus;
     private String vendorCode;
     private String truckCode;
     private String trailerCode;
     private String driverCode;
     private String vesselNumber;
     private String shipperCode;
     private Integer shipperAddressId;
     private Integer shipperContactId;
     private String consigneeCode;
     private Integer consigneeAddressId;
     private Integer consigneeContactId;
     private String accountRep;
     private Date createdTimestamp;
     private String createdBy;
     private Date modifiedTimestamp;
     private String modifiedBy;

    public Orders() {
    }

	
    public Orders(Integer clientId, Integer orderNumber, String serviceType, String serviceMode, String notificationType, Date orderDate, String paymentMode, String comments, String orderStatus, Integer shipperAddressId, Integer shipperContactId, Integer consigneeAddressId, Integer consigneeContactId, Date createdTimestamp, String createdBy, Date modifiedTimestamp, String modifiedBy) {
        this.clientId = clientId;
        this.orderNumber = orderNumber;
        this.serviceType = serviceType;
        this.serviceMode = serviceMode;
        this.notificationType = notificationType;
        this.orderDate = orderDate;
        this.paymentMode = paymentMode;
        this.comments = comments;
        this.orderStatus = orderStatus;
        this.shipperAddressId = shipperAddressId;
        this.shipperContactId = shipperContactId;
        this.consigneeAddressId = consigneeAddressId;
        this.consigneeContactId = consigneeContactId;
        this.createdTimestamp = createdTimestamp;
        this.createdBy = createdBy;
        this.modifiedTimestamp = modifiedTimestamp;
        this.modifiedBy = modifiedBy;
    }
    public Orders(Integer clientId, Integer orderNumber, String serviceType, String serviceMode, String notificationType, Date orderDate, String paymentMode, String comments, String orderStatus, String vendorCode, String truckCode, String trailerCode, String driverCode, String vesselNumber, String shipperCode, Integer shipperAddressId, Integer shipperContactId, String consigneeCode, Integer consigneeAddressId, Integer consigneeContactId, String accountRep, Date createdTimestamp, String createdBy, Date modifiedTimestamp, String modifiedBy) {
       this.clientId = clientId;
       this.orderNumber = orderNumber;
       this.serviceType = serviceType;
       this.serviceMode = serviceMode;
       this.notificationType = notificationType;
       this.orderDate = orderDate;
       this.paymentMode = paymentMode;
       this.comments = comments;
       this.orderStatus = orderStatus;
       this.vendorCode = vendorCode;
       this.truckCode = truckCode;
       this.trailerCode = trailerCode;
       this.driverCode = driverCode;
       this.vesselNumber = vesselNumber;
       this.shipperCode = shipperCode;
       this.shipperAddressId = shipperAddressId;
       this.shipperContactId = shipperContactId;
       this.consigneeCode = consigneeCode;
       this.consigneeAddressId = consigneeAddressId;
       this.consigneeContactId = consigneeContactId;
       this.accountRep = accountRep;
       this.createdTimestamp = createdTimestamp;
       this.createdBy = createdBy;
       this.modifiedTimestamp = modifiedTimestamp;
       this.modifiedBy = modifiedBy;
    }
   
     @Id 
     @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="orderId", unique=true, nullable=false)
    public Integer getOrderId() {
        return this.orderId;
    }
    
    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    
    @Column(name="clientId", nullable=false)
    public Integer getClientId() {
        return this.clientId;
    }
    
    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    
    @Column(name="orderNumber", unique=true, nullable=false)
    public Integer getOrderNumber() {
        return this.orderNumber;
    }
    
    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }

    
    @Column(name="serviceType", nullable=false, length=10)
    public String getServiceType() {
        return this.serviceType;
    }
    
    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    }

    
    @Column(name="serviceMode", nullable=false, length=10)
    public String getServiceMode() {
        return this.serviceMode;
    }
    
    public void setServiceMode(String serviceMode) {
        this.serviceMode = serviceMode;
    }

    
    @Column(name="notificationType", nullable=false, length=10)
    public String getNotificationType() {
        return this.notificationType;
    }
    
    public void setNotificationType(String notificationType) {
        this.notificationType = notificationType;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="orderDate", nullable=false, length=10)
    public Date getOrderDate() {
        return this.orderDate;
    }
    
    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    
    @Column(name="paymentMode", nullable=false, length=10)
    public String getPaymentMode() {
        return this.paymentMode;
    }
    
    public void setPaymentMode(String paymentMode) {
        this.paymentMode = paymentMode;
    }

    
    @Column(name="comments", nullable=false)
    public String getComments() {
        return this.comments;
    }
    
    public void setComments(String comments) {
        this.comments = comments;
    }

    
    @Column(name="orderStatus", nullable=false, length=10)
    public String getOrderStatus() {
        return this.orderStatus;
    }
    
    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    
    @Column(name="vendorCode", length=10)
    public String getVendorCode() {
        return this.vendorCode;
    }
    
    public void setVendorCode(String vendorCode) {
        this.vendorCode = vendorCode;
    }

    
    @Column(name="truckCode", length=10)
    public String getTruckCode() {
        return this.truckCode;
    }
    
    public void setTruckCode(String truckCode) {
        this.truckCode = truckCode;
    }

    
    @Column(name="trailerCode", length=10)
    public String getTrailerCode() {
        return this.trailerCode;
    }
    
    public void setTrailerCode(String trailerCode) {
        this.trailerCode = trailerCode;
    }

    
    @Column(name="driverCode", length=10)
    public String getDriverCode() {
        return this.driverCode;
    }
    
    public void setDriverCode(String driverCode) {
        this.driverCode = driverCode;
    }

    
    @Column(name="vesselNumber", length=50)
    public String getVesselNumber() {
        return this.vesselNumber;
    }
    
    public void setVesselNumber(String vesselNumber) {
        this.vesselNumber = vesselNumber;
    }

    
    @Column(name="shipperCode", length=10)
    public String getShipperCode() {
        return this.shipperCode;
    }
    
    public void setShipperCode(String shipperCode) {
        this.shipperCode = shipperCode;
    }

    
    @Column(name="shipperAddressId", nullable=false)
    public Integer getShipperAddressId() {
        return this.shipperAddressId;
    }
    
    public void setShipperAddressId(Integer shipperAddressId) {
        this.shipperAddressId = shipperAddressId;
    }

    
    @Column(name="shipperContactId", nullable=false)
    public Integer getShipperContactId() {
        return this.shipperContactId;
    }
    
    public void setShipperContactId(Integer shipperContactId) {
        this.shipperContactId = shipperContactId;
    }

    
    @Column(name="consigneeCode", length=10)
    public String getConsigneeCode() {
        return this.consigneeCode;
    }
    
    public void setConsigneeCode(String consigneeCode) {
        this.consigneeCode = consigneeCode;
    }

    
    @Column(name="consigneeAddressId", nullable=false)
    public Integer getConsigneeAddressId() {
        return this.consigneeAddressId;
    }
    
    public void setConsigneeAddressId(Integer consigneeAddressId) {
        this.consigneeAddressId = consigneeAddressId;
    }

    
    @Column(name="consigneeContactId", nullable=false)
    public Integer getConsigneeContactId() {
        return this.consigneeContactId;
    }
    
    public void setConsigneeContactId(Integer consigneeContactId) {
        this.consigneeContactId = consigneeContactId;
    }

    
    @Column(name="accountRep", length=10)
    public String getAccountRep() {
        return this.accountRep;
    }
    
    public void setAccountRep(String accountRep) {
        this.accountRep = accountRep;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="createdTimestamp", nullable=false, length=19)
    public Date getCreatedTimestamp() {
        return this.createdTimestamp;
    }
    
    public void setCreatedTimestamp(Date createdTimestamp) {
        this.createdTimestamp = createdTimestamp;
    }

    
    @Column(name="createdBy", nullable=false, length=10)
    public String getCreatedBy() {
        return this.createdBy;
    }
    
    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="modifiedTimestamp", nullable=false, length=19)
    public Date getModifiedTimestamp() {
        return this.modifiedTimestamp;
    }
    
    public void setModifiedTimestamp(Date modifiedTimestamp) {
        this.modifiedTimestamp = modifiedTimestamp;
    }

    
    @Column(name="modifiedBy", nullable=false, length=10)
    public String getModifiedBy() {
        return this.modifiedBy;
    }
    
    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }




}


