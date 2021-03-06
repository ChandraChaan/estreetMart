import 'package:estreet/pages/sliderBanners.dart';
import 'package:flutter/material.dart';

import '../footer.dart';
import '../header.dart';

class termsAndConditions extends StatelessWidget {
  double minheight = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          header(),
          BannerSlider(),
          Padding(
            padding: const EdgeInsets.all(62.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: minheight,
                ),
                Text(
                  'Terms and Conditions',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: minheight,
                ),
                Text('Welcome to Estreetmart internal website for vendors, where you can obtain information to' +
                    'assist with managing your relationship with estreetmart.sg Services, Inc., and its affiliates' +
                    '(each and collectively, “Estreetmart”, “we”, “us” or “our”). Any person or entity (“Vendor”, “you”' +
                    'or “your”) who wants to supply Products (as defined in Section 1) to Estreetmart or access or' +
                    'use this website must accept these Vendor Terms and Conditions (“Agreement”) without' +
                    'change. BY REGISTERING FOR OR OTHERWISE USING THIS WEBSITE, YOU ON BEHALF OF' +
                    'YOURSELF AND THE ENTITY THAT YOU REPRESENT, AGREE TO BE BOUND BY ALL TERMS AND' +
                    'CONDITIONS OF THIS AGREEMENT, INCLUDING ALL TERMS AND CONDITIONS' +
                    'INCORPORATED BY REFERENCE; REPRESENT AND WARRANT THAT YOU ARE EXPRESSLY' +
                    'AUTHORIZED TO BIND VENDOR TO THIS AGREEMENT.' +
                    '\nThese ‘Conditions of Use’ constitute an electronic record within the meaning of the applicable' +
                    'law. This electronic record is generated by a computer system and does not require any' +
                    'physical or digital signatures.'),
                Text('\nElectronic Communications When you visit the Site or send e-mails to us, you are ' +
                    ' communicating with us electronically. You consent to receive communications from us' +
                    'electronically. We will communicate with you by e-mail or by posting notices on this Site. You' +
                    'agree that all agreements, notices, disclosures and other communications that we provide to' +
                    'you electronically satisfy any legal requirement that such communications be in writing.'),
                Text(
                  '\nYou must not use the Site for any of the following:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('\nFor fraudulent purposes, or in connection with a criminal offence or other unlawful activity;' +
                    'to send, use or reuse any material that is illegal, offensive, (including but not limited to' +
                    'material that is sexually explicit or which promotes racism, bigotry, hatred or physical harm),' +
                    'abusive, harassing, misleading, indecent, defamatory, disparaging, obscene or menacing; or in' +
                    'breach of copyright, trademark, confidentiality, privacy or any other proprietary information' +
                    'or right; or is otherwise injurious to third parties; or objectionable or otherwise unlawful in' +
                    'any manner whatsoever; or which consists of or contains software viruses, political' +
                    'campaigning, commercial solicitation, chain letters, mass mailings or any “spam”; to cause' +
                    'annoyance, inconvenience or needless anxiety;'),
                Text('\nYour License If you submit material, and unless we indicate otherwise, you grant Estreetmart' +
                    'Seller Services Private Limited and its affiliates a nonexclusive, royalty-free, irrevocable,' +
                    'perpetual and fully sublicensable right to use, reproduce, modify, adapt, publish, translate,' +
                    'create derivative works from, distribute, and display such content throughout the world in any' +
                    'media for as long as you are permitted to grant the said licence under applicable law. You' +
                    'grant Estreetmart Seller Services Private Limited and its affiliates and sublicensees the right to' +
                    'use the name that you submit in connection with such content, if they choose. You represent' +
                    'and warrant that you own or otherwise control all of the rights to the content or material that' +
                    'you post or submit or that you otherwise provide on or through the Site; that the content is' +
                    'accurate; that the content is lawful; that use of the content you supply does not violate this' +
                    'policy and will not cause injury to any person or entity; and that you will indemnify' +
                    'Estreetmart Seller Services Private Limited and its affiliates for all claims arising from content' +
                    'you supply. Estreetmart has the right but not the obligation to monitor and edit or remove' +
                    'any activity or content. Estreetmart Seller Services Private Limited takes no responsibility and' +
                    'assumes no liability for any content submitted by you or any third party.'),
                Text(
                  "\nDisclaimer of warranties and limitation of liabilitie",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('\nThis site is provided by Estreetmart on an “as is” and “as available” basis. Estreetmart makes' +
                    'no representations or warranties of any kind, express or implied, as to the operation of this' +
                    'site or the information, content, materials, or products included on this site. you expressly' +
                    'agree that your use of this site is at your sole risk. Estreetmart reserves the right to withdraw' +
                    'or delete any information from this site at any time in its discretion.'),
                Text('\nTo the full extent permissible by applicable law, Estreetmart disclaims all warranties, express' +
                    'or implied, including, but not limited to, implied warranties of merchantability and fitness for a' +
                    'particular purpose. Estreetmart does not warrant that this site, its servers, or e-mail sent from' +
                    'Estreetmart are free of viruses or other harmful components. Estreetmart will not be liable for' +
                    'any damages of any kind arising from the use of this site, including, but not limited to direct,' +
                    'indirect, incidental, punitive,and consequential damages'),
                Text('\nApplicable Law By visiting this Site, you agree that the laws of India will govern these Terms' +
                    'of Use and any dispute of any sort that might arise between you and Estreetmart or its' +
                    'affiliates'),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('\nDisputes Any dispute relating in any way to your visit to this Site shall be submitted to the' +
                      'exclusive jurisdiction of the courts in India.'),
                ),
                Text('\nSite Policies, Modification and Severability Please review our other policies on this Site.' +
                    'These policies also govern your visit to the Site. We reserve the right to make changes to our' +
                    'Site, policies, and these Terms of Use at any time. If any of these conditions shall be deemed' +
                    'invalid, void, or for any reason unenforceable, that condition shall be deemed severable and' +
                    'shall not affect the validity and enforceability of any remaining condition.'),
                Text('\n1. Purchase Orders and Pricing: This Agreement governs our purchase of Products ' +
                    'from you. “Products” means all goods provided to Estreetmart, including their' +
                    'packaging but excluding, if applicable, digital content that is intended for sale to' +
                    'customers and that is covered by separate agreements between you and us. We are' +
                    'not obligated to purchase Products, and you are not obligated to sell Products, until' +
                    'you accept a purchase order (“PO”). You will not substitute Products or combine or' +
                    'consolidate POs without our consent. Terms specified in PO confirmations or other' +
                    'communications sent by you to us are not binding unless agreed to in writing by both' +
                    'parties. Documents that we sign acknowledging receipt of Products do not constitute' +
                    'acceptance of the Products. We may modify or cancel POs without penalty before you' +
                    'deliver Products to the carrier. The PO provides Product prices and payment terms' +
                    'and may include discounts or rebates. Purchasing terms, coop, allowances, discounts,' +
                    'rebates or other funding, to the extent not reflected in the PO, will be set forth in' +
                    'Program Policies or separate agreements (“Additional Terms”), each of which is' +
                    'incorporated into this Agreement. Prices include any commissions and other charges,' +
                    'unless otherwise noted. You may request that certain Products be sold only to' +
                    'customers with Estreetmart Business accounts (“Business-Only Products”). You will' +
                    'identify to Estreetmart which Products are Business-Only Products and will be' +
                    'responsible for maintaining that list and ensuring its accuracy. Final determination' +
                    'about which Products constitute Business-Only Products, and any customer' +
                    'requirements that may apply to such products, will be made by Estreetmart'),
                Text('\n2. Product Images/Information: On an ongoing basis, you will provide us, free of' +
                    'charge, all current Product information, including electronic images and any Product' +
                    'information or warnings required by law to be disclosed in any sale or advertisement' +
                    'of the Product (“Product Information”). Product Information also includes any Product' +
                    'information collected by us from your website, or otherwise made available to us by' +
                    'you (or by a third party at your direction). You grant us a non-exclusive, worldwide,' +
                    'perpetual, irrevocable and royalty-free license to: (a) use, copy, display, perform, and' +
                    'distribute the Product Information on or in connection with any online or offline point' +
                    'of presence, mobile application, service or feature; (b) excerpt, reformat, adapt or' +
                    'otherwise create derivative works of the Product Information; (c) use all trademarks or' +
                    'trade names included in the Product Effective Information; and (d) sublicense any of' +
                    'the foregoing rights to third parties in connection with our programs or services (for' +
                    'example, to advertise your Products). You will promptly provide all information' +
                    'regarding safety, compliance, industry standards or testing related to your Products' +
                    '(“Product Safety Information”) that we reasonably request.'),
                Text('\n3. Representations, Warranties, and Covenants: You represent, warrant, and ' +
                    'covenant on an ongoing basis that: (a) the Products are genuine and free from' +
                    'defects; (b) all materials and other items incorporated into the Products are new (not' +
                    'refurbished or reconditioned), unless you have received our prior written consent' +
                    'otherwise; (c) the Product Information, Product Safety Information, packaging, and' +
                    'labeling is true, accurate and complete; (d) the Products, Product Information, and our' +
                    'exercise of our license rights in this Agreement, will not violate any third party rights,' +
                    'including intellectual property rights; (e) you will comply with all applicable laws and' +
                    'rules relating to the Products (including obtaining and maintaining any permits or' +
                    'licenses required to manufacture, distribute, sell, export, import or otherwise deal in' +
                    'any Product), and the Products, Product Information, packaging, labeling, export, and' +
                    'import documentation (if applicable) will comply with all applicable laws and rules; (f)' +
                    'the Products may be lawfully marketed, stored, sold, distributed, and disposed of' +
                    'without restriction (e.g., no required disclosures, licenses, or registrations) other than' +
                    'any specific restrictions or prohibitions you disclose and we consent to in writing in' +
                    'advance of shipment to us, and you will notify Estreetmart in writing of all customer' +
                    'requirements that are required under applicable law for Business-Only Products' +
                    'identified by you; (g) no Product is, or contains ingredients that are, regulated as a' +
                    'controlled drug or substance, or is listed as a regulated chemical; (h) no Products will' +
                    'be provided to us that are regulated as a hazardous or dangerous product or material,' +
                    'except as expressly permitted under applicable Program Policies or you disclose to us' +
                    'and we consent to in writing in advance of shipment to us; and (i) the Products were' +
                    'produced, manufactured, assembled, and packaged in compliance with all applicable' +
                    'labor, wage, and hour laws and rules (including the U.S. Fair Labor Standards Act, if' +
                    'applicable), and no Products were produced, manufactured, assembled, or packaged' +
                    'by forced, prison or child labor (defined as age 15 or the minimum working age within' +
                    'the applicable jurisdiction, whichever is older); (j) the country of origin of the Products' +
                    'is not subject to U.S. or other applicable government sanctions that prohibit the' +
                    'importation of products from such country at the time of import or at the time you' +
                    'deliver the Products to us; (k) you and your financial institution(s) are not subject to' +
                    'sanctions or otherwise designated on any list of prohibited or restricted parties or' +
                    'owned or controlled by such a party'),
                Text('\n4. Product Returns; Effect of Remedies; Product Recalls and Safety Alerts: We may ' +
                    'return or dispose of at your expense, and you will accept and reimburse us for, any' +
                    'Product (a) that is defective, (b) that does not conform to agreed specifications or to' +
                    'samples, (c) that is subject to recall or safety alert by a government authority or the' +
                    'Product’s manufacturer or distributor or that we otherwise reasonably determine' +
                    'poses a safety risk to customers, (d) that was not ordered in the applicable PO, (e) for' +
                    'which you fail to promptly provide Product Safety Information upon our reasonable' +
                    'request, or (f) that does not comply with Effective this Agreement. You will cooperate' +
                    'with the return or disposal of any Products under this Section. Title and risk of loss for' +
                    'all Products returned under this Agreement will pass to you upon delivery by us to the' +
                    'carrier. Except to the extent we otherwise agree in writing, we may also return to you' +
                    'or dispose of any Product that is damaged; you will accept any such return and' +
                    'reimburse us for the Product and any cost of return or disposal. Payment of an invoice' +
                    'does not limit our remedies. You will provide us with immediate written notice of any' +
                    'Product recall or safety alert. You are responsible for costs we incur in a recall or' +
                    'safety alert and for providing any required notices, information, and documents to' +
                    'applicable authorities or that are otherwise necessary for carrying out the recall or' +
                    'safety alert.'),
                Text('\n5. Vendor Defense and Indemnification: You will defend, indemnify, and hold ' +
                    'harmless estreetmart.sg, Inc., its affiliated companies, and their respective officers,' +
                    'directors, employees, and agents (the “Estreetmart Parties”) against any third party' +
                    'claim, liability, loss, damage, cost or expense (including reasonable legal fees) (each, a' +
                    '“Claim”, and collectively, the “Claims”) incurred by any Estreetmart Party arising from' +
                    'or relating to: (a) any death of or injury to any person, damage to any property or any' +
                    'other damage or loss related to any Product; (b) any Product recall or safety alert; (c)' +
                    'any infringement or misappropriation of any third party rights, including intellectual' +
                    'property rights, by any Product, Product Information, or other content you provide to' +
                    'us; (d) your negligence or intentional misconduct; (e) your breach of this Agreement; (f)' +
                    'any Product-related issue for which you or we are strictly liable; or (g) your failure to' +
                    'state accurate Product Information, or to promptly provide accurate Product Safety' +
                    'Information upon our reasonable request. However, with respect to the foregoing' +
                    'indemnity obligations, you will not be obligated to indemnify Estreetmart Parties to the' +
                    'proportional extent the liability for a Claim is caused by the negligence or intentional' +
                    'misconduct of that Estreetmart Party as determined by a final, non-appealable order' +
                    'of a court having jurisdiction. You will not consent to the entry of a judgment or settle' +
                    'any Claim without the Estreetmart Parties’ prior written consent, which may not be' +
                    'unreasonably withheld. You will use counsel reasonably satisfactory to the Estreetmart' +
                    'Parties, and the Estreetmart Parties will cooperate in the defense at your expense. If' +
                    'any Estreetmart Party reasonably determines that any Claim might have an adverse' +
                    'effect, that Estreetmart Party may take control of the defense at its expense (without' +
                    'limiting your indemnification obligations). Your obligations under this Section 5 are' +
                    'independent of your other obligations under this Agreement.'),
                Text('\n6. Shipping: The parties will agree which party is responsible for managing and paying' +
                    'for transportation of Products to us. When we pay for transportation, you will deliver' +
                    'the Products to the Estreetmart designated carrier and title and risk of loss for the' +
                    'Products will pass to us when you deliver the Products to the carrier (for Effective' +
                    'domestic shipments) or when the Products are cleared for export and delivered to the' +
                    'carrier at the port of export (for international shipments). When you pay for' +
                    'transportation, title and risk of loss for the Products will pass to us when we accept the' +
                    ' Products. Except to the extent that we agree otherwise, you or your designated agent' +
                    'will be the importer or exporter of record, as applicable, on all cross-border transfers,' +
                    'returns, and other shipments of Products between you and us, will not list us as the' +
                    'importer or exporter on any import, export or other customs documentation, and will' +
                    'ensure that all cross-border transfers, Product returns and other shipments comply' +
                    'with all import, export, and other applicable laws and regulations. Under no' +
                    'circumstances will we be the exporter of record for crossborder shipments of' +
                    'Products from you to us. As the importer and exporter of record, you or your' +
                    'designated agent will be responsible for payment of any taxes, duties or fees, and will' +
                    'be responsible for all required recordkeeping, registration, reporting, and licensing. If' +
                    'we expressly agree to act as the importer or exporter of record, you will prepare and' +
                    'submit all documents required to export Products or to bring, distribute, and sell' +
                    'those Products in the destination country, you represent and warrant that all' +
                    'documents and the information contained in such documents are complete, accurate,' +
                    'and up to date, and you will pay any additional fees or charges due to insufficient or' +
                    'incorrect documentation. We will incur no liability arising from any assistance we' +
                    ' provide in preparing any documentation or otherwise.'),
                Text('\n7. Insurance; Guaranties; Proprietary Products; Consignment; Direct Fulfillment;' +
                    'Proposition 65: You will comply with Schedule. If you at any time provide any Product' +
                    'to us that is described on Schedule, then you hereby also provide to us the guaranty' +
                    'applicable to that Product set forth in Schedule. If the parties agree that you will' +
                    'manufacture Products according to our designs or specifications, then you will comply' +
                    'with Schedule for such Products. If the parties agree that you will provide Products for' +
                    'consignment to us, you will comply with Schedule for such Products. If the parties' +
                    'determine that you will provide fulfillment services for certain Products, then you will' +
                    'comply with Schedule for such Products. If you provide Products that require a' +
                    'warning under California Health & Safety Code Section 25249.6 (a “Proposition 65' +
                    'Warning”), then you will comply with Schedule for such Products.'),
                Text('\n8. Confidential Information; Publicity: You will, and will cause your affiliates and' +
                    'employees to, (a) protect and not disclose information that is identified as confidential' +
                    'or that reasonably should be considered confidential to us; (b) use this information' +
                    'only to fulfill your obligations under this Agreement; and (c) promptly return to us or' +
                    'destroy this information when this Agreement terminates. This Section 9 covers all' +
                    'confidential information regardless of when you receive it. You will not, without our' +
                    'prior written agreement, use any trademark, service mark, commercial symbol, or' +
                    'other proprietary right of Estreetmart, issue press releases or other publicity relating' +
                    'to Estreetmart or this Agreement, or refer to Estreetmart in promotional materials. If' +
                    'we authorize you to use any of our trademarks, you will comply with any Program' +
                    'Policies related to such use, including any trademark guidelines.Our Address This Site' +
                    'is owned and operated by KSBS GROUP PTE LTD' +
                    '10 JALAN BESAR, #06-05, Singapore 208787.'),

              ],
            ),
          ),
          footer(),
        ],
      ),
    );
  }
}