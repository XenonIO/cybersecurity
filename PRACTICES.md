# Practices

## Designing for Privacy and Security

When we start a new project or make a modification, we include privacy and security checks in the design phases. For example, on GitHub Issues, we make sure we assign a teammate to review the security and privacy impacts of a design constraint. Similarly, in GitHub Projects, we add a column in the task flow to have a privacy and security review.

GDPR: Article 25.

## Schedule

These tasks will be done monthly.
 * Review [access logs](#insecure-environments).

## Encryption

At rest we choose AES256 or better. We use SSL/TLS or equivalent in transit.

CAIQ: EKM-03.

## Cloud Deployment

## Infrastructure

In our current infrastructure, we use Amazon ELB, EC2, VPC, S3, RDS, CloudTrail and IAM. This provides us network isolation (VPC), access controls (IAM), encryption at rest (S3/RDS), auditing (CloudTrail), redundancy and availability (S3/RDS/ELB). For additional information see [AWS's security materials](https://aws.amazon.com/security).

CAIQ: BCR-03, BCR-05, EKM-03, EKM-02, EKM-04, IVS-13.

We use CloudTrail and IAM to create audit log entries whenever a teammate access an administration tool. This helps restrict, log and monitor access to the infrastructure that also provides the infrastructure security itself. When using AWS interfaces, each teammate shall have their own IAM credentials and not use a shared or master login. 

CAIQ: IAM-01, IAM-02, IAM-04, IVS-11.

AMI's are versioned and CloudTrail is used to restrict and monitor for unauthorized access. 

CAIQ: CCC-04.

AWS provides network intrusion detection, audit logging and security event review per [their Security White Paper](https://d0.awsstatic.com/whitepapers/Security/AWS_Security_Whitepaper.pdf). This includes anti-malware and threat detection systems.

CAIQ: IVS-01, IVS-02, TVM-01, TVM-02, TVM-03.

## Connecting Cloud Services

It is a best practice to use a secure, encrypted channel to communicate between services when transiting open networks (e.g. the public internet). For instance, when accessing a Postgres database, SSL should be used. Similarly, REDIS is often hosted without password and access done through plaintext. This is unacceptable across the public internet for production data.

CAIQ: DSI-03.

## 2FA

We require two factor authentication for accessing sensitive information within our application and the third party applications we use. This includes source code, email, document storage and administrative access. 

 * [gSuite Services Configured for Mandatory 2FA](https://cl.ly/6beafe3793ab)

GDPR: Article 5, Article 12, Article 13, Article 14. CAIQ: AIS-02.

## Designing for Security

We look for opportunities to support SSO and identity federation standards such as SAML. We set password policies that include minimum password length.

CAIQ: IAM-12.

## Infrastructure Capacity

Consider auto-scaling (AWS auto-scale groups) or self-scaling (ALB, S3, etc) services when service availability is likely to be compromised under load.

CAIQ: IVS-04, STA-03

## Server Access

Server access is restricted through the use of PKI certificates. This means terminal access through SSH keys (generally this means adding your ssh-keygen material to ~/.authorized_keys).

GDPR: Article 5, Article 12, Article 13, Article 14. CAIQ: AIS-02.

## Server Configuration

Ensure NTP enabled to ensure all systems have a common time reference. Only open ports that are necessary. Tend to hardened configurations.

CAIQ: IVS-03, IVS-07.

Separate production and staging infrastructe (e.g. don't reuse firewalls, etc).

CAIQ: IVS-08.

## Production Data

Production data is stored on cloud databases (S3, RDS). Any external copies must be stored encrypted. Do not use production data for staging or on development workstations. Instead, use scripted seed data or a copy of staging data.

CAIQ: DSI-05, EKM-02.

## Workstations

Our standard issue workstation is OS/X flavored. We require developers to use the latest OS version, expedited when there are any urgent security alerts. Workstations must use FileVault to restrict the local hard drive. Devices must be configured so that they default to data being inaccessible when the device is unattended. Xenon owned workstations have endpoint protection installed and managed by a recognized security vendor.

CAIQ: CCC-04, HRS-10, HRS-11, IVS-12.

## Web Browsers

Any device beginning a web session, should follow these minimum requirements:
 1. Use a current and fully patched operating system.
 1. Use a current and fully patched modern web browser.
 1. Ensure that the SSL certificates are up to date within the OS and browser. If you are using Mac OS and Chrome, this should happen for you.
 1. Familiarize yourself with the secure indications of your browser and be able to check that you are in a secure session and that the certificates are up to date.
 1. Use the DNS service and default IP routing that is assigned to your device from within the corporate network. 
 1. Be aware of the corporate policy that restricts your usage of internet services. At work, stay work focused. Do not access social media, file sharing nor video sites unless there is a direct work requirement to do so. Not only is this a good practice for the workplace, but this limits the likelihood that you will be exposed to uncurated, potentially harmful sites.
 1. Our organization relies on the Google Authenticator Application to provide 2FA wherever possible. Use 2FA on any site that supports it. Particularly, you will find that we enforce 2FA on GitHub, Salesforce and gSuite.
 1. Use your gSuite ID as login wherever possible. When you use your gSuite credential, you ensure that 2FA is required for third-party sites. Moreover, we are able to monitor those applications that you have authenticated through gSuite and provide additional awareness and protection in the case access needs to be revoked.
 1. Use your password manager account. We provide TeamPassword to all of our teammates. TeamPassword generates strong passwords and has been customized to meet our secure environment needs. 
 1. Alert our security team when you are confused, experience a concern (is a site SSL behaving correctly?) or need support on your environment (browser, OS updates, etc).

## Insecure Environments

Our team frequently works remotely--anywhere from home to planes to cafes. Even in our office locations, we do not maintain highly secured networks (especially in coworking spaces). Therefore, all environments should be considered hostile. This means:
 1. No sensitive data shall be transmitted on internal networks in cleartext. Use secure protocols (HTTPS/SSH/SFTP/SSL) where appropriate.
 1. No services should be made available on internal networks with insecure endpoints. Follow the workstation configuration procedure to turn off all insecure services. Do not host development services from workstations without security and authentication. Note workstations are configured for FileVault at rest data encryption.
 1. All IT services should be outsourced to cloud-based vendors. This alleviates the need for a trusted internal network. For instance, Help Desk Support is hosted by our vendor, Zendesk, and accessed using 2FA over HTTPS; Shared Disks are hosted by our vendor, Google Suite, and accessed using 2FA over HTTPS; Human Resources is hosted by PingBoard and JustWorks and accessed using 2FA and HTTPS.
 1. Although we do not rely on firewalls and have little control of our provided network assignments, we use NAT and any firewall options available on our SMB-class routing equipment (e.g. most of our routers block all incoming traffic in a default configuration). This blocks our internal workstation interfaces from direct access on the internet AND removes intrusion risks.
 1. Wireless Access Points will be configured for WPA2 security and all other methods disabled. Although we would like to institute user-specific authorization to our WiFi, we instead have a dedicated “internal” network and separate “guest” networks. This is a standard feature of our SMB-class WiFi hardware. WiFi access codes are rotated yearly. 
 1. Developers will use SSH for terminal services. Developers will use a workstation VPN such as TunnelBlick if other insecure cloud services are needed for access. Any VPN access will be documented on the team wiki and reviewed for security procedures by the team’s security lead. When VPN access is bridging a workstation and production environments, it will be done through a DMZ host and using individual teammate-specific logins. These logins and associated access logs will be [reviewed each month](#schedule).

## Data Organization

Customer data should include an account key. Seems obvious, but this helps ensure compliance with data export and data expunging, as well as limiting inadvertent access.

CAIQ: AAC-03, IVS-09.

As data architecture is being reviewed, consider the data flows, particularly sensitive data. For instance, if we are using Stripe for processing credit cards, ensure that we aren't inadvertantly capturing to a permanent location the user credit card data.

CAIQ: DSI-02.

## Background Checks

All teammates receive background checks prior to employemnt, and those with access to critical systems and sensitive information receive regular reviews.

GDPR: Article 5(1)f, Article 5(2), Article 12, Article 13, Article 14. CAIQ: AIS-02, HRS-02.

## Internal

We minimize paper usage and store imaged data and documents on Google Drive. 

CAIQ: IVS-12.

## CI/CD

Each change to our source code is done within a [pull request ("PR") on GitHub](https://help.github.com/articles/about-pull-requests/). This PR is done for team workflow and for automated continuous integration and continuous deployment ("CI/CD"). When a PR is created, automated tooling runs the test suite and a collection of security analysis tools on the modified codebase. These tools include CodeClimate.com for security static analysis, GitHub for known security issues in specified dependent packages, CircleCI.com for execution of the test suite and Convox.com for creating of PR deployments usable for human testing prior to PR approval. 

GDPR: Article 25(1), Article 32(1)(b), Article 32(2), Article 35(1). CAIQ: AIS-01.

Wherever possible the infrastructure architecture will be specified in configuration scripts, checked into the code repository and versions managed through the PR process. This helps ensure our compliance with a [Change Control process](PLAN.md#change_control).

CAIQ: CCC-01.

## External Monitoring

Network and application penetration testing is done on production infrastructure by a recognized security vendor. This further ensures that our application and infrastructure adheres to a security baseline (e.g. public surface area acts as expected).

CAIQ: AAC-02, GRM-01.

## Reliability

Choose to store critical objects at high reliability wherever possible. Focus primarily on data integrity over service availabity. For instance, it is more important to have a database backed up as close to real-time as possible, and to have those backups immediately replicated into geographically distanced data centers vs having dual live copies of the database in the same data center.

When using S3, choose high reliability "99.999999999% durability of objects over a given year." [source](https://aws.amazon.com/s3/faqs/)

CAIQ: BCR-07, BCR-08.

## Status

Our service had no outages in _2016, 2017, 2018, or 2019_. Companies publish their incident and status at their respective [StatusPage.io](https://statuspage.io) accounts.

GDPR: Article 33.

## Onboarding

Our teammates read and respond to this document during their onboarding. This document is linked to our onboarding checklist. This link will always point to the latest version of this document. If you have any feedback on this document, please send it to our support department email and it will be raised within our security team. Note that a [background check](#background_check) is required for all teammates prior to starting work with any Xenon company.

CAIQ: HRS-03, HRS-09.

## Offboarding

In the event you are leaving our team, we will treat your departure with best practices from a security perspective. This means that we will request the immediate return of company property and/or the disposal of any company data within your devices. Behind the scenes, we will be deprovisioning your access.

CAIQ: HRS-01, HRS-04, IAM-11.

## Sourcecode

We use GitHub for our source code repository. GitHub allows us to easily maintain access control to the source code. Additionally, GitHub can become a component of a source code escrow to ensure business continuity.

CAIQ: IAM-06.

## Updates

This document will thereafter be reviewed quarterly by each teammate. In the event of a change that the CSO believes to be urgent in nature, then the CSO will ensure all teammates are made aware of the respective updates. Please note the revision of this document as it may be superseded.

## Vendors

Review these vendor practices in their intended configurations. These include security and protection of information and assets. And generally ensure that they inherit the practices specified here.

_Infrastructure_
 * PIC-Compliant Credit Card Processing - [Stripe.com](https://stripe.com)
 * Cloud Hosting Provider - [Amazon Web Services](https://aws.amazon.com/security)
 * Search Infrastructure - [Elastic.co](https://www.elastic.co/)
 * Email Messaging - [MailChimp](https://mailchimp.com)
 * Status and Incident Reporting - [StatusPage.io](https://StatusPage.io)

_Internal Tools_
 * Source Code Management - [GitHub](https://github.com)
 * 2FA, SMS and Telephony - [Twilio](https://twilio.com)

_Customer Facing_
 * In-App Chat and Messenging - [Intercom](https://intercom.com)
 * Support Messaging and Knowledge Base - [FrontApp](https://frontapp.com)

CAIQ: STA-01, STA-05, STA-06.

## Organizations

Xenon maintains memberships in security organizations such as _InfraGard_ to rapidly share information with partners in law enforcement and the private sector. We monitor US CERT alerts and bulletins to ensure awareness of the latest vulnerabilities to assist our companies in maintaining secure products and services.

## Inapplicable

 * CAIQ IVS-10: Migrating physical to virtual servers.
 * CAIQ IPY-05: We do not modify hypervisors / virtualization formats.

# License

Copyright Jonathan Siegel, 2018-2022.
