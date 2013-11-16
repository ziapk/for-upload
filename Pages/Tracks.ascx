<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Tracks.ascx.cs" Inherits="Christoc.Modules.SchoolRenewal.Pages.Tracks" %>
<%@ Register Src="~/desktopmodules/YA.Controls/Track/ListTrack/ListTracks.ascx" TagPrefix="uc2" TagName="ListTracks" %>

<asp:Panel runat="server" ID="PnlTrack">
    <div style="float: left; margin-bottom: 20px; width: 100%;">
        <div style="float: left; width: 100%" class="ya-section-content ya-grey-border-bottom">
            <div class="ya-school-renew-block">
                <p class="ya-alliance-active-rys ya-lead">
                    <span style="float: left">Yoga Alliance Membership Assessment - Active RYS
                    </span>
                    &nbsp;
                    <a class="ya-help" >
                    <span class="ya-help helpIcon"  aria-hidden="true" data-icon="T" data-internalid="SchoolRenewal.Tracks.YogaAllianceMembershipAssessment-ActiveRYS">
                    </span>
                   </a>
                </p>
                <span class="pull-right">

                    <strong class="ya-smallpos">$<asp:Label runat="server" ID="LblMembership"></asp:Label>
                    </strong>
                </span>
            </div>
            <uc2:ListTracks runat="server" ID="ListTrack"></uc2:ListTracks>
<%--            <asp:Repeater runat="server" ID="RepeaterDesignation">
                <ItemTemplate>
                    <div style="float: left; margin-bottom: 20px; width: 100%;">
                        <div style="float: left; width: 15%">
                            <img src='<%#Eval("ImagePath") %>' alt='<%#Eval("Designation") %>'>
                        </div>
                        <div style="float: left; margin-top: 15px; width: 85%;">
                            <table width="100%">
                                <tr>
                                    <td style="width: 20%">
                                        <span><strong>Track Name</strong></span>
                                    </td>
                                    <td style="width: 15%">
                                        <span><strong>Status</strong></span>
                                    </td>
                                    <td style="width: 15%"></td>
                                    <td style="width: 30%">
                                        <span><strong>Item Description</strong></span>
                                    </td>
                                    <td style="width: 10%"></td>
                                </tr>
                                <asp:Repeater runat="server" ID="RepeaterTracks" DataSource='<%#Eval("Tracks") %>' OnItemCommand="RepeaterTracks_OnItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <span><%#Eval("TrackName") %></span>
                                            </td>
                                            <td>
                                                <span><%#Eval("Active") %></span>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="LBNotRenew" CommandName="DonotRenew" Visible="" CommandArgument='<%#Eval("Id") %>' runat="server" CausesValidation="False" class="ya-action" Text="Do not Renew" OnClientClick=" return confirm('this cannot be undone and this track will be permanently removed. Are you sure?'); "></asp:LinkButton>
                                            </td>
                                            <td>
                                                <span><%#Eval("Description") %></span>
                                            </td>
                                            <td align="right">$<span><%#Eval("Total") %></span></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </table>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>--%>
            <%--  <div class="ya-school-renew-block">
        <div class="ya-track-name">
            <div class="ya-align-middle">
                <img src="images/YA-School-Designation-RYS200.png">
                <div class="pull-left">
                    <div class="ya-align-middle hidden-phone">
                        <span><strong>Track Name</strong></span><br />
                        <span>Extra Hot Yoga</span>
                    </div>
                    <div class="visible-phone">
                        <span><strong>Track Name</strong></span><br />
                        <span>Extra Hot Yoga</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="ya-track-Status hidden-phone">
            <div class="ya-align-middle">
                <span><strong>Status</strong></span><br />
                <span>Approved</span>
                <a href="#" class="ya-action ya-do-not-renew">Do Not Renew</a>
            </div>
        </div>
        <div class="ya-item-description">
            <div class="ya-align-middle">
                <span><strong>Item Description</strong></span><br />
                <span>RYS 200 Annual</span>
            </div>
        </div>
        <div class="ya-amount-money">
            <div class="pull-right">
                <div class="ya-align-middle text-right">
                    <span>$175.00</span>
                </div>
            </div>
        </div>
    </div>
    <div class="ya-school-renew-block">
        <div class="ya-track-name">
            <div class="ya-align-middle">
                <img src="images/YA-School-Designation-RYS200.png">
                <div class="pull-left">
                    <div class="ya-align-middle hidden-phone">
                        <span><strong>Track Name</strong></span><br />
                        <span>Luke Warm Yoga</span><br />
                        <span>Super Hot Yoga</span>
                    </div>
                    <div class="visible-phone">
                        <span><strong>Track Name</strong></span><br />
                        <span>Luke Warm Yoga</span><br />
                        <span>Super Hot Yoga</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="ya-track-Status hidden-phone">
            <div class="ya-align-middle">
                <span><strong>Status</strong></span><br />
                <span>Approved</span>
                <a href="#" class="ya-action ya-do-not-renew">Do Not Renew</a><br />
                <span>Approved</span>
                <a href="#" class="ya-action ya-do-not-renew">Do Not Renew</a>
            </div>
        </div>
        <div class="ya-item-description">
            <div class="ya-align-middle">
                <span><strong>Item Description</strong></span><br />
                <span>RYS 500 Annual</span><br />
                <span>Additional Track</span>
            </div>
        </div>
        <div class="ya-amount-money">
            <div class="pull-right">
                <div class="ya-align-middle text-right">
                    <span>$175.00</span><br />
                    <span>$50.00</span>
                </div>
            </div>
        </div>
    </div>
</div>--%>
        </div>
        <div class="ya-total-calc-region pull-right">
            <span class="ya-total-label">Subtotal </span>
            <span>$<asp:Label ID="LblSubTotal" runat="server"></asp:Label>
            </span>
        </div>
    </div>
</asp:Panel>