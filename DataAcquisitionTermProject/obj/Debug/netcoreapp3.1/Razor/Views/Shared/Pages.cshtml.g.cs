#pragma checksum "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "7fc32ffa59645b8cacd7c15bfa6fa4f5bc5932cb"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared_Pages), @"mvc.1.0.view", @"/Views/Shared/Pages.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\_ViewImports.cshtml"
using DataAcquisitionTermProject;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\_ViewImports.cshtml"
using DataAcquisitionTermProject.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"7fc32ffa59645b8cacd7c15bfa6fa4f5bc5932cb", @"/Views/Shared/Pages.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"64d9c8b7aed45bfd20d19da0724cec052a155481", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared_Pages : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("id", new global::Microsoft.AspNetCore.Html.HtmlString("pageform"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "get", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("form-inline d-inline-block"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "7fc32ffa59645b8cacd7c15bfa6fa4f5bc5932cb4346", async() => {
                WriteLiteral("\r\n\r\n        <button name=\"options.currentPage\"");
                BeginWriteAttribute("value", " value=\"", 120, "\"", 151, 1);
#nullable restore
#line 4 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
WriteAttributeValue("", 128, Model.CurrentPage -1, 128, 23, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                BeginWriteAttribute("class", "\r\n                class=\"", 152, "\"", 244, 3);
                WriteAttributeValue("", 177, "btn", 177, 3, true);
                WriteAttributeValue(" ", 180, "btn-outline-primary", 181, 20, true);
#nullable restore
#line 5 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
WriteAttributeValue(" ", 200, !Model.HasPreviousPage ? "disabled" : "", 201, 43, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral("\r\n                type=\"submit\">\r\n            Previous\r\n        </button>\r\n\r\n");
#nullable restore
#line 10 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
         for (int i = 1; i <= 3 && i <= Model.TotalPages; i++)
        {

#line default
#line hidden
#nullable disable
                WriteLiteral("            <button name=\"options.currentPage\"");
                BeginWriteAttribute("value", " value=\"", 443, "\"", 453, 1);
#nullable restore
#line 12 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
WriteAttributeValue("", 451, i, 451, 2, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" type=\"submit\"");
                BeginWriteAttribute("class", "\r\n                    class=\"", 468, "\"", 562, 3);
                WriteAttributeValue("", 497, "btn", 497, 3, true);
                WriteAttributeValue(" ", 500, "btn-outline-primary", 501, 20, true);
#nullable restore
#line 13 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
WriteAttributeValue(" ", 520, Model.CurrentPage == i ? "active" : "", 521, 41, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(">\r\n                ");
#nullable restore
#line 14 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
           Write(i);

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n            </button>\r\n");
#nullable restore
#line 16 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
        }

#line default
#line hidden
#nullable disable
#nullable restore
#line 17 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
         if (Model.CurrentPage > 3 && Model.TotalPages - Model.CurrentPage >= 3)
        {

#line default
#line hidden
#nullable disable
                WriteLiteral("            ");
                WriteLiteral("...\r\n            <button class=\"btn btn-outline-primary active\">");
#nullable restore
#line 20 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
                                                      Write(Model.CurrentPage);

#line default
#line hidden
#nullable disable
                WriteLiteral("</button>\r\n");
#nullable restore
#line 21 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
        }

#line default
#line hidden
#nullable disable
#nullable restore
#line 22 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
         if (Model.TotalPages > 3)
        {

#line default
#line hidden
#nullable disable
                WriteLiteral("            ");
                WriteLiteral("...\r\n");
#nullable restore
#line 25 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
             for (int i = Math.Max(4, Model.TotalPages - 2);
                                   i <= Model.TotalPages; i++)
            {

#line default
#line hidden
#nullable disable
                WriteLiteral("                <button name=\"options.currentPage\"");
                BeginWriteAttribute("value", " value=\"", 1088, "\"", 1098, 1);
#nullable restore
#line 28 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
WriteAttributeValue("", 1096, i, 1096, 2, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" type=\"submit\"");
                BeginWriteAttribute("class", "\r\n                        class=\"", 1113, "\"", 1231, 3);
                WriteAttributeValue("", 1146, "btn", 1146, 3, true);
                WriteAttributeValue(" ", 1149, "btn-outline-primary", 1150, 20, true);
#nullable restore
#line 29 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
WriteAttributeValue("\r\n                   ", 1169, Model.CurrentPage == i ? "active" : "", 1190, 41, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(">\r\n                    ");
#nullable restore
#line 31 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
               Write(i);

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                </button>\r\n");
#nullable restore
#line 33 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
            }

#line default
#line hidden
#nullable disable
#nullable restore
#line 33 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
             
        }

#line default
#line hidden
#nullable disable
                WriteLiteral("        <button name=\"options.currentPage\"");
                BeginWriteAttribute("value", " value=\"", 1354, "\"", 1385, 1);
#nullable restore
#line 35 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
WriteAttributeValue("", 1362, Model.CurrentPage +1, 1362, 23, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" type=\"submit\"");
                BeginWriteAttribute("class", "\r\n                class=\"", 1400, "\"", 1487, 3);
                WriteAttributeValue("", 1425, "btn", 1425, 3, true);
                WriteAttributeValue(" ", 1428, "btn-outline-primary", 1429, 20, true);
#nullable restore
#line 36 "C:\Users\nuria\source\repos\DataAcquisitionTermProject\DataAcquisitionTermProject\Views\Shared\Pages.cshtml"
WriteAttributeValue(" ", 1448, !Model.HasNextPage? "disabled" : "", 1449, 38, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(">\r\n            Next\r\n        </button>\r\n\r\n");
                WriteLiteral("        <input type=\"hidden\" name=\"options.currentPage\" value=\"1\" />\r\n");
                WriteLiteral("    ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
