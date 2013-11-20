<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListLocations.ascx.cs" Inherits="YA.Controls.Location.ListLocations.ListLocations" %>
<%@ Import Namespace="YA.Domain.Enums.ControlStates" %>

<asp:HiddenField runat="server" ID="HdIsSchoolOwner" />
<asp:HiddenField runat="server" ID="HdCurrentState" />
<asp:HiddenField runat="server" ID="HdSchoolId" />
<div class="ya-location-block">
    <asp:Repeater runat="server" ID="RepLocations" OnItemCommand="RepeaterLocations_OnItemCommand">
        <ItemTemplate>
            <asp:HiddenField runat="server" ID="HdLocationId" Value='<%#Eval("Id") %>' />
            <div class="ya-location-row">
                <%#(bool) Eval("IsPrimary") ? "<div  class='ya-badge-block'><span class='badge badge-info'>Primary Location</span></div>" : "" %>
                <%#(bool) Eval("IsRegister") == false
                    ? "<div class='ya-badge-block'><span class='badge badge-success'>New</span></div>	"
                    : "" %>

                <div class="ya-box-one">
                    <address class="ya-location-address">
                        <div>
                            <span class="ya-lead"><%#Eval("LocationName") %> </span>
                            <asp:LinkButton ID="LBNotRenew" CommandName="DonotRenew" CommandArgument='<%#Eval("Id") %>' runat="server" Visible='<%# (bool)Eval("IsnotHide") && CurrentState == ControlStates.SchoolRenewal %>' CausesValidation="False" 
                                class="ya-action ya-do-not-renew" Text='Do not Renew' 
                                OnClientClick=" return confirm('this cannot be undone and this Location will be permanently removed. Are you sure?'); "></asp:LinkButton>
                        </div>
                        <asp:Panel ID="Panel1" runat="server" Visible='<%#CurrentState != ControlStates.SchoolRenewal%>'>
                            <asp:Label runat="server" Text='<%#Eval("AddressLine") %>' ID="TxtAddressLine"></asp:Label><%# !String.IsNullOrEmpty((string)Eval("AddressLine")) ? "<br />" : "" %>
                            <asp:Label runat="server" Text='<%#Eval("AddressLine2") %>' ID="TxtAddressLine2"></asp:Label><%# !String.IsNullOrEmpty((string)Eval("AddressLine2")) ? "<br />" : "" %>
                            <asp:Label runat="server" Text='<%#Eval("State") %>' ID="TxtState"></asp:Label>
                            <%# !String.IsNullOrEmpty((string)Eval("State")) && !String.IsNullOrEmpty((string)Eval("Zip")) ? ", " : "" %>
                            <asp:Label runat="server" Text='<%#Eval("Zip") %>' ID="Label4"></asp:Label>
                            <%# !String.IsNullOrEmpty((string)Eval("City"))  ? "<br />" : "" %>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("City") %>' ></asp:Label>
                            <%# !String.IsNullOrEmpty((string)Eval("Country"))  ? "<br />" : "" %>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Country") %>' ></asp:Label>

                           <%-- <%# !String.IsNullOrEmpty((string)Eval("ContactPhoneNumber"))  ? "<br />" : "" %>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("ContactPhoneNumber") %>' ></asp:Label>--%>
                            
                            <%# !String.IsNullOrEmpty((string)Eval("FormatPhoneNumber"))  ? "<br />" : "" %>
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("FormatPhoneNumber") %>' ></asp:Label>

                            <%# !String.IsNullOrEmpty((string)Eval("ContactEmailAddress"))  ? "<br />" : "" %>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("ContactEmailAddress") %>' ></asp:Label>
                        </asp:Panel>
                        <span id="Span1" runat="server" visible='<%#CurrentState == ControlStates.SchoolRenewal%>'><%#Eval("Desc") %></span>
                    </address>
                    <asp:Button runat="server" Visible='<%#(bool)Eval("IsSchoolOwner") && !(bool)Eval("IsPrimary") && LocationVms.Count > 1 && (bool)Eval("IsRegister") %>' ID="BtnDeleteLocation" OnClick="BtnDeleteLocation_OnServerClick" 
                        OnClientClick="if(!confirm('This cannot be undone and your money will not be refunded. Are you sure you want to delete this location?')) return false;" 
                        CssClass="btn-link" Text="Delete Location"></asp:Button>
                    <asp:Button runat="server" Visible='<%#(bool)Eval("IsSchoolOwner") && !(bool)Eval("IsPrimary") && LocationVms.Count > 1 && !(bool)Eval("IsRegister") %>' ID="Button1" OnClick="BtnDeleteLocation_OnServerClick" 
                        OnClientClick="if(!confirm('This cannot be undone. Are you sure you want to delete this location?')) return false;" 
                        CssClass="btn-link" Text="Delete Location"></asp:Button>
                </div>
                <div class="ya-box-two">
                    <asp:Button runat="server" ID="BtnEditLocation" Visible='<%#CurrentState != ControlStates.SchoolRenewal%>' OnClick="BtnEditLocation_OnServerClick" class="btn-link pull-right" Text="Edit Location"></asp:Button>
                    <div id="Div1" runat="server" visible='<%#CurrentState != ControlStates.ManageSchool%>' class="ya-price">$<%#Eval("Total") %></div>
                    <br />
                    <br />
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
