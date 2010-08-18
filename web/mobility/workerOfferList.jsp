<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/fenix-renderers.tld" prefix="fr"%>

<logic:present name="offerList">
	<logic:empty name="offerList">
		<p>
			<bean:message bundle="MOBILITY_RESOURCES" key="label.module.mobility.process.list.none"/>
		</p>
	</logic:empty>
	<logic:notEmpty name="offerList">
		<fr:view name="offerList">
			<fr:layout name="tabular">
				<fr:property name="classes" value="tstyle3 mvert1 width100pc tdmiddle punits" />
				<fr:property name="link(view)" value="/mobility.do?method=viewWorkerOfferProcessToManage" />
				<fr:property name="key(view)" value="label.mobility.view" />
				<fr:property name="param(view)" value="OID" />
				<fr:property name="bundle(view)" value="MOBILITY_RESOURCES" />
			</fr:layout>
			<fr:schema bundle="MOBILITY_RESOURCES" type="module.mobility.domain.JobOfferProcess">
				<fr:slot name="processIdentification" key="label.mobility.jobOfferProcessIdentification" />
				<fr:slot name="workerOffer.approvalDate" key="label.mobility.approvalDate" layout="null-as-label"/>
				<fr:slot name="workerOffer.personalPortfolioInfo.carrer" key="label.mobility.carrer" />
				<fr:slot name="workerOffer.personalPortfolioInfo.category" key="label.mobility.category" />
				<fr:slot name="workerOffer.personalPortfolioInfo.salary" key="label.mobility.salary" />
			</fr:schema>
		</fr:view>
	</logic:notEmpty>
</logic:present>