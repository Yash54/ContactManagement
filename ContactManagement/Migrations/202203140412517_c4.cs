namespace ContactManagement.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class c4 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.contacts", "Username", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.contacts", "Username");
        }
    }
}
