namespace AllbertBackend.Infrastructure.Scheduler
{
    public static class DatabaseSetupCommands
    {
        public static string ClearSchema()
        {
            return "DO $$ DECLARE r RECORD; BEGIN FOR r IN(SELECT tablename FROM pg_tables WHERE schemaname = current_schema()) LOOP EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(r.tablename) || ' CASCADE'; END LOOP; END $$; ";
        }

        public static string InsertSubscriptionCommand()
        {
            var command = @$"INSERT INTO ""Subscriptions"" ( ""Id"", ""Name"", ""MaxEmployees"", ""MaxDates"", ""MaxServices"", ""Cost"", ""CostCurrency"") VALUES ( 0, 'Team 1', 5, 20, 10, 4000, 'HUF' );";
            return command;
        }
    }
}