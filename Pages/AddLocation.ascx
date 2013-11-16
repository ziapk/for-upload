<%@ Register TagPrefix="dnnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>


<dnnn:DnnJsInclude runat="server" FilePath="~/DesktopModules/YA.Client/viewmodels/addlocation-viewmodels.js" Priority="140" />


<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddLocation.ascx.cs" Inherits="Christoc.Modules.SchoolRenewal.Pages.AddLocation" %>

<div class="container-fluid main-box">
    <div class="ya-article">
        <aside class="ya-left-sidebar hidden-phone">
            <!-- ad space content -->
            &nbsp;
	
        </aside>
        <!-- end left sidebar -->

        <!-- ################ ADD/EDIT LOCATION PANEL ############### -->
        <div class="ya-add-edit-location">
            <h1 class="ya-page-title">Add location</h1>
            <div class="ya-annul-cost">
                <h3>Annual Cost</h3>
                <p>Your Primary Location is included with your annual school registration</p>
                <div class="ya-add-location-block">
                    <h4 class="pull-left">Each Additional Location</h4>
                    <span class="pull-right"><strong>$50.00</strong></span>
                </div>
                <p>Adding a location gives you one additional directory listing of this new location. You can set any one location as your Primary at any time</p>
            </div>
            <div class="ya-add-location-block">
                <div class="ya-control-group">
                    <label for="location-name">Location Name<span class="ya-required-mark">*</span></label>
                    <input type="text" id="location-name" required="required" placeholder="Location Name" />
                </div>
                <div class="ya-checkbox-group">
                    <input type="checkbox" id="primary-location" />
                    <label for="primary-location">Set as Primary Location</label>
                </div>
            </div>
            <!-- ################ CONTACT AND ADDRESS ############### -->
            <section class="ya-contact-address">
                <article class="ya-address-info">
                    <h3 class="ya-page-title">Address</h3>
                    <div class="ya-control-group">
                        <label for="country">Country<span class="ya-required-mark">*</span></label>
                        <select id="country" required="required">
                            <option value="0" selected="selected">Please Select</option>
                            <option value="1">USA</option>
                            <option value="2">Canada</option>
                            <option value="3">China</option>
                        </select>
                    </div>
                    <div class="ya-control-group">
                        <label for="address1">Address 1</label>
                        <input type="text" id="address1" placeholder="Address 1" />
                    </div>
                    <div class="ya-control-group">
                        <label for="address2">Address 2</label>
                        <input type="text" id="address2" placeholder="Address 2" />
                    </div>
                    <div class="ya-control-group">
                        <label for="state">State<span class="ya-required-mark">*</span></label>
                        <select id="state" required="required">
                            <option value="0" selected="selected">Please Select</option>
                            <option value="1">Alabama</option>
                            <option value="2">Alaska</option>
                            <option value="3">Arizona</option>
                            <option value="4">Arkansas</option>
                            <option value="5">California</option>
                            <option value="6">Colorado</option>
                            <option value="7">Connecticut</option>
                        </select>
                    </div>
                    <div class="ya-control-group">
                        <label for="city">City<span class="ya-required-mark">*</span></label>
                        <input type="text" id="city" required="required" placeholder="City" />
                    </div>
                    <div class="ya-control-group">
                        <label for="zip-code">Zip Code</label>
                        <input type="text" id="zip-code" placeholder="Zip Code" />
                    </div>
                </article>

                <article class="ya-address-info">
                    <h3 class="ya-page-title">Contact Details
					
                        <span data-icon="&#x54;" aria-hidden="true" class="ya-help-icon"></span>
                    </h3>
                    <div class="ya-checkbox-group">
                        <input type="checkbox" id="same-school" />
                        <label for="same-school">Same as School</label>
                    </div>

                    <div class="ya-control-group">
                        <label for="contact-details">Contact Details Visible to</label>
                        <select id="contact-details">
                            <option value="0" selected="selected">Please Select</option>
                            <option value="1">temp1</option>
                            <option value="2">temp2</option>
                        </select>
                    </div>
                    <div class="ya-control-group">
                        <label for="communication-person">Communication Person</label>
                        <select id="communication-person">
                            <option value="0" selected="selected">Please Select</option>
                            <option value="1">temp1</option>
                            <option value="2">temp2</option>
                        </select>
                    </div>
                    <div class="ya-control-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" placeholder="Email" />
                    </div>
                    <div class="ya-control-group">
                        <label for="phone">Phone</label>
                        <input type="text" id="phone" placeholder="Phone" />
                    </div>

                </article>
                <article class="ya-contact-details"></article>
            </section>
            <!-- END CONTACT AND ADDRESS -->

            <!-- ################ LOCATION PROFILE IAMGE ############### -->
            <div class="ya-add-location-block">
                <section class="ya-location-profile-img">
                    <h3 class="ya-page-title">Location Profile Image</h3>
                    <figure>
                        <img src="images/featured.jpg" />
                        <div class="clearfix"></div>
                        <button type="button" class="btn" id="change-rofilr-image">Change Profile Image</button>
                    </figure>
                    <div class="ya-location-image">
                        <h3 class="ya-page-title">Location Image
						
                            <span data-icon="&#x54;" aria-hidden="true" class="ya-help-icon"></span></h3>
                        <p>
                            Click below to select a JPG, GIT or PNG format photo form your computer and then click 'Upload Image'
					
                        </p>
                        <div class="ya-add-location-btngroup">

                            <button type="button" class="btn ya-input-xmedium">
                                <span data-icon="&#x7d;" aria-hidden="true"></span>
                                Browser for file...
							
                            </button>

                            <p>Select file: <strong>No file chosen</strong></p>


                            <button type="button" class="btn btn-success ya-input-xmedium">Upload Image</button>
                            <div class="clearfix"></div>
                            <button type="button" class="btn ya-input-xmedium">Use Default Image</button>
                            <div class="clearfix"></div>
                            <button type="button" class="btn ya-input-xmedium">Cancel</button>
                        </div>
                    </div>
                </section>
                <div class="ya-empty-region hidden-phone">&nbsp;</div>
            </div>
            <!-- END LOCATION PROFILE IMAGE -->
            <div class="ya-add-location-btngroup">
                <button type="button" class="btn input-medium">Save</button>
                <button type="button" class="btn input-medium">Cancel</button>
            </div>
        </div>
        <!-- END ADD/EDIT LOCATION PANEL -->

        <aside class="ya-right-sidebar visible-desktop">
            <!-- ad space content -->
            &nbsp;
	
        </aside>
        <!-- end right sidebar -->
    </div>
    <!-- end article -->
</div>