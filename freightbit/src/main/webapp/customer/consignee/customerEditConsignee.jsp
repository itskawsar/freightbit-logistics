<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="row">
    <div class="col-lg-12">
        <legend style="text-align: left;">
            <span >
               <h1><i class="fa fa-male"></i> Customer Module</h1>
            </span>
        </legend>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> Dashboard </a></li>
            <li class="active"> Customer</li>
            <li class="active"><a href="<s:url action='customerList' />"> Customer List</a>
            </li>
            <li class="active"><a href="<s:url action='customerInfo' />"> Customer
                Profile</a></li>
            <li class="active"><a href="<s:url action='viewConsignees' />"> Consignee List</a>
            </li>
            <li class="active"> Edit Consignee</li>
        </ol>

    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> Edit Consignee</h3>
            </div>

            <div class="panel-body">

                <s:form cssClass="form-horizontal" action="editConsignee" theme="bootstrap">
                    <s:hidden name="consignee.addressId" value="%{addressIdParam}"/>
                    <s:hidden name="consignee.contactId" value="%{contactCodeParam}"/>
                    <s:hidden name="consignee.createdTimeStamp1" value="%{consignee.createdTimeStamp1}" />
                    <s:hidden name="consignee.createdBy1" value="%{consignee.createdBy1}" />
                    <s:hidden name="consignee.createdTimeStamp2" value="%{consignee.createdTimeStamp2}" />
                    <s:hidden name="consignee.createdBy2" value="%{consignee.createdBy2}" />
                    <s:hidden name="consignee.referenceId1" value="%{consignee.referenceId1}" />
                    <s:hidden name="consignee.referenceId2" value="%{consignee.referenceId2}" />

                    <div class="form-group">
                        <label for="consignee.firstName" class="col-lg-2 control-label" style="padding-top:0px;">First
                            Name<span class="asterisk_red"></span>
                        </label>

                        <div class="col-lg-10" >

                            <s:textfield name="consignee.firstName" cssClass="form-control" id="consignee.firstName"
                                         placeholder="First Name" maxLength="30" autofocus="true" required="true"
                                         pattern="[a-zA-Z\s]+"
                                         title="Name should not contain special characters and/or numbers."/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="consignee.middleName" class="col-lg-2 control-label" style="padding-top:0px;">Middle
                            Name
                        </label>

                        <div class="col-lg-10" >
                            <s:textfield name="consignee.middleName" cssClass="form-control"
                                         id="consignee.middleName"
                                         placeholder="Middle Name" maxLength="30" pattern="[a-zA-Z\s]+"
                                         title="Name should not contain special characters and/or numbers."/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="consignee.lastName" class="col-lg-2 control-label" style="padding-top:0px;">Last Name<span class="asterisk_red"></span>
                        </label>

                        <div class="col-lg-10" >
                            <s:textfield name="consignee.lastName" cssClass="form-control" id="consignee.lastName"
                                         placeholder="Last Name" maxLength="30" required="true"
                                         pattern="[a-zA-Z\s]+"
                                         title="Name should not contain special characters and/or numbers."/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="consignee.phone" class="col-lg-2 control-label" style="padding-top:0px;">Phone<span class="asterisk_red"></span>
                        </label>

                        <div class="col-lg-10" >
                            <s:textfield name="consignee.phone" cssClass="form-control" id="consignee.phone"
                                         placeholder="Phone Number" maxLength="14" required="true" 
                                         pattern="\([0-9]{2,3}\) ?[0-9]{3}-[0-9]{4}" title="(XXX) XXX-XXXX Contact Number should not contain special characters and/or letters."/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="consignee.mobile" class="col-lg-2 control-label" style="padding-top:0px;">Mobile<span class="asterisk_red"></span>
                        </label>

                        <div class="col-lg-10" >
                            <s:textfield name="consignee.mobile" cssClass="form-control" id="consignee.mobile"
                                         placeholder="Mobile Number" maxLength="19" required="true"
                                         pattern="\(\+63[0-9]{3}\) ?\([0-9]{3}-[0-9]{4}\)"
                                         title="(+639XX) (XXX-XXXX) Mobile should not contain special characters and/or letters."/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="consignee.email" class="col-lg-2 control-label" style="padding-top:0px;">Email<span class="asterisk_red"></span>
                            </label>

                        <div class="col-lg-10" >
                            <s:textfield name="consignee.email" cssClass="form-control" id="consignee.email"
                                         placeholder="Email Address" type="email" required="true" maxLength="50"
                                         pattern="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="consignee.fax" class="col-lg-2 control-label" style="padding-top:0px;">Fax
                        </label>

                        <div class="col-lg-10" >
                            <s:textfield name="consignee.fax" cssClass="form-control" id="consignee.fax"
                                         placeholder="Fax Number" maxLength="14"  
                                         pattern="\([0-9]{2,3}\) ?[0-9]{3}-[0-9]{4}" title="(XXX) XXX-XXXX Fax should not contain special characters and/or letters."/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="consignee.addressLine1" class="col-lg-2 control-label" style="padding-top:0px;">Address
                            Line 1<span class="asterisk_red"></span></label>

                        <div class="col-lg-10" >
                            <s:textfield name="consignee.addressLine1" cssClass="form-control"
                                         id="consignee.addressLine1" placeholder="Address 1" required="true"
                                         maxLength="50"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="consignee.addressLine2" class="col-lg-2 control-label" style="padding-top:0px;">Address
                            Line 2</label>

                        <div class="col-lg-10" >
                            <s:textfield name="consignee.addressLine2" cssClass="form-control"
                                         id="consignee.addressLine2" placeholder="Address 2" maxLength="50"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="consignee.city" class="col-lg-2 control-label" style="padding-top:0px;">City<span class="asterisk_red"></span>
                        </label>

                        <div class="col-lg-10" >
                            <s:textfield name="consignee.city" cssClass="form-control"
                                         id="consignee.city" placeholder="City" required="true"
                                         pattern="[a-zA-Z]+" maxLength="50"
                                         title="City should not contain special characters and/or numbers."/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="consignee.state" class="col-lg-2 control-label" style="padding-top:0px;">Region
                        </label>

                        <div class="col-lg-10" >
                            <s:textfield name="consignee.state" cssClass="form-control"
                                         id="consignee.state" placeholder="Region" maxLength="50" pattern="[a-zA-Z]+"
                                         title="State should not contain special characters and/or numbers."/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="consignee.zip" class="col-lg-2 control-label" style="padding-top:0px;">ZIP<span class="asterisk_red"></span>
                        </label>

                        <div class="col-lg-10" >

                            <s:textfield name="consignee.zip" cssClass="form-control"
                                         id="consignee.zip" placeholder="ZIP" required="true"
                                         pattern="[0-9]+" maxLength="4"
                                         title="ZIP should not contain special characters and/or letters."/>
                        </div>
                    </div>
            </div>

            <div class="panel-footer">
                <div class= "pull-right">
                    <%--<button type="button" class="btn" onclick="location.href='customerList'">
                        Cancel
                    </button>--%>
                    <a href="viewConsignees" class="btn btn-default" id ="groups-btn">Cancel</a>
                    <s:submit cssClass="btn btn-primary" name="submit" value="Save"/>
                </div>
            </div>
            </s:form>
        </div>
    </div>

    <%--<div class="col-lg-2 col-lg-offset-2">
        <div class="panel panel-primary">

            <ul class="nav nav-pills nav-stacked">
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER')">
                <li><a href="#"><i class="fa fa-info-circle fa-fw"></i> Profile</a></li>
                <li><a href="viewAddress"><i class="fa fa-home fa-fw"></i> Address</a></li>
                <li><a href="viewCustomerContacts"><i class="fa fa-group fa-fw"></i> Contacts</a></li>
                <li><a href="viewItem"><i class="fa fa-list-ol fa-fw"></i> Items</a></li>
                </sec:authorize>
                
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER',  'ROLE_DOC_SPECIALIST', 'ROLE_FINANCE')">
                <li><a href="viewRates"><i class="fa fa-money fa-fw"></i> Rates</a></li>
                </sec:authorize>
                
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER')">
                <li class="active"><a href="viewConsignees"><i class="fa fa-list fa-fw"></i> Consignee List</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>--%>

</div>