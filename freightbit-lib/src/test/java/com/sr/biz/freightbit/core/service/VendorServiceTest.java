package com.sr.biz.freightbit.core.service;

/*
*
* Created with IntelliJ IDEA.
* User: johnpel
*/


import com.sr.biz.freightbit.common.dao.ContactsDao;
import com.sr.biz.freightbit.common.entity.Contacts;
import com.sr.biz.freightbit.common.service.impl.ContactServiceImpl;
import com.sr.biz.freightbit.core.entity.Client;
import com.sr.biz.freightbit.vendor.dao.VendorDao;
import com.sr.biz.freightbit.vendor.entity.Vendor;
import com.sr.biz.freightbit.vendor.exceptions.VendorAlreadyExistsException;
import com.sr.biz.freightbit.vendor.service.impl.VendorServiceImpl;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.mockito.MockitoAnnotations.Mock;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@ContextConfiguration(locations = {"classpath:/conf/applicationContext-lib.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class VendorServiceTest {

    @Mock
    private VendorDao vendorDao;

    @Mock
    private ContactsDao contactsDao;

    @InjectMocks
    private VendorServiceImpl vendorService;

    @InjectMocks
    private ContactServiceImpl contactService;

    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);
    }

    private Contacts initContact() {
        Client client = new Client("Ernest", new Date(), "Juno", new Date(), "Juno");

        Contacts contacts = new Contacts();
        contacts.setContactId(2);
        contacts.setClient(client);
        contacts.setReferenceTable("AAA");
        contacts.setReferenceId(3);
        contacts.setContactType("Vendor");
        contacts.setFirstName("Clarence");
        contacts.setMiddleName("Columna");
        contacts.setLastName("Victoria");
        contacts.setPhone("123-4567");
        contacts.setMobile("09091234567");
        contacts.setFax("765-4321");
        contacts.setEmail("email@email.com");
        contacts.setCreatedTimestamp(new Date());
        contacts.setCreatedBy("admin");
        contacts.setModifiedTimestamp(new Date());
        contacts.setModifiedBy("admin");

        return contacts;
    }

    @Test(expected = VendorAlreadyExistsException.class)
    public void testAddExistingVendor() {
        Vendor vendor = initVendor();
        List<Vendor> existingVendorList = new ArrayList<>();
        existingVendorList.add(vendor);

        Mockito.when(vendorDao.findVendorByVendorCode("vendorAdmin")).thenReturn(existingVendorList);
        vendorService.addVendor(vendor);
    }

    @Test
    public void testFindAllVendorByClientId() {
        Integer vendorId = 1;
        List<Vendor> vendor = new ArrayList();
        vendor.add(initVendor());
        Mockito.when(vendorDao.findAllVendors()).thenReturn(vendor);
        List<Vendor> results = vendorService.findAllVendorByClientId(vendorId);
        Assert.assertEquals(vendor.size(), 1);
    }

//    @Test
//    public void findAllContactsByClientId() {
//        long clientId = 1;
//        List<Contacts> contacts = new ArrayList<>();
//        contacts.add(initContact());
//        Mockito.when(contactsDao.findAllContacts(clientId)).thenReturn(contacts);
//        List<Contacts> results = contactService.findAllContactsByClientId(clientId);
//        Assert.assertEquals(contacts.size(), 1);
//    }

    @Test
    public void testFindAllVendors() {
        Integer vendorId = 1;
        List<Vendor> vendor = new ArrayList();
        vendor.add(initVendor());

        Mockito.when(vendorDao.findAllVendorByClientId(vendorId)).thenReturn(vendor);
        List<Vendor> results = vendorService.findAllVendorByClientId(vendorId);
        Assert.assertEquals(1, results.size());
    }

    @Test
    public void testFindAllContacts() {
        Integer clientId = 1;
        List<Contacts> contacts = new ArrayList<>();
        contacts.add(initContact());

//        Mockito.when(contactsDao.findAllContacts(clientId)).thenReturn(contacts);
//        List<Contacts> result = contactService.findAllContactsByClientId(clientId);
//        Assert.assertEquals(1, result.size());

    }

    private Vendor initVendor() {
        Client client = new Client("Ernest", new Date(), "Juno", new Date(), "Juno");

        Vendor vendor = new Vendor();
        vendor.setVendorId(1);
        vendor.setVendorCode("asdf");
        vendor.setVendorName("asdf");
        vendor.setVendorType("asdf");
        vendor.setVendorClass("asdf");
        vendor.setVendorStatus("asdf");
        vendor.setCreatedTimeStamp(new Date());
        vendor.setCreatedBy("asdf");
        vendor.setModifiedTimeStamp(new Date());
        vendor.setModifiedBY("asdf");

        return vendor;
    }


}
