using System;
using System.Web.UI;
using Christoc.Modules.SchoolRenewal.Presenters;
using Christoc.Modules.SchoolRenewal.Views;

namespace Christoc.Modules.SchoolRenewal.Pages
{
    public partial class AddLocation : UserControl, IAddLocationView
    {
        #region Properties

        private AddLocationPresenter AddLocationPresenter { get; set; }
        public bool ThrowExceptionIfNoPresenterBound { get; private set; }

        #endregion

        #region Event Methods

        protected override void OnInit(EventArgs e)
        {
            AddLocationPresenter = new AddLocationPresenter(this);
            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        #endregion

        #region Interface Properties

        #endregion
    }
}