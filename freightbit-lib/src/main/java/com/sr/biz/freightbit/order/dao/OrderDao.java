package com.sr.biz.freightbit.order.dao;

import com.sr.biz.freightbit.operations.entity.OrderStatusLogs;
import com.sr.biz.freightbit.order.entity.Counter;
import com.sr.biz.freightbit.order.entity.OrderItems;
import com.sr.biz.freightbit.order.entity.Orders;
import com.sr.biz.freightbit.vendor.entity.Trucks;

import java.util.List;

public interface OrderDao {

    public void addOrder(Orders order);

    public void deleteOrder(Orders order);

    public void updateOrder(Orders order);

    public void updateOrderItems(OrderItems orderItems);

    public List<Orders> findAllOrders();

    public List<Orders> findAllOrdersByClientId (Integer clientId);

    public Orders findOrdersById (Integer orderId);

    public OrderItems findOrderItemByOrderId(Integer orderId);

    public OrderItems findOrderItemByOrderItemId (Integer orderItemId);

    public List<Orders> findOrdersByOrderNumber (String orderNumber);

    public List<Orders> findOrdersByBookingNumber(String column, String value, Integer clientId, String serviceRequirement);

    public List<Orders> findOrdersByCriteria(String column, String value, Integer clientId);

    public List<Orders> findOrdersByCriteriaOnGoing(String column, String value, Integer clientId);

    public List<Orders> findOrdersByLCLAndDestination(String serviceRequirement, String destinationPort);

    public Integer findNextBookingNo(Integer clientId, String companyCode);

    List <Orders> findDuplicateOrderByOrderCode(String orderNumber, Integer orderId);

    public void addCounterType(Counter counter);

    public List<Orders> findAddressInBooking(Integer shipperAddressId);

    public List<Orders> findCustomerWithBooking(Integer customerId);

    public List<Orders> findContactInBooking(Integer shipperContactId);

    public List<Orders> findConsigneeInBooking(Integer consigneeContactId);

    public List<Orders> findConsigneeContactInBooking(Integer consigneeContactPersonId);

    public List<Orders> findAllOrdersByAging (Integer aging);

    public List<OrderItems> findAllOrdersByOrderIdAndDestination(Integer orderId, String destinationPort);

}
