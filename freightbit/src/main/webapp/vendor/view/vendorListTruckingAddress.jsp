<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>


<style>
    .deleteVendorTruckingAddressIcon {
        cursor: pointer;
    }
</style>

<div class="row">
    <div class="col-lg-12">
        <legend style="text-align: left;">
            <span >
               <h1><i class="fa fa-building"></i> Vendor Module </h1>
            </span>
        </legend>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> Dashboard </a></li>
            <li class="active"> Vendor</li>
            <li class="active"><a href="<s:url action='viewVendors' />"> Vendor List</a></li>
            <li class="active"><a href="<s:url action='viewInfoVendor' />"> Vendor
                Profile</a></li>
            <li class="active"> Address</li>
        </ol>

    </div>
</div>

<s:if test="hasActionMessages()">
    <div class="col-lg-12">
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
            <strong><s:actionmessage cssStyle="margin-bottom: 0px;"/></strong>
        </div>
    </div>
</s:if>
<s:if test="hasActionErrors()">
   <div class="col-lg-12">
	   <div class="alert alert-errors">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
   			<strong><s:actionerror cssStyle="margin-bottom: 0px;"/></strong>
		</div>
   </div>
</s:if>
<%--start--%>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title" style="float:left;"><i class="fa fa-info-circle"></i> Vendor Trucking Profile</h3>
                <%--<span class="pull-right">

                    <s:url var="editVendorUrl" action="loadEditVendorPage">
                        <s:param name="vendorIdParam" value="#attr.vendor.vendorId"></s:param>
                    </s:url>
                        <s:a cssClass="btn btn-success new-booking" href="%{editVendorUrl}" rel="tooltip"
                             title="Edit this vendor">
                            &lt;%&ndash;<img src="../includes/images/edit-user.png" class="icon-action circ-icon">&ndash;%&gt;
                            <i class="fa fa-pencil"></i> Edit Vendor
                        </s:a>
                </span>--%>
            </div>

            <div class="panel-body">
                <s:hidden value="%{vendor.vendorId}"></s:hidden>

                <s:set name="vendorId" value="%{vendor.vendorId}" scope="session"/>

                <div class="row">

                    <div class=" col-lg-6 col-lg-offset-2">

                        <div class="panel panel-info ">

                            <div class="row">
                                <div class="col-lg-12">

                                    <div class="col-lg-3">
                                        <div align="center" style="margin-top: 10px;">
                                            <div align="center" style="margin-top: 10px;">
                                                <img alt="User Pic" src="../includes/images/photo.png" class="img-circle">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-9">

                                        <table class="table table-user-information vendor-profile" style="margin-top: 10px;">
                                            <tbody>
                                            <tr>
                                                <td class="header" style="font-weight:bold; font-size: 12px; text-align: left !important; border-top: none;">Company Name</td>
                                                <td style="border-top: none; text-align: left !important;"><s:property value="vendor.vendorName"/></td>
                                            </tr>
                                            <tr>
                                                <td class="header" style="font-weight:bold; font-size: 12px; text-align: left !important;">Company Code</td>
                                                <td><s:property value="vendor.vendorCode"/></td>
                                            </tr>
                                            <tr>
                                                <td class="header" style="font-weight:bold; font-size: 12px; text-align: left !important;">Type</td>
                                                <td><s:property value="vendor.vendorType"/></td>
                                            </tr>

                                            <tr>
                                            <tr>
                                                <td class="header" style="font-weight:bold; font-size: 12px; text-align: left !important;">Classification</td>
                                                <td><s:property value="vendor.vendorClass"/></td>
                                            </tr>
                                            <tr>
                                                <td class="header" style="font-weight:bold; font-size: 12px; text-align: left !important;">Service Area</td>
                                                <td><s:property value="vendor.serviceArea"/></td>
                                            </tr>
                                            <%--<tr>--%>
                                            <%--<td class="header" style="font-weight:bold; font-size: 12px; text-align: left !important;">Status</td>--%>
                                            <%--<td><s:property value="vendor.vendorStatus"/></td>--%>
                                            <%--</tr>--%>

                                            </tbody>
                                        </table>

                                    </div>

                                </div>
                            </div>

                        </div>

                    </div>

                    <%--<div class="col-lg-2 col-lg-offset-2">
                        <div class="panel panel-info" >
                            &lt;%&ndash;<div class="panel-heading">&ndash;%&gt;
                            &lt;%&ndash;<h3 class="panel-title"><i class="fa fa-navicon"></i> Shortcuts</h3>&ndash;%&gt;
                            &lt;%&ndash;</div>&ndash;%&gt;
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12" style="text-align: center;">

                                        <a href="" class="btn btn-default active" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-info-circle fa-fw"></i> <br/>Profile</a>
                                        <a href="viewTruckingAddress" class="btn btn-default" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-home fa-fw"></i> <br/>Address</a>
                                        <a href="viewVendorTruckingContacts" class="btn btn-default" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-group fa-fw"></i> <br/>Contacts</a>
                                        <a href="viewDrivers" class="btn btn-default" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-group fa-fw"></i> <br/>Drivers</a>
                                        <a href="viewTrucks" class="btn btn-default" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-truck fa-fw"></i> <br/>Trucks</a>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>--%>
                    <div class="col-lg-2 col-lg-offset-2">
                        <div class="panel panel-info" >
                            <%--<div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-navicon"></i> Shortcuts</h3>
                            </div>--%>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12" style="text-align: center;">

                                        <a href="viewInfoVendor" class="btn btn-default" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-info-circle fa-fw"></i> <br/>Profile</a>
                                        <a href="#" class="btn btn-default active" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-home fa-fw"></i> <br/>Address</a>
                                        <a href="viewVendorTruckingContacts" class="btn btn-default" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-group fa-fw"></i> <br/>Contacts</a>
                                        <a href="viewDrivers" class="btn btn-default" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-group fa-fw"></i> <br/>Drivers</a>
                                        <a href="viewTrucks" class="btn btn-default" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-truck fa-fw"></i> <br/>Trucks</a>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<%--end--%>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title" style="float:left;top: 10px;"><i class="fa fa-list"></i> Address List</h3>
                <span class="pull-right">
                <s:url var="loadAddAddressUrl" action="loadAddTruckingAddress">
                    <s:param name="vendorIdParam" value="vendorIdParam"> </s:param>
                </s:url>
                <s:a class="icon-action-link" href="%{loadAddAddressUrl}" rel="tooltip" title="Add Contact">
                    <button type="button" class="btn btn-primary">
                        <i class="fa fa-home"> </i> New Address
                    </button>
                </s:a>
            </span>
            </div>

            <div class="panel-body">

                <div class="row">
                    <div class="col-lg-12">

                        <div class="table-responsive list-table">
                            <tbody>
                            <table>
                                <tr>

                                    <display:table id="address" name="addresss" requestURI="viewTruckingAddress.action"
                                                   pagesize="10"
                                                   class="table table-striped table-hover table-bordered text-center tablesorter"
                                                   style="margin-top: 15px;">
                                        <td><display:column property="addressType" title="Address Type <i class='fa fa-sort' />" class="tb-font-black"
                                                            style="text-align: center;"> </display:column></td>
                                        <td><display:column property="addressLine1" title="Address 1 <i class='fa fa-sort' />" class="tb-font-black"
                                                            style="text-align: center;"> </display:column></td>
                                        <td><display:column property="addressLine2" title="Address 2 <i class='fa fa-sort' />" class="tb-font-black"
                                                            style="text-align: center;"> </display:column></td>
                                        <td><display:column property="city" title="City <i class='fa fa-sort' />" class="tb-font-black"
                                                            style="text-align: center;"> </display:column></td>
                                        <td><display:column property="state" title="Region <i class='fa fa-sort' />" class="tb-font-black"
                                                            style="text-align: center;"> </display:column></td>
                                        <td><display:column property="zip" title="Zip <i class='fa fa-sort' />" class="tb-font-black"
                                                            style="text-align: center;"> </display:column></td>
                                        <td class="tb-font-black" style="text-align: center;">
                                            <display:column title="Actions">

                                                <s:url var="loadEditTruckingAddressUrl" action="loadEditTruckingAddress">
                                                    <s:param name="addressIdParam" value="%{#attr.address.addressId}"></s:param>
                                                </s:url>
                                                <s:a href="%{loadEditTruckingAddressUrl}" class="icon-action-link" rel="tooltip"
                                                     title="Edit this Vendor Address">
                                                    <%--<img src="../includes/images/edit-user.png" class="icon-action circ-icon">--%>
                                                    <i class="fa fa-pencil"></i>
                                                </s:a>

                                                <s:url var="deleteAddressUrl" action="deleteTruckingAddress">
                                                    <s:param name="addressIdParam" value="%{#attr.address.addressId}"></s:param>
                                                </s:url>
                                                <s:a class="icon-action-link" href="%{deleteAddressUrl}" rel="tooltip"
                                                     title="Delete this Vendor Address"
                                                     onclick="return confirm('Do you really want to delete?');">
                                                    <%--<img src="../includes/images/remove-user.png" class="icon-action circ-icon">--%>

                                                </s:a>
                                                <i class="fa fa-trash-o deleteVendorTruckingAddressIcon"></i>

                                            </display:column>
                                        </td>
                                    </display:table>

                                </tr>
                            </table>
                            </tbody>

                        </div>
                    </div>
                </div>
            </div>

            <div class="panel-footer">
            <%--<span class="pull-right">
                <s:url var="loadAddAddressUrl" action="loadAddTruckingAddress">
                    <s:param name="vendorIdParam" value="vendorIdParam"> </s:param>
                </s:url>
                <s:a class="icon-action-link" href="%{loadAddAddressUrl}" rel="tooltip" title="Add Contact">
                    <button type="button" class="btn btn-primary">
                        <i class="fa fa-home"> </i> New Address
                    </button>
                </s:a>
            </span>--%>

                <div class="table-responsive" >
                    <div class="col-lg-12">
                        <table class="col-lg-6">
                            <tr>
                                <td><label>Legend:</label></td>
                                <td><i class="fa fa-pencil"></i> Edit</td>
                                <td><i class="fa fa-trash-o"></i> Delete</td>
                                <td><i class="fa fa-info-circle"></i> Information</td>
                            </tr>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <%--<div class="col-lg-3 col-lg-offset-2">
        <div class="panel panel-primary">
            <ul class="nav nav-pills nav-stacked">
                <li><a href="viewInfoVendor"><i class="fa fa-info-circle fa-fw"></i> Profile</a></li>
                <li class="active"><a href="viewTruckingAddress"><i class="fa fa-home fa-fw"></i> Address</a></li>
                <li><a href="viewVendorTruckingContacts"><i class="fa fa-group fa-fw"></i> Contact Persons</a></li>
                <li><a href="viewDrivers"><i class="fa fa-group fa-fw"></i> Drivers</a></li>
                <li><a href="viewTrucks"><i class="fa fa-truck fa-fw"></i> Trucks</a></li>
            </ul>
        </div>
    </div>--%>

</div>

<div class="modal fade" id="deleteVendorTruckingAddressModal" tabindex="-1" role="dialog" aria-labelledby="alertlabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <span style="font-size: 1.4em;"><i class="fa fa-warning" style="color: red;"></i> Delete Trucking Vendor Address</span>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this trucking vendor address ?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">No</button>
                <a href="" class="btn btn-danger confirmDeleteModalBtn">Yes</a>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
        actionConfirmation($('.deleteVendorTruckingAddressIcon'), $('.confirmDeleteModalBtn'), $('#deleteVendorTruckingAddressModal'));
    });
</script>