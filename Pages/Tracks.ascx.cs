using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using Christoc.Modules.SchoolRenewal.Presenters;
using Christoc.Modules.SchoolRenewal.Views;
using YA.Business.WebSessionManager.SessionObject.Events;
using YA.Controls.Track.ListTrack.Views;
using YA.Domain.Enums.ControlStates;
using YA.ViewModels;

namespace Christoc.Modules.SchoolRenewal.Pages
{
    public partial class Tracks : UserControl, ITrackView
    {
        #region Properties

        private TrackPresenter TrackPresenter { get; set; }
        public bool ThrowExceptionIfNoPresenterBound { get; private set; }
         
        #endregion

        #region Event Methods

        public void DatePickerChanage()
        {
            TrackPresenter.DatePickerChange();
        }

        public bool DisableTrack
        {
            set { PnlTrack.Visible = value; }
        }

        public string InvoiceTotal
        {
            set { (Parent as ISchoolRenewalView).InvoiceTotal = value; }
        }

        public SchoolRenewalEvent GetRenewalEvent()
        {
            return (Parent as ISchoolRenewalView).GetRenewalEvent();
        }

        public DateTime GetCurrentRenewalDate()
        {
            return (Parent as ISchoolRenewalView).GetCurrentDate();
        }

        public DateTime GetNextRenewalDate()
        {
            return (Parent as ISchoolRenewalView).FillDatePicker.Value;
        }

        protected override void OnInit(EventArgs e)
        {
            TrackPresenter = new TrackPresenter(this);
            ListTrack.RepeaterTracksDelegateEvent += RepeaterTracks_OnItemCommand;
            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListTrack.CurrentState = ControlStates.SchoolRenewal;
               TrackPresenter.OnViewInitialized();
            }
            
        }

        protected void RepeaterTracks_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "DonotRenew")
            {
                bool isEnable = true;
                object id = e.CommandArgument;
                int trackId = Convert.ToInt32(id);
                TrackPresenter.DonotRenewTrack(trackId, ref isEnable);
                //if(isEnable==false)
                //{
                //    (Parent as ISchoolRenewalView).ThrowError("Can't make Don't Renew for this Track Because other Tracks depend on it");
                //}
            }
        }

        #endregion

        #region Interface Properties

        public List<DesignationTrackVm> FillTrack
        {
            set { ((IListTrackView) ListTrack).FillTrack = value; }
        }

        public string Membership
        {
            set { LblMembership.Text = value; }
        }

        public string TotalTracks
        {
            set { LblSubTotal.Text = value; }
        }

        #endregion
    }
}