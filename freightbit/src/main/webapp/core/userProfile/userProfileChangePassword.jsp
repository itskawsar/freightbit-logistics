<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<div class="row">
    <div class="col-lg-12">
        <h1>User Profile </h1>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='viewUserProfile' />"> User Profile</a></li>
            <li class="active"><s:a href="loadEditUserProfile" class="btn btn-default" id="users-add-btn">Edit User Profile</s:a></li>
        </ol>

    </div>
</div>

<s:if test="hasActionMessages()">
    <div class="col-lg-7">
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
            <strong><s:actionmessage cssStyle="margin-bottom: 0px;"/></strong>
        </div>
    </div>
</s:if>

<div class="row">
    <div class="col-lg-6 col-lg-offset-3">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> Change User Password</h3>
            </div>

            <div class="panel-body">

                <div class="table-responsive list-table">

                    <s:form action="changePasswordFromUserProfile" theme="bootstrap" cssClass="form-horizontal" method="post" name="changePasswordForm">
                    <s:hidden name="user.userId" value="%{user.userId}"/>
                    <s:hidden name="user.userName" value="%{user.userName}"/>
                    
                    <s:if test="!hasActionMessages()">
                    <%--<div class="form-group">
                        <label for="uType" class="col-lg-3 control-label" id="users-add-label"> Current Password:</label>

                        <div class="col-lg-9">
                            <s:password required="true" name="passwordBean.currentPassword" cssClass="form-control" maxlength="25"
                                         pattern="[^\s]{4,25}" title="Password must have minimum 6 characters without spaces." placeholder="Current Password"/>
                        </div>
                    </div>--%>
                    
                    <div class="form-group">
                        <label for="uType" class="col-lg-3 control-label" id="users-add-label"> New Password:</label>

                        <div class="col-lg-9">
                            <s:password required="true" name="passwordBean.newPassword" cssClass="form-control" maxlength="25"
                                        pattern="[^\s]{4,25}" title="Password must have minimum 6 characters without spaces." placeholder="New Password"/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="uType" class="col-lg-3 control-label" id="users-add-label"> Re-type New Password:</label>

                        <div class="col-lg-9">
                            <s:password required="true" name="passwordBean.retypeNewPassword" cssClass="form-control" maxlength="25"
                                        pattern="[^\s]{4,25}" title="Password must have minimum 6 characters without spaces."  placeholder="Re-type New Password"/>
                        </div>
                    </div>
                    </s:if>
            </div>

			<s:if test="!hasActionMessages()">
	            <div class="panel-footer">
	                    <span class="pull-right">
                            <s:url var="loadEditUserPageUrl" action="loadEditUserProfile">
                                <s:param name="userNameParam"
                                         value="user.userName"></s:param>
                            </s:url>
                            <s:a href="%{loadEditUserPageUrl}">
                                <button type="button" id="Cancel" class="btn btn-danger">
                                    Cancel
                                </button>
                            </s:a>
	                        <s:submit cssClass="btn btn-info" name="submit" value="Save"/>
	                    </span>
	            </div>
            </s:if>
            <s:if test="hasActionMessages()">
            	<s:a href="viewUserProfile" class="btn btn-default" id="users-add-btn"><< Back</s:a>
            </s:if>

            </s:form>
        </div>
    </div>
</div>
