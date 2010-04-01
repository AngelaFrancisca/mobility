<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/fenix-renderers.tld" prefix="fr"%>
<%@ taglib uri="/WEB-INF/workflow.tld" prefix="wf"%>

<bean:define id="jobOffer" name="process" property="jobOffer"/>

<h2>
	<bean:message bundle="MOBILITY_RESOURCES" key="label.mobility.processIdentification"/> - 
	<bean:write name="jobOffer" property="jobOfferProcess.processIdentification"/> 
</h2>

<jsp:include page="../module/mobility/domain/JobOfferProcess/body.jsp"/>



<logic:equal name="jobOffer" property="hasAllNeededInfoForSubmitCancidacy" value="true">
	<bean:define id="OID" name="process" property="OID"/>
	<wf:isActive processName="process" activityName="SubmitCandidacyActivity" scope="request">	 					
		<html:link action="<%= "/mobility.do?method=submitCandidacy&OID="+OID%>">
			<bean:message key="activity.SubmitCandidacyActivity" bundle="MOBILITY_RESOURCES"/>
		</html:link>
	</wf:isActive>
	<wf:isActive processName="process" activityName="UnSubmitCandidacyActivity" scope="request">
		<html:link action="<%= "/mobility.do?method=unSubmitCandidacy&OID="+OID%>">
			<bean:message key="activity.UnSubmitCandidacyActivity" bundle="MOBILITY_RESOURCES"/>
		</html:link>
	</wf:isActive>
</logic:equal>

<logic:notEqual name="jobOffer" property="hasAllNeededInfoForSubmitCancidacy" value="true">
	<bean:message key="message.mobility.submitCandidacy.missingPersonalPortfolio" bundle="MOBILITY_RESOURCES"/>
</logic:notEqual>