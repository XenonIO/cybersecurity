# Xenon Cybersecurity Plan

*Updated February 8th, 2019.*

## Schedule

This document is reviewed quarterly. The next review will be in **Q2 2019**. At this review:
 * Business Continuity Plans are to be reviewed and tested. (CAIQ: BCR-02)
 * Application and infrastructure [security baseline](PRACTICES.md#External_Monitoring) to be reviewed. (CAIQ: GRM-01)

Once per year, these additional activities will be performed:
 * Review this plan and [our practices](PRACTICES.md). (CAIQ: GRM-04, GRM-09)
 * Review the likelihood and impact of risks. (CAIQ: GRM-10)
 * Test backup and redundancy mechanisms. (CAIQ: BCR-11.5)
 * Review data classification, sensitive data storage and compliance. (CAIQ: GRM-02)
 * Review team security training and awareness. (CAIQ: HRS-03)
 * Review team access controls and validate they are still appropriate. (CAIQ: IAM-10)
 * Review connectivity (e.g. VPC/firewall settings). (CAIQ: IVS-06)
 * Test security incident response plans. (CAIQ: SEF-02)
 * Review [vendors](PRACTICES.md#Vendors) and ensure service agreements are in alignment. (CAIQ: STA-07)

## Overview

See [the business description](BUSINESS.md#overview). This is our Cybersecurity Plan. This plan incorporates our privacy and data protection security program. We strive to use plain language and keep it concise. This plan is paired with our [Cybersecurity Practices](PRACTICES.md) which serves as an implementation guide for our team to reflect our plan. This plan is written from the perspective of a Software as a Service startup with business customers.

## Audience

Our plan covers our guidelines and practices for educating our team, customers and partners. Our goal is to create a consumable set of guidelines and tenets that help us provide reliable access, ensure data privacy and comply with rights and regulation. Understand that no organization is perfect and tools, technologies and practices are constantly changing. We attempt to capture the intent of our plan and where we see it is helpful, we have provided additional implementation details. If you have specific questions, we welcome your contact to [support resources](BUSINESS.md#support).

CAIQ: GRM-05.

## Principle

Our security principle is the golden rule: Treat others as you’d like to be treated. We are a technical team building technical products that primarily serve small teams like our own. We are always short resources, but we are staffed similar to our industry peers. We aim to direct our resources to the best use--and this holds true in a cybersecurity context. For instance, we have a portion of our team that works remotely. Do we require our teammates to work inside a secure environment? No. It’s impractical and not our industry norm. However, we do not encourage private data to be left unsecured on a personal device with an easy opportunity for theft. Why? Because we would not want our data treated like that--and with a small bit of preparation, it is reasonable to never arrive at this type of situation. When in doubt, return to our security principle. It will always provide authentic guidance.

We intend to treat customer data fairly, transparently and securely.

GDPR: Article 5.

## Design Considerations

We have integrated security and privacy into our service design and development process. See [our actual practices](PRACTICES.md#designing-for-privacy-and-security).

GDPR: Article 25.

## Our Data Protection Officer

See [our business details](BUSINESS.md#CPO-DPO).

GDPR: Article 9, Article 39.

## Data We Collect

We collect data for our core service, we collect our direct user and account data and we keep third party data where relevant to our operations. By default, we attempt to minimize the data we collect.

See [more details on the data we collect](BUSINESS.md#data).

We collect user and account data in order to maintain account access, communication, billing, and reporting as well as third party access controls. We use cookies to maintain statefulness on the web. We store system logs, exceptions and our own performance data.

Third parties are used to provide additional functionality. 

CAIQ: DSI-01.
GDPR: Article 5, Article 6, Article 25, Recital 32.

## Data We Do Not Collect

We do not store data of the following flavors and ask that our customers ensure that they do not send to us: personal health information, credit card or other sensitive personal or financial information. For our own credit card processing, we use a [PCI-compliant third party](PRACTICES.md#Vendors), who manages credit card details. We do not store them ourselves.

CAIQ: DSI-01, DSI-04.
GDPR: Article 5, Article 25, Recital 32.

## How We Store Data

When possible we consider the option of not storing data. Once we commit to storing data, we store sensitive information encrypted at rest, we keep sensitive information in private control and we encrypted data when in external transit.

CAIQ: DSI-02, DSI-04, DSI-05.
GDPR: Article 5.

## How Long We Keep Data

We keep data in your account for reporting needs and the practicalities of delivering our service with a small (but dedicated) team. Our plans allow for differing retention periods and we store data in order to meet our service commitments. We keep corporate records and our teammate data while it is relevant to deliver our service, provide auditability and facilitate forensics.

CAIQ: BCR-11.4.
GDPR: Article 5.

## Deleting Data

Deleting a customer happens in multiple phases. Initially we flag the customer data as deleted, but do not perform the deletion. This allows for recovery from inadvertant data deletion. Once this period has expired, we remove customer data, but maintain the customer record itself. We maintain this service record to the extent needed to maintain the integrity of our business (e.g. avoid misuse by repeat signups).

We do not support "degaussing or cryptographic wiping" of customer data. Data is also maintained in our regular backups. Particular concerns should be raised in contract discussion.

CAIQ: DSI-07.
GDPR: Article 17.

## Data Portability

We strive to provide data exports in standard formats and available in a secure fashion.

CAIQ: IPY-03, IPY-04
GDPR: Article 20.

## Metadata

We routinely make data public (e.g. for community-targetted reports about system usage, supporting material for blog articles, etc) and do our best to reduce the ability to identify customer data; however, we may not be perfect. We ask that you ask us if you need any data specifically removed from these activities.

## Our Infrastructure

We use cloud hosting providers and inherit their physical security, business continuity, disaster recovery and network intrusion protection. We default to using private networks, end-to-end encryption, encryption at rest, automated scaling and high availability storage. We further enable auditing and logging.  See more details in our [practices](PRACTICES.md#infrastructure). 

We inherit the datacenter security of our cloud providers. We encourage your review [our infrastructure vendors](PRACTICES.md#vendors) to ensure their policies meet your needs.

CAIQ: DCS-01 through DSC-09.
GDPR: Article 25.

## Business Continuity

In general, we choose to incorporate third parties into our source code and production hosting. This means that business continuity and operational resilience risk can be transferred to a large, robust provider whose scale greatly exceeds that which we could achieve on our own. See our [infrastructure selection](PRACTICES.md#Infrastructure).

For key customers we can offer source code escrow.

CAIQ: BCR-01

## Disaster Recovery

Our core infrastructure is designed to withstand datacenter outages and remain online in full service using best practices for cloud deployments. Our system data is stored on further resilient cloud services with high reliability. See more in our [reliability practices](PRACTICES.md#reliability).

But, we recognize that our services augment our customer development practices and are not critical to immediate customer operations. This takes a lower priority to data privacy and security.

CAIQ: BCR-09.

## Accepting Risks

It is impossible to have zero risks. Instead, we want to emphasize awareness of the risks we are handling vs those that we are accepting. This document outlines our general approach to risk mitigation. Please raise any updates or inconsistencies in our risk profile so that we can adjust our plan and practices to reflect risk levels.

CAIQ: GRM-09, GRM-10, GRM-11.

## Reliability

We use external site monitoring to measure our service availability. In a service disruption, our team is alerted and we work through our runbook to diagnose and recover. Our uptime can be monitored through [our status page](BUSINESS.md#status). 

## Third Parties

We use third parties for user-facing services and our own needs. See our [vendor practices](PRACTICES.md#vendors).

When third parties provide software consulting, we share our Cybersecurity Plan and [Practices](PRACTICES.md) and ask them to follow these standards.

CAIQ: CCC-02.

## Government Access

We had no government access requests in _2016, 2017 nor YTD 2018_. We will comply with government requests when we are required legally to do so.

CAIQ: BCR-11.2.

## BYOD

Our teammates may “bring their own devices” including laptops and mobiles. Devices that contain sensitive information must use disk encryption, strong passwords, maintain current system patches and have firewall enabled. Mobile devices must be password or biometric protected. Devices must be configured so that they default to data being inaccessible when the device is unattended.

CAIQ: HRS-08, HRS-10
GDPR: Article 25.

If a device has company data and needs to be wiped, you may lose non-company data. Similarly, you may lose your right to privacy in the case of litigation, e-discovery or legal holds.

CAIQ: MOS-13.

Don't root your mobile device and break the built-in security controls.

CAIQ: MOS-12

## Who Can Access Data

Customer data is available only to explicitly identified users. Customer data may be accessed by our team in the following cases: (1) with written customer consent, (2) to provide aggregated reporting ([see data we collect](#data-we-collect)), and (3) required [government access requests](#government-access).

Our applications use access control to limit access to customer data. 

GDPR: Article 5, Article 12, Article 13, Article 14. 
CAIQ: AIS-02, STA-01.

## Authentication

We use username/password and [2FA authentication](PRACTICES.md#2FA).

## Production Data

Production data is stored on cloud databases. Any external copies must be stored encrypted. We do not use production data for staging or on development workstations.

CAIQ: DSI-05.

## Change Control

Our applications are deployed in a consistent vendor environment, but are architected to scale within that environment according to the application load and other needs. This means that we do not authorize individual production assets, but rather a set guidelines for automated provisioning. To the fullest extent possible, these changes are applied through the use of devops workflows further detailed [in our CI/CD practices](PRACTICES.md#CI-CD).

## Ransomware

If confronted with ransomware, we will alert authorities, provide forensic evidence wherever possible and act as if we had experienced a full loss scenario and continue with our disaster recovery.

## Data Breach Incident Response and Notification

In the event of a data breach we work to stop the breach and fix the root cause. We will notify affected customers, law enforcement, regulating bodies as required. We will work with authorities to provide forensic evidence for review. We will make our notifications within 72 hours.

GDPR: Article 33.

## Incident Response Roles and Responsibilities

During a security-related, we will:
 1. Triage the issue.
 1. Communicate as required by regulation.
 1. Respect chain-of-custody responsibilities.
 1. Consider forensic data collection and analysis.
 1. Create an enduring response.
 1. Update our practices.

Customers may be asked to:
 1. Facilitate the investigation.
 1. Identify any security concerns when they are found.

CAIQ: SEF-02, SEF-03, SEF-04, SEF-05.

## Vulnerabilities

We use automated source code analysis to detect security defects. We review applications for vulnerabilities prior to production deployment. See our [CI/CD practices](PRACTICES.md#CI_CD). 

GDPR: Article 25(1), Article 32(1)(b), Article 32(2), Article 35(1). CAIQ: AIS-01.

## Inaccuracies

If you find that we are storing personal information innacurately, please [notify our DPO](BUSINESS.md#cpo-dpo).

GDPR: Article 16.

## Written Information

We avoid having sensitive information in written materials. Materials are imaged or scanned into our digital storage, except for archived cryptographic keys, which are stored in a secure monitored physically location. See our [internal tools](PRACTICES.md#Internal).

## Educating Our Team

Our team reviews this policy when they join as well as a cybersecurity education program (e.g. [Udemy Security Awareness Training](https://www.udemy.com/security-awareness-training/) course) in their first 60 days. In our quarterly security reviews, we make recommendations for further training. And we have an external service which provides ongoing education through active techniques such as phishing.

CAIQ: GRM-06.

Our team is aware that violating the plan can jeopardize their job!

CAIQ: GRM-07.

## How We Test Our Plan

Our plan is tested by third parties and in our quarterly review. Third parties test our web application security and our internal team education. We review these audits and our general plan implementation in a quarterly review run by [our Cybersecurity Geek](BUSINESS.md#CPO). The plan was last reviewed in _Q4, 2018_. If you have suggestions to improve our plan, please contact us.

CAIQ: GRM-04, GRM-09.

## Geography

Data and data processing can happen in multiple geopgraphies. The consequences of processing, storing or transferring data between geographies is a moving regulatory environment (e.g. [Microsoft and Ireland's sovereignty dispute](https://lawfareblog.com/primer-microsoft-ireland-supreme-courts-extraterritorial-warrant-case)). 

By default, we do not monitor outsourced providers and their geographies and the interplay for compliance; however, if you have particular concerns over the geography of your processed data, please request specific controls on your account.

CAIQ: STA-05

## Hi Massachusetts

In Massachusetts, this plan can be called a “Cybersecurity Policy,” since Massachusetts wants it called that.

## Hi Europe

We meet the necessary requirements under EU General Data Protection Regulation (GDPR). Our [Data Processing Addendum (DPA) is available here]() to support customer GDPR compliance needs.

## Hi Security Researchers

If you find a bug or security issue on our website, please let us know about it by contacting our [support resources](BUSINESS.md#support).

CAIQ: CCC-03.

## Hi Kids

If you are under 14, you may not use our service. Sorry, but legislation and common sense tells us we need to use kid gloves with you... kids. And besides, you probably can’t afford us.

GDPR: Article 8.

## Non-compliance / Not Ready For

 * CAIQ MOS-16: No technical controls in place for mobile device technically enforced controls at this time.
 * CAIQ MOS-17: No mobile device requirement for BYOD backups.
 * CAIQ MOS-18: No mobile device remote wipe capability.
 * CAIQ MOS-19: No mobile device remote software version / patch validation.
 * CAIQ MOS-20: No BYOD device allowed use systems and servers.
 * CAIQ SEF-04: We are unable to support litigation holds for a specific tenant's data.
 * CAIQ STA-08: We do not review our information supply chain in an annual review.
 * CAIQ STA-09: Third-party providers' confidentiality and delivery level agreements are not reviewed annually.

## Inapplicable

See [Practices](PRACTICES.md#Inapplicable).

## CAIQ

Cloud Security Alliance Version 3.0.1 ## Awaiting their approval to retain references to their taxonomy.

# License

Copyright Jonathan Siegel, 2018-2019.
