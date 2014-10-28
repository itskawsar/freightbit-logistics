package com.sr.biz.freightbit.order.dao;

import java.math.BigInteger;
import java.util.List;

import com.sr.biz.freightbit.customer.entity.Customer;
import com.sr.biz.freightbit.order.entity.Counter;
import com.sr.biz.freightbit.order.entity.Orders;

import javax.persistence.criteria.Order;

/**
 * Created by JMXPSX on 5/27/14.
 */
public interface OrderDao {

    public void addOrder(Orders order);

    public void deleteOrder(Orders order);

    public void updateOrder(Orders order);

    public List<Orders> findAllOrders();

    public List<Orders> findAllOrdersByClientId (Integer clientId);

    public Orders findOrdersById (Integer orderId);

    public List<Orders> findOrdersByOrderNumber (String orderNumber);

    public List<Orders> findOrdersByCriteria(String column, String value, Integer clientId);

    public Integer findNextBookingNo(Integer clientId, String companyCode);

    List <Orders> findDuplicateOrderByOrderCode(String orderNumber, Integer orderId);

    public void addCounterType(Counter counter);

    public List<Orders> findCustomerWithBooking(Integer customerId);
}
