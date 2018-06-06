// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using Microsoft.Azure.Commands.ScenarioTest.SqlTests;
using Microsoft.WindowsAzure.Commands.ScenarioTest;
using Xunit;
using Xunit.Abstractions;

namespace Microsoft.Azure.Commands.Sql.Test.ScenarioTests
{
    public class ImportExportTests : SqlTestsBase
    {
        public ImportExportTests(ITestOutputHelper output) : base(output)
        {
        }


        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        [Trait(Category.Sql, "Needs to be re-recorded")]
        // TODO: Remove "CallSite.Target" from Get-SqlDatabaseImportExportTestEnvironmentParameters in GetName when re-recording
        public void TestExportDatabase()
        {
            RunPowerShellTest("Test-ExportDatabase");
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        [Trait(Category.Sql, "Needs to be re-recorded")]
        // TODO: Remove "CallSite.Target" from Get-SqlDatabaseImportExportTestEnvironmentParameters in GetName when re-recording
        public void TestImportDatabase()
        {
            RunPowerShellTest("Test-ImportDatabase");
        }
    }
}
