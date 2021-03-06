<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

<div class="row">
    <div class="col-lg-12">
        <legend style="text-align: left;">
            <span >
               <h1><i class="fa fa-user"></i> Accounts Module </h1>
            </span>
        </legend>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> Dashboard </a></li>
            <li class="active"> Accounts</li>
            <li class="active"> User</li>
            <li class="active"><a href="<s:url action='viewUsers' />"> User List</a></li>
            <li class="active"> Edit User</li>
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

<div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> Edit User</h3>
            </div>
            <div class="panel-body">
                <div class="table-responsive list-table">

            <s:form action="editUser" theme="bootstrap" cssClass="form-horizontal" method="post" name="addForm">
                    <s:hidden name="user.userId" value="%{user.userId}"/>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;"> User Type<span class="asterisk_red"></span></label>

                            <div class="col-lg-9">
                                <s:select name="user.userType" id="userTypeSelect" list="userTypeList" listKey="key"
                                          listValue="value" cssClass="form-control" value="user.userType"/>
                            </div>
                        </div>

                        <div class="form-group" style="display:none;">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;">Company <span class="asterisk_red"></span></label>

                            <div class="col-lg-9">
                                <s:textfield disabled="true" required="true" name="user.companyName" cssClass="form-control"
                                             placeholder="Company Name" pattern="^(\s*[a-zA-Z]+(([\'\-\+\s]\s*[a-zA-Z])?[a-zA-Z]*)\s*)+$"/>
                                <s:hidden name="user.companyName" value="%{user.companyName}"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;">Last Name <span class="asterisk_red"></span></label>

                            <div class="col-lg-9">
                                <s:textfield required="true" name="user.lastName" id="lastName" cssClass="form-control" maxlength="25"
                                             placeholder="Last Name" pattern="^(\s*[a-zA-Z]+(([\'\-\+\s]\s*[a-zA-Z])?[a-zA-Z]*)\s*)+$" title="Last Name should not contain special characters and/or numbers."/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;">First Name <span class="asterisk_red"></span></label>

                            <div class="col-lg-9">
                                <s:textfield required="true" name="user.firstName" id="firstName" cssClass="form-control" maxlength="25" pattern="^(\s*[a-zA-Z]+(([\'\-\+\s]\s*[a-zA-Z])?[a-zA-Z]*)\s*)+$"
                                             placeholder="First Name" title="First Name should not contain special characters and/or numbers."/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;">Username <span class="asterisk_red"></span></label>

                            <div class="col-lg-9">
                                <s:textfield required="true" name="user.userName" id="uUserName" cssClass="form-control" maxlength="25" pattern="^[A-Za-z0-9_-]{4,}$"
                                             placeholder="User Name" title="Username must have minimum 4 characters."/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;">Password <span class="asterisk_red"></span></label>

                            <div class="col-lg-9" style="padding-top: 8px;">
                                <s:url var="loadChangePasswordUrl" action="loadChangePassword">
                                    <s:param name="userIdParam" value="%{user.userId}"></s:param>
                                </s:url>
                                <s:a href="%{loadChangePasswordUrl}" class="btn btn-default" id="users-add-btn">Change Password </s:a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">

                        <div class="form-group">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;">Title <span class="asterisk_red"></span></label>

                            <div class="col-lg-9">
                                <s:textfield required="true" name="user.title" id="uTitle" cssClass="form-control" maxlength="50"
                                             placeholder="Title" pattern="^(\s*[a-zA-Z]+(([\'\-\+\s]\s*[a-zA-Z])?[a-zA-Z]*)\s*)+$"
                                             title="Title should not contain special characters and/or numbers."/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;">Email
                                Address <span class="asterisk_red"></span></label>

                            <div class="col-lg-9">
                                <s:textfield required="true" name="user.emailAddress" id="uEmailAddress" maxlength="50"
                                             pattern="^[\w\.=-]+@[\w\.-]+\.[\w]{2,3}$"
                                             cssClass="form-control" placeholder="Email Address" title="Example: example@domain.com"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;">Contact
                                Number <span class="asterisk_red"></span></label>

                            <div class="col-lg-9">
                                <s:textfield required="true" name="user.contactNumber" id="uContactNumber"
                                             cssClass="form-control" placeholder="Contact Number" maxLength="14"
                                             pattern=".{14,}" title="Contact number should contain 10 digits including local city code."/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;">Status <span class="asterisk_red"></span></label>

                            <div class="col-lg-9">
                                <s:select required="true" name="user.status" id="uStatus" list="statusList" listKey="key"
                                          listValue="value" cssClass="form-control" value="user.status"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;">Customer<span class="asterisk_red"></span></label>

                            <div class="col-lg-9">
                                <s:select name="user.customerId" id="customerCodeTextBox" list="customerList" listKey="customerId"
                                          listValue="customerName" cssClass="form-control" value="user.customerId" disabled="true" emptyOption="true"/>
                            </div>
                        </div>

                        <div class="form-group" style="display:none;">
                            <label class="col-lg-3 control-label" id="users-add-label" style="padding-top:0px;">Permissions </label>

                            <div class="col-lg-9">
                                <s:checkboxlist list="permissionsList"  name="permissionsSelected" value="preSelectedPermissions" listKey="permissionId" listValue="permissionName"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <span class="pull-right">
                  <s:url var="viewUserUrl" action="viewUsers">
                      <s:param name="userNameParam"
                               value="user.userName"></s:param>
                  </s:url>
                    <s:a href="%{viewUserUrl}">
                        <button type="button" id="Cancel" class="btn btn-danger">
                            Cancel
                        </button>
                    </s:a>
                  <s:submit cssClass="btn btn-primary" name="submit" value="Save"/>
                </span>
            </div>
            </s:form>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function(){

        $("#uContactNumber").mask("(999) 999-9999");

        $("#userTypeSelect").change(function() {
            if (this.value == "ADMIN") {
                $("#customerCodeTextBox").prop("disabled", true).prop("required", false);
                $("#permissionsSelected-1").prop("checked", true);
            } else {
                $("#permissionsSelected-1").prop("checked", false).prop("disabled", false);
            } if (this.value == "INLAND FREIGHT OFFICER") {
                $("#customerCodeTextBox").prop("disabled", true).prop("required", false);
                $("#permissionsSelected-4").prop("checked", true);
            } else {
                $("#permissionsSelected-4").prop("checked", false).prop("disabled", false);
            } if (this.value == "FREIGHT OPERATIONS OFFICER") {
                $("#customerCodeTextBox").prop("disabled", true).prop("required", false);
                $("#permissionsSelected-5").prop("checked", true);
            } else {
                $("#permissionsSelected-5").prop("checked", false).prop("disabled", false);
            } if (this.value == "FREIGHT OPERATIONS SPECIALIST") {
                $("#customerCodeTextBox").prop("disabled", true).prop("required", false);
                $("#permissionsSelected-6").prop("checked", true);
            } else {
                $("#permissionsSelected-6").prop("checked", false).prop("disabled", false);
            } if (this.value == "FREIGHT DOCUMENTS SPECIALIST") {
                $("#customerCodeTextBox").prop("disabled", true).prop("required", false);
                $("#permissionsSelected-7").prop("checked", true);
            } else {
                $("#permissionsSelected-7").prop("checked", false).prop("disabled", false);
            } if (this.value == "SALES OFFICER") {
                $("#customerCodeTextBox").prop("disabled", true).prop("required", false);
                $("#permissionsSelected-8").prop("checked", true);
            } else {
                $("#permissionsSelected-8").prop("checked", false).prop("disabled", false);
            }

        }).change();

        $("#userTypeSelect").change(function() {
            if (this.value == "REGULAR CUSTOMER") {
                $("#customerCodeTextBox").prop("disabled", false).prop("required", true);
                $("#permissionsSelected-2").prop("checked", true);
            } else {
                $("#permissionsSelected-2").prop("checked", false).prop("disabled", false);
                $("#customerCodeTextBox").val("");
            } if (this.value == "CUSTOMER RELATIONS DEPARTMENT") {
                $("#customerCodeTextBox").prop("disabled", true).prop("required", false);
                $("#permissionsSelected-3").prop("checked", true);
            } else {
                $("#permissionsSelected-3").prop("checked", false).prop("disabled", false);
            }
        }).change();

        validationForm('userAddForm', 'submitBtn');
    });
</script>