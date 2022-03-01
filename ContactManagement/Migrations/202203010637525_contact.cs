namespace ContactManagement.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class contact : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.contacts",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        Firstname = c.String(),
                        Lastname = c.String(),
                        Email = c.String(),
                        Label = c.String(),
                        ContactType = c.String(),
                        Mobileno = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.contacts");
        }
    }
}
