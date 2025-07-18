# 🧠 Salesforce Lead Auto-Assignment Project

This Salesforce project demonstrates automatic lead owner assignment based on Lead Source using:

- ⚙️ Apex Triggers & Handler Pattern
- 📊 Custom Metadata Types (CMDT)
- ✅ Test Class (90%+ Coverage)
- 🧪 Developer Org Deployment

## 🔧 Functionality

Whenever a Lead is created:
- If the `LeadSource` is matched in Custom Metadata, it auto-assigns to the mapped user.
- If not matched, assigns to a fallback user or throws an error.

## 📁 Files

- `LeadAssignmentHandler.cls`: Logic to assign lead owner.
- `LeadTrigger.trigger`: Trigger calling the handler.
- `LeadAssignmentTest.cls`: Unit test class.
- `LeadSourceAssignment__mdt`: CMDT for dynamic mapping.

## 🚀 Setup

1. [Sign up for a free Salesforce Developer Org](https://developer.salesforce.com/signup)
2. Add Custom Metadata: `LeadSourceAssignment__mdt`
3. Deploy this project using SFDX or VS Code Extension
4. Create Leads via UI or anonymous Apex and test assignments

## 🧪 Sample CMDT Values

| Lead Source | User ID |
|-------------|------------------------|
| Web | 005XXXXXXXXXXXXXXX |
| Referral | 005YYYYYYYYYYYYYYY |

<!-- ## 📸 Demo -->

<!-- ![Demo Screenshot](demo.png) -->

## 💬 Author

Shruti Pandey  
Salesforce Developer | Deloitte USI
[LinkedIn](https://www.linkedin.com/in/shruti-pandey16)
