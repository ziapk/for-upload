using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using Christoc.Modules.SchoolRenewal.Presenters;
using Christoc.Modules.SchoolRenewal.Views;
using YA.Business.WebSessionManager.SessionObject.Events;
using YA.Controls.Location.ListLocations.Views;
using YA.Domain;
using YA.Domain.Enums.ControlStates;
using YA.ViewModels;

namespace Christoc.Modules.SchoolRenewal.Pages
{
    public partial class Locations : UserControl, ILocationView
    {
        #region Properties

        private LocationPresenter LocationPresenter { get; set; }
        public bool ThrowExceptionIfNoPresenterBound { get; private set; }

        #endregion

        #region Event Methods

        protected override void OnInit(EventArgs e)
        {
            UcLocations.DonotRenewEvent += RepeaterLocations_OnItemCommand;
            UcAddLocation.LocationSavedEvent += LocationSavedEvent;
            LocationPresenter = new LocationPresenter(this);
            base.OnInit(e);
        }

        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UcLocations.CurrentState = ControlStates.SchoolRenewal;
                LocationPresenter.OnViewInitialized();
            }
        }



        protected void RepeaterLocations_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "DonotRenew")
            {
                object id = e.CommandArgument;
                int locationId = Convert.ToInt32(id);
                var linkButton = (LinkButton) e.Item.FindControl("LBNotRenew");
                if (linkButton.Text == "Do not Renew")
                {
                    LocationPresenter.DonotRenewLocation(locationId);
                }
            }
        }

        protected void OnServerClick(object sender, EventArgs e)
        {
            if (!UcAddLocation.Visible)
            {
                UcAddLocation.Visible = true;
                UcAddLocation.Load();
            }
        }

        private void LocationSavedEvent(object location, EventArgs e)
        {
            if (location is Location)
            {
                var newLocation = (Location) location;
                LocationPresenter.NewLocationAdded(newLocation);
            }
        }

        #endregion

        #region Interface Properties

        public bool DisableLocation
        {
            set { PnlLocation.Visible = value; }
        }

        //public List<LocationVm> RepeaterLocation
        //{
        //    set
        //    {
        //        UcLocations.LocationVms = value;
        //        //RepeaterLocations.DataSource = value;
        //        //RepeaterLocations.DataBind();
        //    }
        //}

        public string InvoiceTotal
        {
            set { (Parent as ISchoolRenewalView).InvoiceTotal = value; }
        }

        public string LocationTotal
        {
            set
            {
               
               LBTotalLocations.Text = value;

            }
        }

        #endregion

        #region Interface Methods

        public DateTime GetCurrentRenewalDate()
        {
            return (Parent as ISchoolRenewalView).GetCurrentDate();
        }

        public DateTime GetNextRenewalDate()
        {
            return (Parent as ISchoolRenewalView).FillDatePicker.Value;
        }

        public bool IsAddLocationVisible
        {
            get { return UcAddLocation.Visible; }
            set { UcAddLocation.Visible = value; }
        }

        public SchoolRenewalEvent GetRenewalEvent()
        {
            return (Parent as ISchoolRenewalView).GetRenewalEvent();
        }

        public void DatePickerChanage()
        {
            LocationPresenter.DatePickerChange();
        }

        public void FillListLocation(List<LocationVm> locationVms)
        {
            ((IListLocationsView)UcLocations).LoadLocations(locationVms);
        }

        #endregion


       
    }
}