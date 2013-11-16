<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Locations.ascx.cs" Inherits="Christoc.Modules.SchoolRenewal.Pages.Locations" %>
<%@ Register Src="~/desktopmodules/YA.Controls/Location/AddLocation/AddLocation.ascx" TagPrefix="uc1" TagName="AddLocation" %>
<%@ Register Src="~/desktopmodules/YA.Controls/Location/ListLocations/ListLocations.ascx" TagPrefix="uc2" TagName="ListLocations" %>


<%--<div class="pull-left">
    <span class="ya-primary-location">Primary Location</span><br />
    <span class="ya-lead">West Palm Beach Brahmi Yoga Shala</span><br />
    <span>Yoga Alliance Registry Fee</span>
</div>
<div class="ya-position-right-bottom">
    <span>Included</span>
</div>--%>

<div  class="ya-section-content" id="id-school-location" style="float: left; margin-bottom: 20px; width: 100%;">
    <asp:Panel runat="server" ID="PnlLocation">
        <div style="float: left; width: 100%" class="ya-section-content ya-grey-border-bottom">
            <uc2:ListLocations runat="server" id="UcLocations"></uc2:ListLocations>

           <%-- <asp:Repeater runat="server" ID="RepeaterLocations" OnItemCommand="RepeaterLocations_OnItemCommand">
                <ItemTemplate>
                    <div class="ya-school-renew-block ya-grey-border-bottom">
                        <div class="pull-left">
                            <span class='<%#Eval ("Class") %>'><%#Eval("Title") %></span><br />
                            <span class="ya-lead"><%#Eval("LocationName") %></span>
                        
                            <asp:LinkButton ID="LBNotRenew" CommandName="DonotRenew" CommandArgument='<%#Eval("Id") %>' runat="server" Visible='<%#Eval("IsnotHide") %>' CausesValidation="False" class="ya-action" Text='Do not Renew' OnClientClick=" return confirm('this cannot be undone and this Location will be permanently removed. Are you sure?'); "></asp:LinkButton>
                            <br />
                            <span><%#Eval("Desc") %></span>
                        </div>
                        <div class="ya-position-right-bottom">
                            <span>$<%#Eval("Total") %></span></div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>--%>
      
            <%--					
<div class="ya-school-renew-block ya-grey-border-bottom">
    <div class="pull-left">
        <span class="ya-lead">Eest City Beach Brahmi Yoga Shala</span>
        <br class="visible-phone">
        <a href="#" class="ya-action ya-do-not-renew">Do Not Renew</a><br />
        <span>Yoga Alliance Registry Fee</span>
    </div>
    <div class="ya-position-right-bottom">
        <span>$120.00</span>
    </div>
</div>
<div class="ya-school-renew-block ya-grey-border-bottom">
    <div class="pull-left">
        <span class="ya-new-location">New</span><br />
        <span class="ya-lead">Eest City Beach Brahmi Yoga Shala</span>
        <br class="visible-phone">
        <a href="#" class="ya-action ya-do-not-renew">Do Not Renew</a><br />
        <span>Yoga Alliance Registry Fee
            <br class="visible-phone">
            (Annual plus pro-rated)</span>
    </div>
    <div class="ya-position-right-bottom">
        <span>$200.00</span>
    </div>
</div>--%>

            <br />
            <br />
        </div>
        <div class="ya-total-calc-region pull-right">
            <span class="ya-total-label">Subtotal </span>
            <span>$<asp:Label runat="server" ID="LBTotalLocations"></asp:Label>
            </span>
        </div>
        <br />
 
        <asp:Button runat="server" OnClick="OnServerClick" class="btn input-medium visible-phone" Text="Add Location"></asp:Button>
        <uc1:AddLocation runat="server"  id="UcAddLocation" />
    </asp:Panel>
</div>