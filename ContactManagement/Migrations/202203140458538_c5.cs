namespace ContactManagement.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class c5 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.contacts", "Mobileno", c => c.String());
            AlterColumn("dbo.users", "Mobileno", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.users", "Mobileno", c => c.Int(nullable: false));
            AlterColumn("dbo.contacts", "Mobileno", c => c.Int(nullable: false));
        }
    }
}
