#!/bin/bash
# Create public-assets repository structure for EO Framework solutions
# This script generates the folder hierarchy for all 35 solutions

set -e

echo "Creating public-assets folder structure..."

# Base directory
BASE_DIR="/mnt/c/projects/wsl/public-assets"

# Create main directories
mkdir -p "$BASE_DIR/solutions"
mkdir -p "$BASE_DIR/catalog"

# AWS Solutions (3)
echo "Creating AWS solution folders..."
mkdir -p "$BASE_DIR/solutions/aws/ai/intelligent-document-processing/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/aws/cloud/disaster-recovery-web-application/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/aws/cloud/onpremise-to-cloud-migration/"{latest,v1.0.0}

# Azure Solutions (5) - Note: you actually have 5 Azure solutions
echo "Creating Azure solution folders..."
mkdir -p "$BASE_DIR/solutions/azure/ai/document-intelligence/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/azure/cloud/enterprise-landing-zone/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/azure/cyber-security/sentinel-siem/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/azure/devops/enterprise-platform/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/azure/modern-workspace/virtual-desktop/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/azure/network/virtual-wan-global/"{latest,v1.0.0}

# Cisco Solutions (5)
echo "Creating Cisco solution folders..."
mkdir -p "$BASE_DIR/solutions/cisco/ai/network-analytics/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/cisco/cloud/hybrid-infrastructure/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/cisco/cyber-security/secure-access/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/cisco/devops/ci-cd-automation/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/cisco/network/sd-wan-enterprise/"{latest,v1.0.0}

# Dell Solutions (5)
echo "Creating Dell solution folders..."
mkdir -p "$BASE_DIR/solutions/dell/ai/precision-ai-workstation/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/dell/cloud/vxrail-hci/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/dell/cloud/vxrail-hyperconverged/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/dell/cyber-security/safeid-authentication/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/dell/devops/poweredge-ci-infrastructure/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/dell/network/powerswitch-datacenter/"{latest,v1.0.0}

# GitHub Solutions (2)
echo "Creating GitHub solution folders..."
mkdir -p "$BASE_DIR/solutions/github/cyber-security/advanced-security/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/github/devops/actions-enterprise-cicd/"{latest,v1.0.0}

# Google Solutions (2)
echo "Creating Google solution folders..."
mkdir -p "$BASE_DIR/solutions/google/cloud/landing-zone/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/google/modern-workspace/workspace/"{latest,v1.0.0}

# HashiCorp Solutions (2)
echo "Creating HashiCorp solution folders..."
mkdir -p "$BASE_DIR/solutions/hashicorp/cloud/multi-cloud-platform/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/hashicorp/devops/terraform-enterprise/"{latest,v1.0.0}

# IBM Solutions (2)
echo "Creating IBM solution folders..."
mkdir -p "$BASE_DIR/solutions/ibm/cloud/openshift-container-platform/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/ibm/devops/ansible-automation-platform/"{latest,v1.0.0}

# Juniper Solutions (2)
echo "Creating Juniper solution folders..."
mkdir -p "$BASE_DIR/solutions/juniper/cyber-security/srx-firewall-platform/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/juniper/network/mist-ai-network/"{latest,v1.0.0}

# Microsoft Solutions (2)
echo "Creating Microsoft solution folders..."
mkdir -p "$BASE_DIR/solutions/microsoft/cyber-security/cmmc-enclave/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/microsoft/modern-workspace/m365-deployment/"{latest,v1.0.0}

# NVIDIA Solutions (3)
echo "Creating NVIDIA solution folders..."
mkdir -p "$BASE_DIR/solutions/nvidia/ai/dgx-superpod/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/nvidia/ai/gpu-compute-cluster/"{latest,v1.0.0}
mkdir -p "$BASE_DIR/solutions/nvidia/modern-workspace/omniverse-enterprise/"{latest,v1.0.0}

echo ""
echo "✅ Folder structure created successfully!"
echo ""
echo "Summary:"
echo "  - Total providers: 11"
echo "  - Total solutions: 35"
echo "  - Each solution has: latest/ and v1.0.0/ folders"
echo ""
