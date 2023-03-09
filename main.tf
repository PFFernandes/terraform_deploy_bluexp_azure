# Azure Custom Role, This custom role will assure the BlueXP Connector the required permissions to deploy Netapp Saas Services. In the end, this role will be assigned to the BlueXP VM in order to be able to work as a Managed Entity.
resource "azurerm_role_definition" "bluexp-custom-role" {
  name        = var.netapp_managed_identity_custom_role
  scope       = "/subscriptions/${var.azure_subscription_id}"
  description = "Custom Role for NetApp BlueXP Connector"
  permissions {
    actions = [
      "Microsoft.Compute/disks/delete",
      "Microsoft.Compute/disks/read",
      "Microsoft.Compute/disks/write",
      "Microsoft.Compute/locations/operations/read",
      "Microsoft.Compute/locations/vmSizes/read",
      "Microsoft.Resources/subscriptions/locations/read",
      "Microsoft.Compute/operations/read",
      "Microsoft.Compute/virtualMachines/instanceView/read",
      "Microsoft.Compute/virtualMachines/powerOff/action",
      "Microsoft.Compute/virtualMachines/read",
      "Microsoft.Compute/virtualMachines/restart/action",
      "Microsoft.Compute/virtualMachines/deallocate/action",
      "Microsoft.Compute/virtualMachines/start/action",
      "Microsoft.Compute/virtualMachines/vmSizes/read",
      "Microsoft.Compute/virtualMachines/write",
      "Microsoft.Compute/images/write",
      "Microsoft.Compute/images/read",
      "Microsoft.Network/locations/operationResults/read",
      "Microsoft.Network/locations/operations/read",
      "Microsoft.Network/networkInterfaces/read",
      "Microsoft.Network/networkInterfaces/write",
      "Microsoft.Network/networkInterfaces/join/action",
      "Microsoft.Network/networkSecurityGroups/read",
      "Microsoft.Network/networkSecurityGroups/write",
      "Microsoft.Network/networkSecurityGroups/join/action",
      "Microsoft.Network/virtualNetworks/read",
      "Microsoft.Network/virtualNetworks/checkIpAddressAvailability/read",
      "Microsoft.Network/virtualNetworks/subnets/read",
      "Microsoft.Network/virtualNetworks/subnets/write",
      "Microsoft.Network/virtualNetworks/subnets/virtualMachines/read",
      "Microsoft.Network/virtualNetworks/virtualMachines/read",
      "Microsoft.Network/virtualNetworks/subnets/join/action",
      "Microsoft.Resources/deployments/operations/read",
      "Microsoft.Resources/deployments/read",
      "Microsoft.Resources/deployments/write",
      "Microsoft.Resources/resources/read",
      "Microsoft.Resources/subscriptions/operationresults/read",
      "Microsoft.Resources/subscriptions/resourceGroups/delete",
      "Microsoft.Resources/subscriptions/resourceGroups/read",
      "Microsoft.Resources/subscriptions/resourcegroups/resources/read",
      "Microsoft.Resources/subscriptions/resourceGroups/write",
      "Microsoft.Storage/checknameavailability/read",
      "Microsoft.Storage/operations/read",
      "Microsoft.Storage/storageAccounts/listkeys/action",
      "Microsoft.Storage/storageAccounts/read",
      "Microsoft.Storage/storageAccounts/delete",
      "Microsoft.Storage/storageAccounts/regeneratekey/action",
      "Microsoft.Storage/storageAccounts/write",
      "Microsoft.Storage/storageAccounts/blobServices/containers/read",
      "Microsoft.Storage/usages/read",
      "Microsoft.Compute/snapshots/write",
      "Microsoft.Compute/snapshots/read",
      "Microsoft.Compute/availabilitySets/write",
      "Microsoft.Compute/availabilitySets/read",
      "Microsoft.Compute/disks/beginGetAccess/action",
      "Microsoft.MarketplaceOrdering/offertypes/publishers/offers/plans/agreements/read",
      "Microsoft.MarketplaceOrdering/offertypes/publishers/offers/plans/agreements/write",
      "Microsoft.Network/loadBalancers/read",
      "Microsoft.Network/loadBalancers/write",
      "Microsoft.Network/loadBalancers/delete",
      "Microsoft.Network/loadBalancers/backendAddressPools/read",
      "Microsoft.Network/loadBalancers/backendAddressPools/join/action",
      "Microsoft.Network/loadBalancers/frontendIPConfigurations/read",
      "Microsoft.Network/loadBalancers/loadBalancingRules/read",
      "Microsoft.Network/loadBalancers/probes/read",
      "Microsoft.Network/loadBalancers/probes/join/action",
      "Microsoft.Authorization/locks/*",
      "Microsoft.Network/routeTables/join/action",
      "Microsoft.NetApp/netAppAccounts/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/write",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/delete",
      "Microsoft.Network/privateEndpoints/write",
      "Microsoft.Storage/storageAccounts/PrivateEndpointConnectionsApproval/action",
      "Microsoft.Storage/storageAccounts/privateEndpointConnections/read",
      "Microsoft.Storage/storageAccounts/managementPolicies/read",
      "Microsoft.Storage/storageAccounts/managementPolicies/write",
      "Microsoft.Network/privateEndpoints/read",
      "Microsoft.Network/privateDnsZones/write",
      "Microsoft.Network/privateDnsZones/virtualNetworkLinks/write",
      "Microsoft.Network/virtualNetworks/join/action",
      "Microsoft.Network/privateDnsZones/A/write",
      "Microsoft.Network/privateDnsZones/read",
      "Microsoft.Network/privateDnsZones/virtualNetworkLinks/read",
      "Microsoft.Resources/deployments/operationStatuses/read",
      "Microsoft.Insights/Metrics/Read",
      "Microsoft.Compute/virtualMachines/extensions/write",
      "Microsoft.Compute/virtualMachines/extensions/delete",
      "Microsoft.Compute/virtualMachines/extensions/read",
      "Microsoft.Compute/virtualMachines/delete",
      "Microsoft.Network/networkInterfaces/delete",
      "Microsoft.Network/networkSecurityGroups/delete",
      "Microsoft.Resources/deployments/delete",
      "Microsoft.Compute/diskEncryptionSets/read",
      "Microsoft.Compute/snapshots/delete",
      "Microsoft.Network/privateEndpoints/delete",
      "Microsoft.Compute/availabilitySets/delete",
      "Microsoft.Network/loadBalancers/delete",
      "Microsoft.KeyVault/vaults/read",
      "Microsoft.KeyVault/vaults/accessPolicies/write",
      "Microsoft.Compute/diskEncryptionSets/write",
      "Microsoft.KeyVault/vaults/deploy/action",
      "Microsoft.Compute/diskEncryptionSets/delete",
      "Microsoft.Resources/tags/read",
      "Microsoft.Resources/tags/write",
      "Microsoft.Resources/tags/delete",
      "Microsoft.Network/applicationSecurityGroups/write",
      "Microsoft.Network/applicationSecurityGroups/read",
      "Microsoft.Network/applicationSecurityGroups/joinIpConfiguration/action",
      "Microsoft.Network/networkSecurityGroups/securityRules/write",
      "Microsoft.Network/applicationSecurityGroups/delete",
      "Microsoft.Network/networkSecurityGroups/securityRules/delete",
      "Microsoft.Network/publicIPAddresses/delete",
      "Microsoft.Authorization/roleDefinitions/write",
      "Microsoft.Authorization/roleAssignments/write",
      "Microsoft.Network/publicIPAddresses/write",
      "Microsoft.Network/publicIPAddresses/read",
      "Microsoft.Network/networkSecurityGroups/securityRules/read",
      "Microsoft.Network/publicIPAddresses/join/action",
      "Microsoft.Network/locations/virtualNetworkAvailableEndpointServices/read",
      "Microsoft.Network/networkInterfaces/ipConfigurations/read",
      "Microsoft.Resources/deployments/cancel/action",
      "Microsoft.Resources/deployments/validate/action",
      "Microsoft.Authorization/roleAssignments/read"
    ]
    not_actions = []
  }
  assignable_scopes = [
    "/subscriptions/${var.azure_subscription_id}",
  ]
}

#Requirements Azure Resource Group
resource "azurerm_resource_group" "bluexp-resource-group" {
  name     = var.azure_bluexp_resource_group
  location = var.azure_bluexp_location
}

#Requirements Azure Network Security Group. The BlueXP (https://bluexp.netapp.com)is a SaaS from Netapp. Altought it only require outbound ports, you may want to manage directly using your own BlueXP Connector.
resource "azurerm_network_security_group" "bluexp-nsg" {
  name                = var.azure_bluexp_network_security_group
  location            = var.azure_bluexp_location
  resource_group_name = var.azure_bluexp_resource_group
  security_rule {
    name                       = "HTTP_rule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "HTTPs_rule"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "SSH_rule"
    priority                   = 102
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "InternetConnectivity"
    priority                   = 100
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
#Netapp Resource definitions for BlueXP Connector -> https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/latest/docs/resources/connector_azure
resource "netapp-cloudmanager_connector_azure" "cl-bluexp-azure" {
  provider                    = netapp-cloudmanager
  name                        = var.netapp_bluexp_connector_name 
  location                    = var.azure_bluexp_location
  subscription_id             = var.azure_subscription_id
  company                     = var.netapp_company
  resource_group              = var.azure_bluexp_resource_group
  subnet_id                   = var.netapp_subnet_id
  vnet_id                     = var.netapp_vnet_id
  network_security_group_name = var.azure_bluexp_network_security_group
  associate_public_ip_address = var.netapp_associate_public_ip_address
  account_id                  = var.netapp_account_id
  admin_username              = var.netapp_connector_vm_admin_username
  admin_password              = var.netapp_connector_vm_admin_password
  virtual_machine_size        = var.azure_vm_size
  storage_account             = var.azure_storage_account
}

data "azurerm_virtual_machine" "bluexp-vm" {
  depends_on          = [netapp-cloudmanager_connector_azure.cl-bluexp-azure]
  name                = var.netapp_bluexp_connector_name
  resource_group_name = var.azure_bluexp_resource_group
}
#Add BlueXP VM as a Managed Identity, using the custom role created.
resource "azurerm_role_assignment" "bluexp-role-assignment" {
  depends_on         = [azurerm_role_definition.bluexp-custom-role]
  scope              = "/subscriptions/${var.azure_subscription_id}"
  role_definition_id = azurerm_role_definition.bluexp-custom-role.role_definition_resource_id
  principal_id       = data.azurerm_virtual_machine.bluexp-vm.identity.0.principal_id
}