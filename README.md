# Cybersecurity

Software as a Service (SaaS) companies have a challenge to comply with complex regulations; however, they often have practices that are close (if not fully) compliant with most regulations. This repository has three documents aimed at helping SaaS companies and the customers they serve by better articulating what a SaaS business needs to do, internally and externally. The first document is a [Business Description](BUSINESS.md) and should be customized to match your particular business. This should take a few minutes.

The second document is the [Cybersecurity and Privacy Plan](PLAN.md). This document discusses high-level strategies and commitments your business should make. If you make these commitments, you will gain compliance with the GDPR and have a guide for further regulations via [cross-linking with the CAIQ](#q-what-is-caiq). Some of these commitments require practices to be in place.

The third document lists the actual [Practices Guide](PRACTICES.md) that MOST SaaS companies already have in place (e.g. using GitHub for source control / AWS for infrastructure). It is important that you review these practices and ensure that you follow them, otherwise the plan will not necessarily be accurate to its commitments.

See [the business](BUSINESS.md), [plan](PLAN.md) and [practices](PRACTICES.md).

# Questions

## Q. Why is it called a plan, not a policy?

A. Under attorney advice, *company policies* are litigated upon, while *company plans* are not. It does not lessen the intent to follow the document, but reflects the reality that no organization can achieve 100% compliance to their policies nor plans at all times.

## Q. What is CAIQ?

A. Consensus Assessments Initiative Questionnaire (CAIQ) is a survey provided by the [Cloud Security Alliance](https://cloudsecurityalliance.org/) (CSA) for cloud consumers and auditors to assess the security capabilities of a cloud service provider. The CSA mission is "To promote the use of best practices for providing security assurance within Cloud Computing, and provide education on the uses of Cloud Computing to help secure all other forms of computing."

The CAIQ is a vendor security review document ([download here](https://cloudsecurityalliance.org/working-groups/consensus-assessments/#_overview)) that SaaS companies in [Xenon Venture's portfolio](https://xenon.io) have received from their enterprise customers. This [Cybersecurity and Privacy Plan](PLAN.md) coupled with the [Practices Guide](PRACTICES.md) ensures the ability to respond to the CAIQ in its current version (v.3.0.1). The CAIQ has another benefit--it is cross-linked to many other security frameworks and regulation including HIPAA, FERPA, NIST, and PCI.

## Q. What common regulation are customers looking for compliance?

A. It depends on the juridiction you operate in and the types of data you are storing. Here's a list of some of the common US/EU concerns:

 * GDPR (General Data Protection Regulation, into effect May 2018): European privacy and security law intending to consolidate laws across Europe and generally increase the rights of "data subjects." Concepts include fair, legitimate and lawful processing of minimally required accurate data.
    - Applicability:
      * Any global subject for EU companies. And for companies anywhere in the world when processing EU residing subjects.
    - Penalties:
      * 4% of annual global turnover or 20M EUR, whichever is greater for articles 5-7,9,12-22
      * 2% of annual global turnover or 10M EUR, whichever is greater for articles 8,11,25-39,42-43
    - Breaches:
      * In the EU--your supervisory authority. Within 72 hours.
      * Out of the EU--unclear, but Office of the Data Protection Commissioner in Ireland likely the easiest. Within 72 hours.
 * HIPAA (Health Insurance Portability and Accountability Act): HIPAA applies to any business that touches health care records with personally identifying information (PII), including hospitals, clinics, senior care facilities, pharmacies, even janitorial firms and security firms, etc., that could see such records in a health care environment.
 * SOX (Sarbanes Oxley Act of 2002): SOX is designed to protect shareholders and the public from accounting errors and fraudulent practices from affected organizations.
 * FISMA (Federal Information Security Management Act of 2002): FISMA protects government information, operations and assets against natural or man-made threats.
 * GLBA (Gramm Leach Bliley Act): GLBA requires many companies to protect themselves against unauthorized access, anticipate security risks, and safeguard a consumer’s nonpublic information. It also prohibits individuals and companies from obtaining consumer information using false representations. GLBA also gives consumers privacy notices that explain the institutions’ information-sharing practices.
 * FERPA (Family Educational Rights and Privacy Act): FERPA gives parents access to their child’s education records, an opportunity to have the records amended, and some control over the disclosure of information from the records.
 * PCI/DSS (Payment Card Industry Data Security Standard): PCI/DSS is the premier compliance standard in the private sector and it applies to any business or individual that is processing payments by Visa, MasterCard, American Express, Discover and JCB. Companies and organizations perform validation annually, by an external qualified security assessor (QSA) or by a firm-specific internal security assessor (ISA) who creates a report on compliance (ROC) for those companies that are processing large volumes of transactions. For smaller companies, a self-assessment questionnaire (SAQ) is used.
 * FINRA: Regulates the securities industry.
 * COPPA (Children Online Privacy Protection Act, in effect Apr 2000): Regulates children under the age of 13 and what they may do online. Managed by the FTC.
 * CCPA (California Consumer Privacy Act of 2018, in effect Jan 2020): Similar to GDPR--broad definition of "personal information" and its protections.
    - Applicability:
      * For-profit businesses only.
      * Must have gross revenues over $25m, data on more than 50,000 CA residents, or 50% of its annual revenue by selling personal information of CA residents.

# Technical

When making updates, run ```./utils/add_links``` to add links to GDPR cross-references.

## TODO

 * For the above--who it applies to, where it applies, who is reported to.

## In Use

 * [ScoutApp.com](https://scoutapp.com)
 * [Xplenty.com](https://Xplenty.com)
 * [AccountDock.com](https://AccountDock.com)

# License

Copyright Jonathan Siegel, 2018-2019. Please contact cyber@xenon.io if you would like to re-use or contribute to this plan.

