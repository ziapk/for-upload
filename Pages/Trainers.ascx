<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Trainers.ascx.cs" Inherits="Christoc.Modules.SchoolRenewal.Pages.Trainers" %>
<asp:Panel runat="server" ID="PnlTrainer">
    <div style="float: left; margin-bottom: 20px; width: 100%;">
        <div style="float: left; width: 100%" class="ya-section-content ya-grey-border-bottom">
            <div class="ya-section-content">
                <div class="pull-right visible-phone">
                    <span>
                        <span data-icon="&#x34;" aria-hidden="true" class="ya-green-font"></span>
                        <strong>Designages Lead Trainer</strong>
                    </span>
                </div>
                <div class="clearfix"></div>
                <asp:Repeater runat="server" ID="RepeaterTrainers">
                    <ItemTemplate>
                        <div class="ya-trainer-include-container ya-grey-border-bottom">
                            <div class="ya-trainer-include">
                                <span><strong>Include</strong></span><br />
                                <asp:CheckBox ID="ChBoxInclude" runat="server" AutoPostBack="true" Checked='<%#Eval("isEnable") %>' OnCheckedChanged="ChBoxInclude_CheckedChanged" />
                                <asp:HiddenField runat="server" ID="HfTrainerId" Value='<%#Eval("Id") %>' />
                            </div>
                            <div class="ya-trainer-include-content">
                                <div class="ya-school-renew-block">
                                    <div class="pull-left">
                                        <span>
                                            <strong><%#Eval("Name") %></strong>
                                            <span data-icon='<%#Eval("IconPrimary") %>' aria-hidden="true" class="ya-green-font"></span>
                                        </span>
                                        <h5><%#Eval("Designations") %></h5>
                                        <span>Paid for Last Year: </span>
                                        <span class="ya-green-font"><%#Eval("IsPaidBySchool") %></span>
                                        <br class="visible-phone" />
                                        <span class="ya-margin-left">Current Renewal Date </span>
                                        <span class="ya-margin-left">
                                            <strong>&nbsp; <%#                Eval("CurrentRenewalDate", "{0:MMM d yyyy}") %></strong>
                                        </span>
                                    </div>

                                </div>
                                <div class="ya-include-checked-content">
                                    <div class="pull-left">
                                        <span>YA Registry Fees</span><br />
                                        <span>YA Membership Assessment</span>
                                    </div>
                                    <div class="pull-right">
                                        <span>$<%#Eval("RenewalAmount") %></span><br />
                                        <span>$<%#Eval("Membership") %></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <%-- <div class="ya-trainer-include-container ya-grey-border-bottom">
        <div class="ya-trainer-include">
            <span><strong>Include</strong></span><br />
            <input type="checkbox" class="ya-include-check" checked="checked" />
        </div>
        <div class="ya-trainer-include-content">
            <div class="ya-school-renew-block">
                <div class="pull-left">
                    <span>
                        <strong>Matthew Gilmore</strong>
                        <span data-icon="&#x34;" aria-hidden="true" class="ya-green-font"></span>
                    </span>
                    <h5>RYT 200, RYT 500, E-RYT 200</h5>
                    <span>Paid for Last Year: </span>
                    <span class="ya-green-font">Yes</span>
                </div>
                <div class="pull-right hidden-phone">
                    <span>
                        <span data-icon="&#x34;" aria-hidden="true" class="ya-green-font"></span>
                        <strong>Designages Lead Trainer</strong>
                    </span>
                </div>
            </div>
            <div class="ya-include-checked-content">
                <div class="pull-left">
                    <span>YA Registry Fees</span><br />
                    <span>YA Membership Assessment</span>
                </div>
                <div class="pull-right">
                    <span>$??.00</span><br />
                    <span>$??.00</span>
                </div>
            </div>
        </div>
    </div>--%>
                <%-- <div class="ya-trainer-include-container ya-grey-border-bottom">
        <div class="ya-trainer-include">
            <span><strong>Include</strong></span><br />
            <input type="checkbox" class="ya-include-check" checked="checked" />
        </div>
        <div class="ya-trainer-include-content">
            <div class="ya-school-renew-block">
                <span>
                    <strong>Sarah Johnson</strong>
                </span>
                <h5>RYT 200, RYT 500</h5>
                <span>Paid for Last Year: No</span>
                <br class="visible-phone" />
                <span class="ya-margin-left">Current Renewal Date </span>
                <span class="ya-margin-left"><strong>&nbsp; Jun 12, 2014</strong></span>
            </div>
            <div class="ya-include-checked-content">
                <div class="pull-left">
                    <span>YA Registry Fees (pro-rated)</span><br />
                    <span>YA Membership Assessment
                                <br class="visible-phone">
                        (pro-rated)</span>
                </div>
                <div class="pull-right">
                    <span>$??.00</span><br />
                    <span>$??.00</span>
                </div>
            </div>
        </div>
    </div>
    <div class="ya-trainer-include-container ya-grey-border-bottom">
        <div class="ya-trainer-include">
            <span><strong>Include</strong></span><br />
            <input type="checkbox" class="ya-include-check" checked="checked" />
        </div>
        <div class="ya-trainer-include-content">
            <div class="ya-school-renew-block">
                <span>
                    <strong>Amy Bell</strong>
                    <span data-icon="&#x34;" aria-hidden="true" class="ya-green-font"></span>
                </span>
                <h5>RYT 200, RYT 500, E-RYT 200</h5>
                <span>Paid for Last Year: </span>
                <span class="ya-green-font">Yes</span>
            </div>
            <div class="ya-include-checked-content">
                <div class="pull-left">
                    <span>YA Registry Fees</span><br />
                    <span>YA Membership Assessment</span>
                </div>
                <div class="pull-right">
                    <span>$??.00</span><br />
                    <span>$??.00</span>
                </div>
            </div>
        </div>
    </div>--%>
            </div>
        </div>
        <br />
        <div class="ya-total-calc-region pull-right">
            <span class="ya-total-label">Subtotal </span>
            <span>$<asp:Label ID="LBLTotal" runat="server"></asp:Label>
            </span>
        </div>
    </div>
</asp:Panel>