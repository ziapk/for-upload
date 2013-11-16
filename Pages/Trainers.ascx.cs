using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using Christoc.Modules.SchoolRenewal.Presenters;
using Christoc.Modules.SchoolRenewal.Views;
using YA.Business.WebSessionManager.SessionObject.Events;
using YA.ViewModels;

namespace Christoc.Modules.SchoolRenewal.Pages
{
    public partial class Trainers : UserControl, ITrainerView
    {
        #region Properties

        private TrainerPresenter TrainerPresenter { get; set; }
        public bool ThrowExceptionIfNoPresenterBound { get; private set; }

        #endregion

        #region Event Methods

        protected override void OnInit(EventArgs e)
        {
            TrainerPresenter = new TrainerPresenter(this);
            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TrainerPresenter.OnViewInitialized();
            }
        }

        public void DatePickerChanage()
        {
            TrainerPresenter.DatePickerChange();
        }


        protected void ChBoxInclude_CheckedChanged(object sender, EventArgs e)
        {
            if (sender != null)
            {
                if (sender is CheckBox)
                {
                    var checkboxInclude = (CheckBox) sender;
                    string value = (checkboxInclude.Parent.FindControl("HfTrainerId") as HiddenField).Value;
                    TrainerPresenter.EnableTrainer(int.Parse(value));
                }
            }
        }

        #endregion

        #region Interface Properties

        public bool DisableTrainer
        {
            set { PnlTrainer.Visible = value; }
        }

        public DateTime GetCurrentRenewalDate()
        {
            return (Parent as ISchoolRenewalView).GetCurrentDate();
        }

        public DateTime GetNextRenewalDate()
        {
            return (Parent as ISchoolRenewalView).FillDatePicker.Value;
        }

        public List<TrainerVm> FillRepeaterTrainer
        {
            set
            {
                RepeaterTrainers.DataSource = value;
                RepeaterTrainers.DataBind();
            }
        }


        public string TotalTrainer
        {
            set { LBLTotal.Text = value; }
        }

        public string InvoiceTotal
        {
            set { (Parent as ISchoolRenewalView).InvoiceTotal = value; }
        }

        #endregion

        #region Interface Method

        public SchoolRenewalEvent GetRenewalEvent()
        {
            return (Parent as ISchoolRenewalView).GetRenewalEvent();
        }

        public void DisablePayButton(bool value)
        {
            (Parent as ISchoolRenewalView).DisablePayButton = value;
        }

        #endregion
    }
}