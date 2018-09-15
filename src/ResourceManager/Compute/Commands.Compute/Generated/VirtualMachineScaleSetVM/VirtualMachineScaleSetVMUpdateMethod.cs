//
// Copyright (c) Microsoft and contributors.  All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//
// See the License for the specific language governing permissions and
// limitations under the License.
//

// Warning: This code was generated by a tool.
//
// Changes to this file may cause incorrect behavior and will be lost if the
// code is regenerated.

using Microsoft.Azure.Commands.Compute.Automation.Models;
using Microsoft.Azure.Management.Compute;
using Microsoft.Azure.Management.Compute.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;

namespace Microsoft.Azure.Commands.Compute.Automation
{
    [Cmdlet(VerbsData.Update, ResourceManager.Common.AzureRMConstants.AzureRMPrefix + "VmssVM", DefaultParameterSetName = "DefaultParameter", SupportsShouldProcess = true)]
    [OutputType(typeof(PSVirtualMachineScaleSetVM))]
    public partial class UpdateAzureRmVmssVM : ComputeAutomationBaseCmdlet
    {
        public override void ExecuteCmdlet()
        {
            base.ExecuteCmdlet();
            ExecuteClientAction(() =>
            {
                if (ShouldProcess(this.VMScaleSetName, VerbsData.Update))
                {
                    string resourceGroupName;
                    string vmScaleSetName;
                    string instanceId;
                    switch (this.ParameterSetName)
                    {
                        case "ResourceIdParameter":
                            resourceGroupName = GetResourceGroupName(this.ResourceId);
                            vmScaleSetName = GetResourceName(this.ResourceId, "Microsoft.Compute/VirtualMachineScaleSets", "virtualMachines");
                            instanceId = GetInstanceId(this.ResourceId, "Microsoft.Compute/VirtualMachineScaleSets", "virtualMachines");
                            break;
                        case "ObjectParameter":
                            resourceGroupName = GetResourceGroupName(this.VirtualMachineScaleSetVM.Id);
                            vmScaleSetName = GetResourceName(this.VirtualMachineScaleSetVM.Id, "Microsoft.Compute/VirtualMachineScaleSets", "virtualMachines");
                            instanceId = GetInstanceId(this.VirtualMachineScaleSetVM.Id, "Microsoft.Compute/VirtualMachineScaleSets", "virtualMachines");
                            break;
                        default:
                            resourceGroupName = this.ResourceGroupName;
                            vmScaleSetName = this.VMScaleSetName;
                            instanceId = this.InstanceId;
                            break;
                    }
                    VirtualMachineScaleSetVM parameters = new VirtualMachineScaleSetVM();
                    ComputeAutomationAutoMapperProfile.Mapper.Map<PSVirtualMachineScaleSetVM, VirtualMachineScaleSetVM>(this.VirtualMachineScaleSetVM, parameters);

                    if (this.ParameterSetName != "ObjectParameter")
                    {
                        parameters = VirtualMachineScaleSetVMsClient.Get(resourceGroupName, vmScaleSetName, instanceId);
                    }

                    if (this.DataDisk != null)
                    {
                        if (parameters.StorageProfile == null)
                        {
                            parameters.StorageProfile = new StorageProfile();
                        }

                        if (parameters.StorageProfile.DataDisks == null)
                        {
                            parameters.StorageProfile.DataDisks = new List<DataDisk>();
                        }

                        foreach (var d in this.DataDisk)
                        {
                            parameters.StorageProfile.DataDisks.Add(d);
                        }
                    }

                    var result = VirtualMachineScaleSetVMsClient.Update(resourceGroupName, vmScaleSetName, instanceId, parameters);
                    var psObject = new PSVirtualMachineScaleSetVM();
                    ComputeAutomationAutoMapperProfile.Mapper.Map<VirtualMachineScaleSetVM, PSVirtualMachineScaleSetVM>(result, psObject);
                    WriteObject(psObject);
                }
            });
        }

        [Parameter(
            ParameterSetName = "DefaultParameter",
            Position = 1,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        [ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleter()]
        public string ResourceGroupName { get; set; }

        [Parameter(
            ParameterSetName = "DefaultParameter",
            Position = 2,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        [Alias("Name")]
        public string VMScaleSetName { get; set; }

        [Parameter(
            ParameterSetName = "DefaultParameter",
            Position = 3,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        public string InstanceId { get; set; }

        [Parameter(
            ValueFromPipeline = true)]
        public Compute.Models.PSVirtualMachineDataDisk [] DataDisk { get; set; }

        [Parameter(
            ParameterSetName = "ResourceIdParameter",
            Position = 0,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        public string ResourceId { get; set; }

        [Parameter(
            ParameterSetName = "ObjectParameter",
            Position = 0,
            Mandatory = true,
            ValueFromPipeline = true)]
        public PSVirtualMachineScaleSetVM VirtualMachineScaleSetVM { get; set; }

        [Parameter(Mandatory = false, HelpMessage = "Run cmdlet in the background")]
        public SwitchParameter AsJob { get; set; }
    }
}
