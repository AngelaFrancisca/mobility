<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/fenix-renderers.tld" prefix="fr"%>

<bean:define id="jobOffer" name="process" property="jobOffer"/>
<div class="infobox mtop1 mbottom1">
<fr:view name="jobOffer">
	<fr:schema type="module.mobility.domain.JobOffer" bundle="MOBILITY_RESOURCES">
		<fr:slot name="jobOfferProcess.processIdentification" key="label.mobility.processIdentification"/>
		<fr:slot name="mobilityYear.year" key="label.mobility.year"/>
		<fr:slot name="beginDate" key="label.mobility.beginDate"/>
		<fr:slot name="endDate" key="label.mobility.endDate"/>
		<fr:slot name="title" key="label.mobility.jobOffer.title"/>
		<fr:slot name="jobProfile" key="label.mobility.jobOffer.jobProfile" />
		<fr:slot name="knowledgeRequirements" key="label.mobility.jobOffer.knowledgeRequirements" />
		<fr:slot name="skillRequirements" key="label.mobility.jobOffer.skillRequirements" />
		<fr:slot name="careerRequirements" key="label.mobility.jobOffer.careerRequirements" />
		<fr:slot name="categoryRequirements" key="label.mobility.jobOffer.categoryRequirements" />
		<fr:slot name="salaryPositionRequirements" key="label.mobility.jobOffer.salaryPositionRequirements" />
		<fr:slot name="qualificationRequirements" key="label.mobility.jobOffer.qualificationRequirements" />
		<fr:slot name="formationRequirements" key="label.mobility.jobOffer.formationRequirements" />
		<fr:slot name="professionalExperienceRequirements" key="label.mobility.jobOffer.professionalExperienceRequirements" />
		<fr:layout name="tabular">
			<fr:property name="classes" value="aleft"/>
		</fr:layout>
	</fr:schema>
</fr:view>
</div>
