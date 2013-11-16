<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="Christoc.Modules.SchoolRenewal.View" %>
<%@ Register Src="~/desktopmodules/SchoolRenewal/Pages/Tracks.ascx" TagPrefix="uc1" TagName="Tracks" %>
<%@ Register Src="~/desktopmodules/SchoolRenewal/Pages/Locations.ascx" TagPrefix="uc1" TagName="Locations" %>
<%@ Register Src="~/desktopmodules/SchoolRenewal/Pages/Trainers.ascx" TagPrefix="uc1" TagName="Trainers" %>
<%@ Register Src="~/DesktopModules/YA.Controls/Menus/SideMenu.ascx" TagPrefix="uc1" TagName="SideMenu" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="dnnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<dnnn:DnnJsInclude runat="server" FilePath="~/DesktopModules/YA.Client/viewmodels/school/schoolrenewal-viewmodels.js" Priority="140" />
<dnnn:DnnJsInclude runat="server" FilePath="~/DesktopModules/YA.Client/viewmodels/locations/locations-viewmodels.js" Priority="150" />
<dnnn:DnnJsInclude runat="server" FilePath="~/DesktopModules/YA.Client/viewmodels/locations/addlocation-viewmodels.js" Priority="150" />

<%--<telerik:RadAjaxManager ID="ajax_manager" runat="server" EnableEmbeddedScripts="True"   ClientEvents-OnRequestStart="requestStart"
    DefaultLoadingPanelID="ajax_panel">
    <ajaxsettings>
        <telerik:AjaxSetting AjaxControlID="RdpDatePicker">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="UcTracks" />
                <telerik:AjaxUpdatedControl ControlID="UcLocations" />
                <telerik:AjaxUpdatedControl ControlID="UcTrainers" />
                <telerik:AjaxUpdatedControl ControlID="DivTotalBottom" />
                <telerik:AjaxUpdatedControl ControlID="DivTotalHead" />
            </UpdatedControls>
        </telerik:AjaxSetting>   

         <telerik:AjaxSetting AjaxControlID="LBReset">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="RdpDatePicker" />
                   <telerik:AjaxUpdatedControl ControlID="UcTracks" />
                   <telerik:AjaxUpdatedControl ControlID="UcLocations" />
                   <telerik:AjaxUpdatedControl ControlID="UcTrainers" />
                   <telerik:AjaxUpdatedControl ControlID="DivTotalBottom" />
                <telerik:AjaxUpdatedControl ControlID="DivTotalHead" />
            </UpdatedControls>
        </telerik:AjaxSetting> 
        
        <telerik:AjaxSetting AjaxControlID="UcLocations" >
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="RdpDatePicker" />
                <telerik:AjaxUpdatedControl ControlID="DivTotalBottom" />
                <telerik:AjaxUpdatedControl ControlID="UcLocations" />
                <telerik:AjaxUpdatedControl ControlID="DivTotalHead" />
            </UpdatedControls>
        </telerik:AjaxSetting> 

         <telerik:AjaxSetting AjaxControlID="UcTrainers" >
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="RdpDatePicker" />
                <telerik:AjaxUpdatedControl ControlID="UcTrainers" />
                <telerik:AjaxUpdatedControl ControlID="DivTotalBottom" />
                <telerik:AjaxUpdatedControl ControlID="DivTotalHead" />
            </UpdatedControls>
        </telerik:AjaxSetting> 

    </ajaxsettings>
</telerik:RadAjaxManager>--%>

<div class="ya-main-content">
    <div class="ya-school-renew-header">
        <div class="ya-school-renew-header-left hidden-phone">
            <uc1:SideMenu runat="server" ID="SM_SchoolRenewalMenu"></uc1:SideMenu>&nbsp;
        </div>
        <div class="ya-school-renew-header-right">
            <h1 class="ya-black-border-bottom">Renew School
						<span data-icon="&#x54;" aria-hidden="true" class="ya-help-icon"></span>
            </h1>
            <h3>
                <asp:Label runat="server" ID="LbSchoolName"></asp:Label></h3>
            <div class="ya-annual-costs">
                <h3 class="pull-left">Annual Costs</h3>
                <a href="#" class="ya-link pull-right ya-mediumpos">Full Rate Structure
							<span data-icon="&#x5b;" aria-hidden="true" class="ya-full-rate-icon hidden-phone pull-right"></span>
                    <span data-icon="&#x56;" aria-hidden="true" class="ya-full-rate-icon visible-phone pull-right ya-plus-minus-icon"></span>
                </a>
                <div class="clearfix"></div>
                <div class="ya-section-content">
                    <div class="ya-school-renew-block">
                        <div class="pull-left">
                            <span><strong>One Track</strong></span><br />
                            <span>Yoga Alliance Registry Dues</span><br />
                            <span>Yoga Alliance Membership</span>
                        </div>
                        <div class="pull-right text-right">
                            <span><strong>$225.00</strong></span><br />
                            <span>$200.00</span><br />
                            <span>$25.00</span>
                        </div>
                    </div>
                    <div class="ya-school-renew-block">
                        <div class="pull-left">
                            <span><strong>One Trainer</strong></span><br />
                            <span>Yoga Alliance Registry Dues</span><br />
                            <span>Yoga Alliance Membership</span>
                        </div>
                        <div class="pull-right text-right">
                            <span><strong>$55.00</strong></span><br />
                            <span>$35.00</span><br />
                            <span>$20.00</span>
                        </div>
                    </div>
                    <div class="ya-school-renew-block">
                        <div class="pull-left">
                            <span><strong>Additional Location</strong></span><br />
                            <span>Yoga Alliance Registry Dues</span>
                        </div>
                        <div class="pull-right text-right">
                            <span><strong>$50.00</strong></span><br />
                            <span>$50.00</span><br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span9">
            <div class="ya-school-renewal-date-block">
                <h3>School Renewal Date</h3>
                <div class="ya-school-renew-block ya-black-border-bottom">
                    <div class="ya-school-renewal-date">
                        <div class="ya-school-renew-block">

                            <div class="ya-school-renewal-date-label">
                                <span>Current Renewal Date</span>
                            </div>
                            <div class="ya-school-renewal-date-value">
                                <span>
                                    <strong>
                                        <asp:Label runat="server" ID="LblCurrentRenewalDate"></asp:Label>
                                    </strong>
                                </span>
                            </div>
                        </div>
                        <div class="ya-school-renew-block">
                            <div class="ya-school-renewal-date-label">
                                Renew Until
                            <a class="ya-help">
                                <span class="ya-help helpIcon" aria-hidden="true" data-icon="T" data-internalid="
        SchoolRenewal.RenewUntil "></span>
                            </a>
                            </div>
                            <div class="ya-school-renewal-date-value">
                                <%-- <input type="text" class="ya-datepicker input-small pull-left" />--%>
                                <telerik:RadDatePicker ID="RdpDatePicker" runat="server" AutoPostBack="True" OnSelectedDateChanged="RdpDatePicker_OnSelectedDateChanged" CssClass="ya-datepicker input-small pull-left"></telerik:RadDatePicker>
                                <span class="ya-action ya-smallpos">
                                    <asp:LinkButton runat="server" ID="LBReset" Text="Reset to 1 year" OnClick="LBReset_OnClick"></asp:LinkButton>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="ya-school-renew-paybtn-region visible-phone">
                        <asp:Button runat="server" ID="RdButtonPayHead" CssClass="btn btn-success input-medium pull-right ya-school-renew-paybtn" Text="Pay Now" OnClick="RdButtonPayHead_Click" />
                    </div>
                </div>
                <div class="ya-total-calc-region pull-right">
                    <div id="DivTotalHead" runat="server" class="ya-total-calc-region pull-right">
                        <span class="ya-total-label">Total </span>
                        <span>$<asp:Label ID="LBLInvoiceHead" runat="server"></asp:Label></span>
                    </div>
                </div>
            </div>
            <div class="ya-subtotal-bundle ya-black-border-bottom">
                <div class="ya-tracks-section">
                    <div class="ya-school-renew-section-bar">
                        <span data-icon="&#x58;" aria-hidden="true" class="pull-right ya-plus-minus-icon"></span>
                        <h3>Tracks</h3>
                    </div>
                    <uc1:Tracks runat="server" id="UcTracks" />
                </div>
                <div class="ya-locaions-section">
                    <div class="ya-school-renew-section-bar">
                        <span data-icon="&#x58;" aria-hidden="true" class="pull-right ya-plus-minus-icon" id="location-collapse"></span>
                        <h3>Locations</h3>
                    </div>
                    <uc1:Locations runat="server" id="UcLocations" />
                </div>
                <div class="ya-trainers-section">
                    <div class="ya-school-renew-section-bar">
                        <span data-icon="&#x58;" aria-hidden="true" class="pull-right ya-plus-minus-icon"></span>
                        <h3>Our Trainers <a class="ya-help">
                            <span class="ya-help helpIcon" aria-hidden="true" data-icon="T" data-internalid="SchoolRenewal.OurTrainers "></span>
                        </a>
                        </h3>
                    </div>
                    <uc1:Trainers runat="server" id="UcTrainers" />
                </div>
            </div>
            <div class="ya-school-renew-block">
                <div id="DivTotalBottom" runat="server" class="ya-total-calc-region pull-right">
                    <span class="ya-total-label">Total </span>
                    <span>$<asp:Label ID="LBLInvoiceBottom" runat="server"></asp:Label>
                    </span>
                </div>
                <div class="ya-school-renew-paybtn-region">
                    <asp:Button runat="server" ID="RdButtonPayBottom" CssClass="btn btn-success input-medium pull-right ya-school-renew-paybtn" Text="Pay Now" OnClick="RdButtonPayHead_Click" />
                </div>
            </div>
        </div>
        <!--span9 end -->
    </div>
    <!--row-fluid end -->
</div>
<!--ya-main-content end -->
