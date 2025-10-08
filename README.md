# EO Framework™ Public Assets

![EO Framework](https://img.shields.io/badge/EO_Framework-2.0-blue)
![Solutions](https://img.shields.io/badge/Solutions-35-green)
![License](https://img.shields.io/badge/License-BSL_1.1-red)

Welcome to the **EO Framework™ Public Assets** repository - your source for downloadable enterprise solution packages.

## 🎯 Purpose

This repository provides **production-ready solution packages** that can be downloaded individually without cloning the entire EO Framework solutions repository. Each package is a complete, standalone solution including:

- 📋 **Presales Materials** - Business cases, ROI calculators, executive presentations
- 🚀 **Delivery Documentation** - Implementation guides, runbooks, operational procedures
- 🤖 **Automation Scripts** - Terraform, Ansible, Python, PowerShell, Bash
- 📖 **Technical Documentation** - Architecture diagrams, prerequisites, troubleshooting

## 📂 Repository Structure

```
public-assets/
├── solutions/                          # All solution packages
│   ├── {provider}/                     # Provider name (aws, azure, cisco, etc.)
│   │   ├── {category}/                 # Category (ai, cloud, cyber-security, etc.)
│   │   │   └── {solution}/             # Solution name
│   │   │       ├── latest/             # Latest version (stable URL)
│   │   │       │   └── {solution}.zip
│   │   │       ├── v1.0.0/            # Specific version
│   │   │       │   └── {solution}-v1.0.0.zip
│   │   │       └── manifest.json       # Version history and metadata
│   └── ...
└── catalog/                           # Discovery and indexing
    ├── solutions.json                 # Master catalog
    ├── solutions.csv                  # CSV export
    └── versions.json                  # Version tracking
```

## 🚀 Quick Start

### Browse Available Solutions

View the complete catalog:
- **JSON Catalog**: [catalog/solutions.json](catalog/solutions.json)
- **CSV Export**: [catalog/solutions.csv](catalog/solutions.csv)
- **Website**: https://eoframework.com/solutions

### Download a Solution

**Option 1: Download Latest Version (Recommended)**
```bash
# Example: AWS Intelligent Document Processing
wget https://github.com/eoframework/public-assets/raw/main/solutions/aws/ai/intelligent-document-processing/latest/intelligent-document-processing.zip
```

**Option 2: Download Specific Version**
```bash
# Example: Azure Document Intelligence v1.0.0
wget https://github.com/eoframework/public-assets/raw/main/solutions/azure/ai/document-intelligence/v1.0.0/document-intelligence-v1.0.0.zip
```

**Option 3: Browse and Download via Web**
Navigate to the solution folder in this repository and download the ZIP file directly.

## 📊 Available Solutions

### By Provider
- **AWS** (3 solutions): AI, Cloud
- **Azure** (6 solutions): AI, Cloud, Security, DevOps, Workspace, Network
- **Cisco** (5 solutions): AI, Cloud, Security, DevOps, Network
- **Dell** (6 solutions): AI, Cloud, Security, DevOps, Network
- **GitHub** (2 solutions): Security, DevOps
- **Google** (2 solutions): Cloud, Workspace
- **HashiCorp** (2 solutions): Cloud, DevOps
- **IBM** (2 solutions): Cloud, DevOps
- **Juniper** (2 solutions): Security, Network
- **Microsoft** (2 solutions): Security, Workspace
- **NVIDIA** (3 solutions): AI, Workspace

### By Category
- 🤖 **AI** - Artificial Intelligence & Machine Learning
- ☁️ **Cloud** - Infrastructure & Platforms
- 🔒 **Cyber Security** - Protection & Compliance
- 🚀 **DevOps** - Automation & CI/CD
- 💻 **Modern Workspace** - Digital Workplace
- 🌐 **Network** - Infrastructure & Connectivity

## 📦 Package Contents

Each solution package includes:

```
solution-name/
├── README.md                           # Solution overview and coordination
├── metadata.yml                        # Structured solution metadata
│
├── presales/                          # Pre-sales and business materials
│   ├── README.md                       # Presales process coordination
│   ├── business-case.md                # ROI analysis and justification
│   ├── executive-presentation.md       # Executive stakeholder materials
│   ├── executive-presentation.pptx     # PowerPoint presentation
│   ├── statement-of-work.md            # SOW template
│   ├── roi-calculator.csv              # Financial impact calculator
│   ├── level-of-effort-estimate.csv    # Project sizing and estimates
│   └── requirements-questionnaire.csv  # Discovery framework
│
└── delivery/                          # Implementation and operations
    ├── README.md                       # Delivery process overview
    ├── detailed-design.md              # Technical architecture and design
    ├── implementation-guide.md         # Step-by-step deployment procedures
    ├── closeout-presentation.md        # Project closeout materials
    ├── closeout-presentation.pptx      # PowerPoint presentation
    ├── requirements.csv                # Requirements tracking
    ├── project-plan.csv                # Project schedule and milestones
    ├── communication-plan.csv          # Stakeholder communications
    ├── roles.csv                       # Team roles and responsibilities
    ├── test-plan.csv                   # Quality assurance procedures
    ├── training-plan.csv               # User enablement strategy
    ├── configuration.csv               # Configuration parameters
    │
    └── scripts/                       # Automation and deployment
        ├── README.md                   # Scripts coordination
        ├── terraform/                  # Infrastructure as Code
        │   ├── README.md
        │   ├── docs/
        │   ├── environments/           # Multi-environment configs
        │   │   ├── production/
        │   │   ├── test/
        │   │   └── disaster-recovery/
        │   ├── modules/                # Reusable IaC modules
        │   │   ├── aws/
        │   │   ├── azure/
        │   │   └── gcp/
        │   └── scripts/                # Helper scripts
        ├── ansible/                    # Configuration management
        │   └── playbook.yml
        ├── python/                     # Custom automation
        │   ├── deploy.py
        │   └── requirements.txt
        ├── powershell/                 # Windows automation
        │   └── Deploy-Solution.ps1
        └── bash/                       # Linux/Unix automation
            └── deploy.sh
```

## 🔍 Finding Solutions

### Search by Provider
```bash
# List all AWS solutions
ls solutions/aws/*/

# List all solutions from a specific provider
find solutions/azure -name "manifest.json"
```

### Search by Category
```bash
# Find all AI solutions across providers
find solutions -path "*/ai/*" -name "manifest.json"

# Find all security solutions
find solutions -path "*/cyber-security/*" -name "manifest.json"
```

### Programmatic Access
```bash
# Get catalog data
curl https://github.com/eoframework/public-assets/raw/main/catalog/solutions.json

# Get specific solution version info
curl https://github.com/eoframework/public-assets/raw/main/solutions/aws/ai/intelligent-document-processing/manifest.json
```

## 📋 Version Management

Each solution maintains its own version history:

- **`latest/`** - Always contains the current stable version (recommended for most users)
- **`v{major}.{minor}.{patch}/`** - Specific versioned releases (for reproducibility)
- **`manifest.json`** - Complete version history with changelogs and download links

### Version Retention Policy
- ✅ **Latest version** - Always available
- ✅ **Major versions** - All major versions retained (v1.0.0, v2.0.0, etc.)
- ✅ **Recent minors** - Last 3 minor versions per major version
- ⚠️ **Older patches** - May be archived after new releases

## 📄 Licensing

All solutions are licensed under **Business Source License 1.1 (BSL 1.1)**

**Permitted Use:**
- ✅ Evaluation and proof-of-concept
- ✅ Development and testing environments
- ✅ Education and training
- ✅ Modification for permitted use cases

**Restricted Use:**
- ⚠️ Commercial production deployments require licensing
- ⚠️ Commercial redistribution requires authorization
- ⚠️ Using templates for commercial service delivery

**Commercial Licensing:**
- 📧 Email: licensing@eoframework.com
- 🌐 Website: https://eoframework.com/licensing

## 🤝 Support & Community

### Getting Help
- 📖 **Documentation**: Each solution includes comprehensive docs
- 🐛 **Issues**: [GitHub Issues](https://github.com/eoframework/solutions/issues)
- 💬 **Discussions**: [GitHub Discussions](https://github.com/eoframework/solutions/discussions)
- 🌐 **Website**: https://eoframework.com
- 📧 **Email**: support@eoframework.com

### Contributing
Want to contribute solutions or improvements?
- See the main repository: [eoframework/solutions](https://github.com/eoframework/solutions)
- Review [Contributing Guidelines](https://github.com/eoframework/solutions/blob/main/support/docs/contributing.md)

## 🔐 Package Integrity

Each package includes:
- **SHA256 Checksum** - Verify package integrity
- **Version Metadata** - Complete version and release information
- **License File** - BSL 1.1 license included in every package

### Verify Package Integrity
```bash
# Download the solution
wget https://github.com/eoframework/public-assets/raw/main/solutions/aws/ai/intelligent-document-processing/latest/intelligent-document-processing.zip

# Get expected checksum from manifest
curl https://github.com/eoframework/public-assets/raw/main/solutions/aws/ai/intelligent-document-processing/manifest.json | jq -r '.versions[0].sha256'

# Verify checksum
sha256sum intelligent-document-processing.zip
```

## 📊 Statistics

- **Total Solutions**: 35
- **Total Providers**: 11
- **Total Categories**: 6
- **Last Updated**: 2025-10-07

---

**Ready to accelerate your enterprise solution delivery?**

🔍 [**Browse Solutions**](solutions/) | 📊 [**View Catalog**](catalog/solutions.json) | 🌐 [**Visit Website**](https://eoframework.com)

---

**© 2025 EO Framework™. Licensed under BSL 1.1. All rights reserved.**

*Delivering exceptional outcomes through enterprise solution excellence.*
