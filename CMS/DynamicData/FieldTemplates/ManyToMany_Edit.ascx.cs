using System;
using System.Data.Entity.Core.Objects;
using System.ComponentModel;
using System.Collections;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;
using System.Collections.Generic;
using Telerik.Web.UI;
namespace DynamicWebApp
{
    public partial class ManyToMany_EditField : System.Web.DynamicData.FieldTemplateUserControl
    {
        protected ObjectContext ObjectContext { get; set; }
        public int RePeatColumn
        {
            set;
            get;
        }
        public void Page_Load(object sender, EventArgs e)
        {

            // Register for the DataSource's updating event
            Microsoft.AspNet.EntityDataSource.EntityDataSource ds = (Microsoft.AspNet.EntityDataSource.EntityDataSource)this.FindDataSourceControl();

            ds.ContextCreated += (_, ctxCreatedEventArg) => ObjectContext = ctxCreatedEventArg.Context;

            // This field template is used both for Editing and Inserting
            ds.Updating += ds_Updating;
            ds.Inserting += ds_Updating;

  
        }



        void ds_Updating(object sender, Microsoft.AspNet.EntityDataSource.EntityDataSourceChangingEventArgs e)
        {
            MetaTable childTable = ChildrenColumn.ChildTable;

            // Comments assume employee/territory for illustration, but the code is generic

            if (Mode == DataBoundControlMode.Edit)
                ObjectContext.LoadProperty(e.Entity, Column.Name);

            // Get the collection of territories for this employee
            dynamic entityList = Column.EntityTypeProperty.GetValue(e.Entity, null);

            // Go through all the territories (not just those for this employee)
            foreach (dynamic childEntity in childTable.GetQuery(e.Context))
            {

                // Check if the employee currently has this territory
                bool isCurrentlyInList = ListContainsEntity(childTable, entityList, childEntity);

                // Find the checkbox for this territory, which gives us the new state
                string pkString = childTable.GetPrimaryKeyString(childEntity);

           //     RadComboBoxItem list = cmbForignKeys.Items.FindItemByValue(pkString);
                ListItem list = DropDownCheckBoxes1.Items.FindByValue(pkString);
                if (list == null  )
                    continue;
                // If the states differs, make the appropriate add/remove change
                if (list.Selected)
                {
                    if (!isCurrentlyInList)
                        entityList.Add(childEntity);
                }
                else
                {
                    if (isCurrentlyInList)
                        entityList.Remove(childEntity);
                }
            }
        }



        private static bool ListContainsEntity(MetaTable table, IEnumerable<object> list, object entity)
        {
            return list.Any(e => AreEntitiesEqual(table, e, entity));
        }

        private static bool AreEntitiesEqual(MetaTable table, object entity1, object entity2)
        {
            var pks1 = table.GetPrimaryKeyValues(entity1);
            var pks2 = table.GetPrimaryKeyValues(entity2);

            return Enumerable.SequenceEqual(pks1, pks2);
        }

        public override Control DataControl
        {
            get
            {
                return DropDownCheckBoxes1;
            }
        }
        //protected override void OnDataBinding(EventArgs e)
        //{
        //    base.OnDataBinding(e);
        //    object entity;
        //    ICustomTypeDescriptor rowDescriptor = Row as ICustomTypeDescriptor;
        //    if (rowDescriptor != null)
        //    {
        //        // Get the real entity from the wrapper
        //        entity = rowDescriptor.GetPropertyOwner(null);
        //    }
        //    else
        //    {
        //        entity = Row;
        //    }

        //    // Get the collection
        //    var entityCollection = Column.EntityTypeProperty.GetValue(entity, null);

        //    cmbForignKeys.DataSource = entityCollection;
        //    if (ChildrenColumn != null)
        //    {
        //        cmbForignKeys.DataTextField = ChildrenColumn.ChildTable.DisplayColumn.Name;
        //    }
        //    cmbForignKeys.DataBind();
        //}
        protected void cmbForignKeys_DataBound(object sender, EventArgs e)
        {
            MetaTable childTable = ChildrenColumn.ChildTable;

            // Comments assume employee/territory for illustration, but the code is generic

            IEnumerable<object> entityList = null;

            if (Mode == DataBoundControlMode.Edit)
            {
                object entity;
                ICustomTypeDescriptor rowDescriptor = Row as ICustomTypeDescriptor;
                if (rowDescriptor != null)
                {
                    // Get the real entity from the wrapper
                    entity = rowDescriptor.GetPropertyOwner(null);
                }
                else
                {
                    entity = Row;
                }

                // Get the collection of territories for this employee
                entityList = (IEnumerable<object>)Column.EntityTypeProperty.GetValue(entity, null);
            }
            
            // Go through all the territories (not just those for this employee)
            foreach (object childEntity in childTable.GetQuery(ObjectContext))
            {
                // Create a checkbox for it
                RadComboBoxItem list = new RadComboBoxItem(childTable.GetDisplayString(childEntity),
                    childTable.GetPrimaryKeyString(childEntity));
                ListItem _ListItem=new System.Web.UI.WebControls.ListItem(childTable.GetDisplayString(childEntity),
                    childTable.GetPrimaryKeyString(childEntity));
         
       
                
                
                // Make it selected if the current employee has that territory
                if (Mode == DataBoundControlMode.Edit)
                {
                    
                    _ListItem.Selected = list.Checked = ListContainsEntity(childTable, entityList, childEntity);
                }
               
               //cmbForignKeys.Items.Add(list);
                DropDownCheckBoxes1.Items.Add(_ListItem);
            }
           
                  //cmbForignKeys.CheckBoxes = true;
        }

    }
}